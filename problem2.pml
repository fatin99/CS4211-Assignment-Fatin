chan cmConnectRequest = [4] of {int};

mtype:connectReply = {accept, refuse};
chan cmConnectReply[4] = [1] of {mtype:connectReply};

mtype:command = {getInfo, useNewInfo, useOldInfo, disconnect};
chan cmCommand[4] = [1] of {mtype:command};

mtype:report = {success, failure};
chan clientReport = [4] of {mtype:report, int};

mtype:update = {manualUpdate};
chan wcpRequestCm = [1] of {mtype:update};
chan wcpRequestClient[1] = [4] of {mtype:update};

mtype:able = {enable, disable};
chan cmAbleWcp = [1] of {mtype:able};

mtype:status = {idle, 
                preInit, initializing, postInit, //initialization status
                preUpdate, updating, postUpdate, postRevert}; //update status
chan cmStatus[4] = [1] of {mtype:status};

proctype Client(int id) {
    mtype:status currStatus = idle;
    mtype:connectReply reply;
    mtype:command currCommand;
    bool connected = false;
    bool getInfoSuccess = true; //switch this variable to test code
    bool useNewInfoSuccess = true; //switch this variable to test code
    bool useOldInfoSuccess = true; //switch this variable to test code
    do
    //client initialization
    ::  !connected -> 
        cmConnectRequest!id;
        printf("Client %d: requesting connection\n", id+1);
        cmConnectReply[id]?reply ->
        if
        ::  reply == accept -> currStatus = preInit; connected = true;
            printf("Client %d: connection request accepted\n", id+1);
        :: else -> skip;
            printf("Client %d: connection request rejected\n", id+1);
        fi
    ::  currStatus == preInit ->
        printf("Client %d: pre-initializing\n", id+1);
        cmCommand[id]?currCommand;
        if 
        :: currCommand == getInfo -> currStatus = initializing;
            printf("Client %d: getting new info\n", id+1);
        :: else -> skip
        fi
    ::  currStatus == initializing ->
        printf("Client %d: initializing\n", id+1);
        if 
        ::  getInfoSuccess -> clientReport!success, id;
            cmCommand[id]?currCommand;
            if 
            :: currCommand == useNewInfo -> currStatus = postInit;
                printf("Client %d: using new info\n", id+1);
            :: else -> skip
            fi
        :: else -> clientReport!failure, id;
            currStatus = idle; connected = false;
            printf("Client %d: initialization failed. disconnected\n", id+1);
        fi
    ::  currStatus == postInit ->
        printf("Client %d: post-initializing\n", id+1);
        if 
        ::  useNewInfoSuccess -> clientReport!success, id;
            currStatus = idle;
        ::  else -> clientReport!failure, id;
            connected = false; currStatus = idle;
            printf("Client %d: post-initialization failed. disconnected\n", id+1);
        fi
    //weather update
    ::  (nempty(wcpRequestClient[id]) && currStatus == idle && connected) ->
        printf("Client %d: manual update request received\n", id+1);
        currStatus = preUpdate;
    ::  (currStatus == preUpdate && connected) ->
        printf("Client %d: pre-updating\n", id+1);
        cmCommand[id]?currCommand;
        if 
        ::  currCommand == getInfo -> currStatus = updating;
            printf("Client %d: getting new info\n", id+1);
        :: else -> skip
        fi
    ::  (currStatus == updating && connected) ->
        printf("Client %d: updating\n", id+1);
        if 
        ::  getInfoSuccess -> clientReport!success, id;
            cmCommand[id]?currCommand;
            if 
            ::  currCommand == useNewInfo -> currStatus = postUpdate;
                printf("Client %d: using new info\n", id+1);
            :: else -> skip
            fi
        :: else -> clientReport!failure, id; 
            cmCommand[id]?currCommand;
            if 
            ::  currCommand == useOldInfo -> currStatus = postRevert;
                printf("Client %d: using old info\n", id+1);
            :: else -> skip
            fi
        fi
    ::  (currStatus == postUpdate && connected) ->
        printf("Client %d: post-updating\n", id+1);
        if 
        ::  useNewInfoSuccess -> clientReport!success, id;
            currStatus = idle;
        ::  else -> clientReport!failure, id;
            connected = false; currStatus = idle;
        fi
        cmCommand[id]?currCommand;
        if 
        ::  currCommand == disconnect -> connected = false;
            printf("Client %d: update failed. disconnected\n", id+1);
        ::  else -> skip
        fi
    ::  (currStatus == postRevert && connected) ->
        printf("Client %d: post-reverting\n", id+1);
        if 
        ::  useOldInfoSuccess -> clientReport!success, id;
            currStatus = idle;
        ::  else -> clientReport!failure, id;
            connected = false; currStatus = idle;
        fi
        cmCommand[id]?currCommand;
        if 
        ::  currCommand == disconnect -> connected = false;
            printf("Client %d: revert failed. disconnected\n", id+1);
        ::  else -> skip
        fi
    od
}

proctype CommsManager() {
    bool connectedClients[4];
    int id;
    int i;
    bool hasFail;
    for (i:0 .. 4-1) {
        connectedClients[i] = false;
    }
    mtype:status currStatus = idle;
    mtype:report reportStatus;
    mtype:update button;
    do
    //client initialization
    ::  (nempty(cmConnectRequest)  && currStatus == idle) ->
        cmConnectRequest?id;
        printf("CommsManager: connection request received from client %d\n", id+1);
        mtype:connectReply reply;
        if
        ::  currStatus == idle -> reply = accept; 
            currStatus = preInit; connectedClients[id] = true;
            cmAbleWcp!disable;
        :: else -> reply = refuse;
        fi
        cmConnectReply[id]!reply;
    ::  currStatus == preInit ->
        printf("CommsManager: pre-initializing\n");
        cmCommand[id]!getInfo;
        currStatus = initializing;
    ::  currStatus == initializing ->
        printf("CommsManager: initializing\n");
        clientReport?reportStatus, id;
        if 
        ::  reportStatus == success -> cmCommand[id]!useNewInfo; 
            currStatus = postInit;
        ::  reportStatus == failure -> connectedClients[id] = false; 
            currStatus = idle;
        fi
    ::  currStatus == postInit ->
        printf("CommsManager: post-initializing\n");
        clientReport?reportStatus, id;
        if 
        ::  reportStatus == success -> currStatus = idle;
            cmAbleWcp!enable;
        ::  reportStatus == failure -> connectedClients[id] = false;
            currStatus = idle;  
            cmAbleWcp!enable;
        fi
    //weather update
    ::  (nempty(wcpRequestCm) && currStatus == idle) ->
        wcpRequestCm?button;
        printf("CommsManager: manual update request received\n", id+1);
        for (i:0 .. 4-1){
            if 
            :: connectedClients[i] -> wcpRequestClient[i]!button;
            :: else-> skip;
            fi
		}
        currStatus = preUpdate;
        cmAbleWcp!disable;
    ::  currStatus == preUpdate ->
        printf("CommsManager: pre-updating\n");
        for (i:0 .. 4-1){
            if 
            :: connectedClients[i] -> cmCommand[i]!getInfo;
            :: else-> skip;
            fi
		}
        currStatus = updating;
    ::  currStatus == updating ->
        printf("CommsManager: updating\n");
        hasFail = false;
        for (i:0 .. 4-1) {
            if 
            :: connectedClients[i] -> clientReport?reportStatus, id;
                if 
                ::  reportStatus == failure -> hasFail = true;
                    printf("CommsManager: update failed by Client %d\n", i+1);
                ::  else -> skip;
                fi
            :: else-> skip;
            fi
		}
        if 
        ::  hasFail -> 
            for (i:0 .. 4-1){
                if 
                :: connectedClients[i] -> cmCommand[i]!useOldInfo;
                :: else-> skip;
                fi
            }
            currStatus = postRevert;
        ::  else -> 
            for (i:0 .. 4-1){
                if 
                :: connectedClients[i] -> cmCommand[i]!useNewInfo;
                :: else-> skip;
                fi
            }
            currStatus = postUpdate;
        fi
    ::  currStatus == postUpdate ->
        printf("CommsManager: post-updating\n");
        hasFail = false;
        for (i:0 .. 4-1){
            if 
            :: connectedClients[i] -> clientReport?reportStatus, id;
                if 
                ::  reportStatus == failure -> hasFail = true;
                    printf("CommsManager: post-update failed by Client %d\n", i+1);
                ::  else -> skip;
                fi
            :: else-> skip;
            fi
		}
        if 
        ::  hasFail -> currStatus = idle;
            cmAbleWcp!enable;
        ::  else -> currStatus = idle; 
            for (i:0 .. 4-1){
                if 
                :: connectedClients[i] -> cmCommand[i]!disconnect;
                :: else -> skip;
                fi
            }
            cmAbleWcp!enable;
        fi
    ::  currStatus == postRevert ->
        printf("CommsManager: post-reverting\n");
        hasFail = false;
        for (i:0 .. 4-1){
            if 
            :: connectedClients[i] -> clientReport?reportStatus, id;
                if 
                ::  reportStatus == failure -> hasFail = true;
                    printf("CommsManager: post-revert failed by Client %d\n", i+1);
                ::  else -> skip;
                fi
            :: else -> skip;
            fi
		}
        if 
        ::  hasFail -> currStatus = idle; 
            cmAbleWcp!enable;
        ::  else -> currStatus = idle; 
            for (i:0 .. 4-1){
                if 
                :: connectedClients[i] -> cmCommand[i]!disconnect;
                ::  else -> skip;
                fi
            }
            cmAbleWcp!enable;
        fi
    od
}

proctype ControlPanel() {
    bool disabled = false;
    mtype:able ability;
    mtype:update button;
    bool isUpdating = false;
    do
    ::  cmAbleWcp?ability ->
        if
        ::  ability == enable -> disabled = false; isUpdating = false;
            printf("ControlPanel: enabled\n");
        ::  else -> disabled = true;
            printf("ControlPanel: disabled\n");
        fi
    ::  (!disabled && !isUpdating) ->
        printf("ControlPanel: beginning manual update\n");
        isUpdating = true;
        button = manualUpdate;
        wcpRequestCm!button;
    od
}

init{
	atomic{
		run Client(0); 
		run Client(1); 
		run Client(2);
		run Client(3); 
		run CommsManager();
        run ControlPanel();
	}
}

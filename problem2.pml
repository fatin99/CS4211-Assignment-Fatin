chan cmConnectRequest = [4] of {int};

mtype:connectReply = {accept, refuse};
chan cmConnectReply[4] = [1] of {mtype:connectReply};

mtype:command = {getInfo, useNewInfo, useOldInfo};
chan cmCommand[4] = [1] of {mtype:command};

mtype:report = {success, failure};
chan clientReport = [4] of {mtype:report, int};

mtype:update = {manualUpdate};
chan wcpRequest = [1] of {mtype:update};

mtype:able = {enable, disable};
chan cmAbleWcp = [1] of {mtype:able};

mtype:status = {idle, 
                preInit, initializing, postInit, //initialization status
                preUpdate, updating, postUpdate, postRevert}; //update status
chan cmStatus[4] = [1] of {mtype:status};

proctype Client(int id) {
    mtype:status currStatus = idle;
    mtype:connectReply reply;
    bool connected = false;
    bool getInfoSuccess = true; //switch this variable to test code
    bool useNewInfoSuccess = true; //switch this variable to test code
    bool useOldInfoSuccess = true; //switch this variable to test code
    do
    ::  !connected -> 
        cmConnectRequest!id;
        cmConnectReply[id]?reply ->
        if
        :: reply == accept -> currStatus = preInit; connected = true;
        :: else -> skip;
        fi
    ::  currStatus == preInit ->
        cmCommand[id]?getInfo;
        currStatus = initializing;
    ::  currStatus == initializing ->
        if 
        ::  getInfoSuccess -> clientReport!success, id;
            cmCommand[id]?useNewInfo; currStatus = postInit;
        :: else -> clientReport!failure, id;
            currStatus = idle; connected = false;
        fi
    ::  currStatus == postInit ->
        if 
        ::  useNewInfoSuccess -> clientReport!success, id;
            currStatus = idle;
        ::  else -> clientReport!failure, id;
            connected = false; currStatus = idle;
        fi
    ::  (nempty(wcpRequest) && currStatus == idle && connected) ->
        currStatus = preUpdate;
    ::  (currStatus == preUpdate && connected) ->
        cmCommand[id]?getInfo;
        currStatus = updating;
    ::  (currStatus == updating && connected) ->
        if 
        ::  getInfoSuccess -> clientReport!success, id;
            cmCommand[id]?useNewInfo; currStatus = postUpdate;
        :: else -> clientReport!failure, id; 
            cmCommand[id]?useOldInfo; currStatus = postRevert;
        fi
    ::  (currStatus == postUpdate && connected) ->
        if 
        ::  useNewInfoSuccess -> clientReport!success, id;
            currStatus = idle;
        ::  else -> clientReport!failure, id;
            connected = false; currStatus = idle;
        fi
    ::  (currStatus == postRevert && connected) ->
        if 
        ::  useOldInfoSuccess -> clientReport!success, id;
            currStatus = idle;
        ::  else -> clientReport!failure, id;
            connected = false; currStatus = idle;
        fi
    od
}

proctype CommsManager() {
    chan connectedClients = [4] of {int}; //id of clients currently connected
    mtype:status currStatus = idle;
    mtype:report reportStatus;
    mtype:update button;
    int id;
    int i;
    bool hasFail;
    do
    ::  nempty(cmConnectRequest) ->
        cmConnectRequest?id;
        mtype:connectReply reply;
        if
        :: currStatus == idle -> reply = accept;
            currStatus = preInit; connectedClients!id; 
            cmAbleWcp!disable;
        :: else -> reply = refuse;
        fi
        cmConnectReply[id]!reply;
    ::  currStatus == preInit ->
        cmCommand[id]!getInfo;
        currStatus = initializing;
    ::  currStatus == initializing ->
        clientReport?reportStatus, id;
        if 
        ::  reportStatus == success -> cmCommand[id]!useNewInfo; 
            currStatus = postInit;
        ::  reportStatus == failure -> connectedClients?id;
            currStatus = idle;
        fi
    ::  currStatus == postInit ->
        clientReport?reportStatus, id;
        if 
        ::  reportStatus == success -> currStatus = idle;
            cmAbleWcp!enable;
        ::  reportStatus == failure -> connectedClients?id;
            currStatus = idle;  
            cmAbleWcp!enable;
        fi
    ::  (nempty(wcpRequest) && currStatus == idle) ->
        wcpRequest?button;
        currStatus = preUpdate;
        cmAbleWcp!disable;
    ::  currStatus == preUpdate ->
        for (i:0 .. 4-1){
			cmCommand[i]!getInfo;
		}
        currStatus = updating;
    ::  currStatus == updating ->
        hasFail = false;
        for (i:0 .. 4-1) {
			clientReport?reportStatus, id;
            if 
            :: reportStatus == failure -> hasFail = true;
            :: else -> skip;
            fi
		}
        if 
        ::  hasFail -> 
            for (i:0 .. 4-1){
                cmCommand[i]!useNewInfo;
            }
            currStatus = postRevert;
        ::  else -> 
            for (i:0 .. 4-1){
                cmCommand[i]!useNewInfo;
            }
            currStatus = postUpdate;
        fi
    ::  currStatus == postUpdate ->
        hasFail = false;
        for (i:0 .. 4-1){
			clientReport?reportStatus, id;
            if 
            :: reportStatus == failure -> hasFail = true;
            :: else -> skip;
            fi
		}
        if 
        ::  hasFail -> currStatus = idle;
            cmAbleWcp!enable;
        ::  else -> currStatus = idle; //disconnect all clients
            cmAbleWcp!enable;
        fi
    ::  currStatus == postRevert ->
        hasFail = false;
        for (i:0 .. 4-1){
			clientReport?reportStatus, id;
            if 
            :: reportStatus == failure -> hasFail = true;
            :: else -> skip;
            fi
		}
        if 
        ::  hasFail -> currStatus = idle; 
            cmAbleWcp!enable;
        ::  else -> currStatus = idle; //disconnect all clients
            cmAbleWcp!enable;
        fi
    od
}

proctype ControlPanel() {
    bool disabled = false;
    mtype:able ability;
    mtype:update button;
    do
    ::  cmAbleWcp?ability ->
        if
        :: ability == enable -> disabled = false;
        :: else -> disabled = true;
        fi
    ::  !disabled ->
        button = manualUpdate;
        wcpRequest!button;
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

chan cmConnectRequest = [4] of {int};

mtype:connectReply = {accept, refuse};
chan cmConnectReply[4] = [1] of {mtype:connectReply};

mtype:command = {getInfo, useNewInfo};
chan cmCommand[4] = [1] of {mtype:command};

mtype:report = {success, failure};
chan clientReport = [4] of {mtype:report, int};

mtype:update = {manualUpdate};
chan wcpRequest = [1] of {mtype:update};

mtype:able = {enable, disable};
chan cmAbleWcp = [1] of {mtype:able};

mtype:initialization = {idle, preInit, initializing, postInit};

proctype Client(int id) {
    mtype:initialization initStatus = idle;
    mtype:connectReply reply;
    bool connected = false;
    bool getInfoSuccess = true; //switch this variable to test code
    bool useInfoSuccess = true; //switch this variable to test code
    do
    ::  cmConnectRequest!id;
        cmConnectReply[id]?reply ->
        if
        :: reply == accept -> initStatus = preInit; connected = true;
        :: else -> skip;
        fi
    ::  initStatus = preInit ->
        cmCommand[id]?getInfo;
        initStatus = initializing;
    ::  initStatus = initializing ->
        if 
        ::  getInfoSuccess -> clientReport!success, id;
            cmCommand[id]?useNewInfo; initStatus = postInit;
        :: else -> connected = false;
            initStatus = idle;
        fi
    ::  initStatus = postInit ->
        if 
        ::  useInfoSuccess -> clientReport!success, id;
            initStatus = idle;
        ::  else -> connected = false;
            initStatus = idle;
        fi
    od
}

proctype CommsManager() {
    int id;
    mtype:initialization initStatus = idle;
    chan connectedClients = [4] of {int}; //id of clients currently connected
    mtype reportStatus;
    do
    ::  cmConnectRequest?id ->
        mtype:connectReply reply;
        if
        :: idle -> reply = accept;
            initStatus = preInit; connectedClients!id; 
            mtype:able able = disable; cmAbleWcp!able;
        :: else -> reply = refuse;
        fi
        cmConnectReply[id]!reply;
    ::  initStatus = preInit ->
        cmCommand[id]!getInfo;
        initStatus = initializing;
    ::  initStatus = initializing ->
        clientReport?reportStatus, id;
        if 
        ::  reportStatus == success -> cmCommand[id]!useNewInfo; 
            initStatus = postInit;
        ::  reportStatus == failure -> connectedClients?id;
            initStatus = idle;
        fi
    ::  initStatus = postInit ->
        clientReport?reportStatus, id;
        mtype:able ability;
        if 
        ::  reportStatus == success -> initStatus = idle;
            ability = enable; cmAbleWcp!able;
        ::  reportStatus == failure -> connectedClients?id;
            initStatus = idle;  
            ability = enable; cmAbleWcp!able;
        fi
    od
}

proctype ControlPanel() {
    bool disabled;
    mtype:able ability;
    do
    :: cmAbleWcp?able ->
        if
        :: able == enable -> disabled = false;
        :: else -> disabled = true;
        fi
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

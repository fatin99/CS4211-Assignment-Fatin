typedef ConnectRequest {
	int id
};
chan clientRequest = [4] of {ConnectRequest};

typedef ConnectReply {
    bool accept; //if false, refused
};
chan cmReplyClient[4] = [1] of {Reply};

typedef UpdateRequest {
	bool update;
};
chan wcpRequest = [1] of {UpdateRequest};

typedef Able {
    bool enable; //if false, disable
};
chan cmAbleWcp = [1] of {Able};

proctype Client(int id) {
    ConnectRequest connectRequest; connectRequest.id = id;
    Reply reply;
    bool idle = true;
    bool preInit = false;
    do
    :: clientRequest!connectRequest;
        cmReplyClient[id]?reply ->
        if
        :: reply.accept-> idle = false; preInit = true;
        fi
    od
}

proctype CommsManager() {
    ConnectRequest connectRequest;
    Reply reply;
    bool idle = true;
    bool preInit = false;
    do
    ::  clientRequest?connectRequest;
        if
        :: idle -> reply.accept = true;
            idle = false; preInit = true;
            Able able; able.enable = false; cmAbleWcp!able;
        :: else -> reply.accept = false;
        fi
        cmReplyClient[i]!reply;
    ::  preinit ->
    od
}

proctype ControlPanel() {
    bool enable;
    Able able;
    do
    :: cmAbleWcp?able ->
        if
        :: able.enable -> enable = true;
        :: else -> enable = false;
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

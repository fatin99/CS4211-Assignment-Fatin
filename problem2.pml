typedef Request {
	int id
};
chan clientRequest= [4] of {Request};

typedef Reply {
};
chan cmReplyClient[4] = [1] of {Reply};

proctype Client(int id) {}
proctype CommsManager() {}
proctype ControlPanel() {}

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

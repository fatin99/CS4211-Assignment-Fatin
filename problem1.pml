typedef Order {
	int start;
	int end;
	int size;
};
chan managementOrders[4] = [1] of {Order};

typedef Offer {
    int id
    int charge;
    bool refuse;
};
chan shuttleOffers = [4] of {Offer};

typedef Track { 
	// 3->0, 0->1, 1->2, 2->3
    bool trackL2R[4]; 
	// 1->0, 2->1, 3->2, 0->3
    bool trackR2L[4];
};
Track tracks; 

typedef Request {
	int track;
	int direction;
	int id; 
};
chan shuttleRequests = [4] of {Request};

typedef Reply {
	bool granted;
};
chan railwayReplies[4] = [1] of {Reply}; 

proctype ShuttleManagementSystem(Order first; Order second) {
	Order orders[2];
	orders[0].start = first.start; orders[0].end = first.end; orders[0].size = first.size;
	orders[1].start = second.start; orders[1].end = second.end; orders[1].size = second.size;
	int i;
	for (i:0 .. 2-1){
		int j;
		for (j:0 .. 4-1){
			printf("Shuttle Management System: sending order %d to shuttle %d\n", i+1, j+1);
			managementOrders[j]!orders[i];
		}
        int minCharge = 2147483647; //Assumption: max charge by a shuttle
	    int assignedId;
        //The shuttle having made the lowest offer will receive the assignment. In the event of two equal offers, 
        // the assignment will go to the shuttle that first made the offer.
		for (j:0 .. 4-1){ 
			Offer offer
			printf("Shuttle Management System: waiting for offer for order %d from shuttle %d\n", i+1, j+1);
			shuttleOffers?offer;
			if
			:: offer.charge < minCharge && !offer.refuse -> minCharge = offer.charge; assignedId = offer.id;
			:: else -> minCharge = minCharge; assignedId = assignedId;
			fi
		}
		printf("Shuttle Management System: order %d assigned to shuttle %d\n", i+1, assignedId+1);
		for (j:0 .. 4-1){				
			if
			:: 	j == assignedId -> managementOrders[j]!orders[i];
			:: 	else -> Order dummy; dummy.size = -1; managementOrders[j]!dummy;
			fi
		}
	}
}

proctype Shuttle(int capacity; int charge; int initialStation; int id) {
    Order order; //order that requires an offer to be sent to management
	chan orders = [2] of {Order}; //orders assigned to this shuttle
	Order currentOrder; //order that is currently being transported
    
	int currentStation = initialStation;
	int currentLoad = 0;
    int direction;
    int destination;
	
	bool processingOrder = false;
	bool travelling = false;
    do
    ::  managementOrders[id]?order -> 
		printf("Shuttle %d: processing offer for newly received order\n", id+1);
		int currentPosition;
		if 	// the start destination of the order is within two stations away from its current position
		:: 	travelling -> currentPosition = currentStation + direction; //if it is on a track, its current position is its arriving station
		:: 	else -> currentPosition = currentStation;
		fi
        int distance;
        if 
		:: 	currentPosition >  order.start -> distance = currentPosition - order.start;
		:: 	else -> distance = order.start - currentPosition;
		fi
        if 
		:: 	distance > (4/2) -> distance = 4 - distance;
		:: 	else -> distance = distance;
		fi
		printf("Shuttle %d: start destination of the order is %d station(s) away from its current position\n", id+1, distance);
		printf("Shuttle %d: current load is %d, order size is %d, capacity is %d\n", id+1, currentLoad, order.size, capacity);
		Offer offer;
		if 	//current loaded size plus the order size does not exceed the capacity
		:: 	currentLoad + order.size <= capacity && distance <= 2 -> 
			offer.id = id; offer.charge = charge; offer.refuse = false;
			printf("Shuttle %d: order accepted\n", id+1);
		:: 	else -> 
			offer.id = id; offer.charge = charge; offer.refuse = true;
			printf("Shuttle %d: order refused\n", id+1);
		fi
		shuttleOffers!offer;
		managementOrders[id]?order;
		if
		:: 	order.size >= 0 -> orders!order; printf("Shuttle %d: offer accepted by management\n", id+1);
		:: 	else -> skip;
		fi
    :: nempty(orders) && !processingOrder->
        orders?currentOrder;
        processingOrder = true;
        destination = currentOrder.start;
        travelling = true;
		printf("Shuttle %d: beginning new order from station %d to station %d with size %d\n", id+1, currentOrder.start+1, currentOrder.end+1, currentOrder.size);
        if
        :: 	(currentOrder.start >= currentStation) && ((currentOrder.start - currentStation) < 4/2) -> 
            direction = 1; printf("Shuttle %d: travelling left to right\n", id+1);
        :: 	else -> direction = -1; printf("Shuttle %d: travelling right to left\n", id+1);
        fi
	:: travelling && processingOrder -> 
        int nextStation;
        nextStation = currentStation + direction;
        if 
        :: 	nextStation >= 4 -> nextStation = 0;
        :: 	nextStation < 0 -> nextStation = 4 - 1;
        :: 	else -> skip;
        fi
        Request request; 
		request.id = id; request.direction = direction; request.track = nextStation;
        Reply reply;
		printf("Shuttle %d: requesting access to travel from station %d to station %d\n", id+1, currentStation+1, nextStation+1);
		do
		:: 	shuttleRequests!request ->    
			railwayReplies[id]?reply;
			if
			:: 	reply.granted -> break;
			:: 	else -> skip;
			fi
		od  
		printf("Shuttle %d: travelling from station %d to station %d\n", id+1, currentStation+1, nextStation+1);
        currentStation = nextStation; 		
        if 
        :: 	direction == 1 -> tracks.trackL2R[request.track] = false; 
        :: 	direction == -1 -> tracks.trackR2L[request.track] = false; 
        fi
        if 
        :: 	currentStation == destination -> travelling = false; 
        :: 	else -> travelling = true;
        fi	
	:: !travelling && processingOrder ->
        if 
        :: 	destination == currentOrder.start ->
			printf("Shuttle %d: loading %d people at station %d\n", id+1, currentOrder.size, currentOrder.start+1);
            currentLoad = currentLoad + currentOrder.size;
            destination = currentOrder.end;
            travelling = true;
            if
            :: 	(currentOrder.start >= currentStation) && ((currentOrder.start - currentStation) < 4/2) -> 
                direction = 1; printf("Shuttle %d: travelling left to right\n", id+1);
            :: 	else -> direction = -1; printf("Shuttle %d: travelling right to left\n", id+1);
            fi
        :: 	destination == currentOrder.end -> 
			printf("Shuttle %d: unloading %d people at station %d\n", id+1, currentOrder.size, currentOrder.end+1);
            currentLoad = currentLoad - currentOrder.size;
            processingOrder = false;
        :: 	else -> skip;
        fi
    od
}

proctype RailwayNetwork() {
    // The railway network consists of stations and tracks. 
    // Any number of shuttles can be present at a station at the same time.
    Request request;
	do
	::  shuttleRequests?request ->
        Reply reply;
		if
		:: 	request.direction == 1 ->
			if // A track can only be occupied by one shuttle at a time. 
			:: 	!tracks.trackL2R[request.track] -> tracks.trackL2R[request.track] = true; reply.granted = true; 
				printf("Railway Network: granting access to track from station %d to station %d\n", request.track, (request.track+1)%4);
			:: 	else -> reply.granted = false; //Shuttles willing to travel along the occupied track have to wait until the track is free.
				printf("Railway Network: rejecting access to track from station %d to station %d\n", request.track, (request.track+1)%4);
			fi
		:: 	else ->
			if
			:: 	!tracks.trackR2L[request.track] ->tracks.trackR2L[request.track] = true;  reply.granted = true;
				printf("Railway Network: granting access to track from station %d to station %d\n", (request.track+1+1)%4, (request.track+1)%4);
			:: 	else -> reply.granted = false;
				printf("Railway Network: rejecting access to track from station %d to station %d\n", (request.track+1+1)%4, (request.track+1)%4);
			fi
		fi
        railwayReplies[request.id]!reply;
	od
}

init{
	atomic{
		run Shuttle(4, 2, 1-1, 0); 
		run Shuttle(2, 4, 1-1, 1); 
		run Shuttle(5, 1, 2-1, 2);
		run Shuttle(3, 3, 3-1, 3);
		Order first; first.size = 4; first.start = 1-1; first.end = 3-1; 
        Order second; second.size = 2; second.start = 2-1; second.end = 3-1; 
		run ShuttleManagementSystem(first, second);
        run RailwayNetwork();
	}
}

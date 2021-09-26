#define noShuttles 4
#define noOrders 2
#define noStations 4

typedef Order {
	int start;
	int end;
	int size;
};
chan managementToShuttle[noShuttles] = [1] of {Order};

typedef Offer {
    int id
    int charge;
    bool refuse;
};
chan shuttleToManagement = [noShuttles] of {Offer};

typedef Track { 
    //Track can be traveled upon in one direction only (which is xed). 
    // Two stations are connected bidirectionally, 
    /// while there must only be one track between two stations in each direction.
    bool trackL2R[noStations]; //if track is occupied, true. 
    bool trackR2L[noStations];
};
Track tracks; 

typedef Request {
	int track; //track that shuttle would like to enter
	int direction;
	int id; 
};
chan shuttleToRailway = [noShuttles] of {Request};

typedef Reply {
	bool allowed;
};
chan railwayToShuttle[noShuttles] = [1] of {Reply}; 

proctype ShuttleManagementSystem(Order first; Order second) {
	Order orders[noOrders];
	orders[0].start = first.start; orders[0].end = first.end; orders[0].size = first.size;
	orders[1].start = second.start; orders[1].end = second.end; orders[1].size = second.size;
	int i;
	for (i:0 .. noOrders-1){
		int j;
		for (j:0 .. noShuttles-1){
			managementToShuttle[j]!orders[i];
		}
        int minCharge = 2147483647; //Assumption: max charge by a shuttle
	    int assignedId;
        //The shuttle having made the lowest oer will receive the assignment. In the event of two equal oers, 
        // the assignment will go to the shuttle that rst made the oer.
		for (j:0 .. noShuttles-1){ 
			Offer offer
			shuttleToManagement?offer;
			if
			:: offer.charge < minCharge && !offer.refuse -> minCharge = offer.charge; assignedId = offer.id;
			:: else -> minCharge = minCharge; assignedId = assignedId;
			fi
		}
        printf("[Management System]: New Order assigned to Shuttle %d\n", assignedId);
		for (j:0 .. noShuttles-1){				
			if
			:: j == assignedId -> managementToShuttle[j]!orders[i];
			:: else -> Order dummy; dummy.size = -1; managementToShuttle[j]!dummy;
			fi
		}
	}
}

proctype Shuttle(int capacity; int charge; int initialStation; int id) {
    Order order;
    bool travelling = false;
    int currentStation = initialStation;
    int currentLoad;
    chan orders = [noOrders] of {Order};
    int direction = 1;
    int destination;
    bool processingOrder = false;
    Order currentOrder;
    do
    ::  managementToShuttle[id]?order -> 
		int currentPosition;
		if // the start destination of the order is within two stations away from its current position
		:: travelling -> currentPosition = currentStation + direction; //if it is on a track, its current position is its arriving station
		:: else -> currentPosition = currentStation;
		fi
        int distance;
        if 
		:: currentPosition >  order.start -> distance = currentPosition - order.start;
		:: else -> distance = order.start - currentPosition;
		fi
        if 
		:: distance > (noStations/2) -> distance = noStations - distance;
		:: else -> distance = distance;
		fi
		Offer offer;
		if //current loaded size plus the order size does not exceed the capacity
		:: currentLoad + order.size <= capacity && distance <= 2 -> 
			offer.id = id; offer.charge = charge; offer.refuse = false;
		:: else -> 
			offer.id = id; offer.charge = charge; offer.refuse = true;
		fi
		shuttleToManagement!offer;
		managementToShuttle[id]?order;
		if
		:: order.size >= 0 -> orders!order; 
		:: else -> skip;
		fi
    :: nempty(orders) && !processingOrder->
        orders?currentOrder;
        printf("[Shuttle %d] Starting new order from station %d to station %d\n", id, currentOrder.start, currentOrder.end);
        processingOrder = true;
        destination = currentOrder.start;
        travelling = true;
        if
        :: (currentOrder.start >= currentStation) && ((currentOrder.start - currentStation) < noStations/2) -> 
            direction = 1;
        :: else -> direction = -1;
        fi
    :: !travelling && processingOrder ->
        if 
        :: destination == currentOrder.start ->
            currentLoad = currentLoad + currentOrder.size;
            printf("[Shuttle %d] Loading %d passengers from station %d \n", id, currentOrder.size, currentOrder.start);
            destination = currentOrder.end;
            travelling = true;
            if
            :: (currentOrder.start >= currentStation) && ((currentOrder.start - currentStation) < noStations/2) -> 
                direction = 1;
            :: else -> direction = -1;
            fi
        :: destination == currentOrder.end -> 
            currentLoad = currentLoad - currentOrder.size;
            printf("[Shuttle %d] Unloading %d passengers at station %d \n", id, currentOrder.size, currentOrder.end);
            processingOrder = false;
        :: else -> skip;
        fi
    :: travelling && processingOrder -> 
        int nextStation;
        nextStation = currentStation + direction;
        if 
        :: nextStation >= noStations -> nextStation = 0;
        :: nextStation < 0 -> nextStation = noStations - 1;
        :: else -> skip;
        fi
        Request request; request.id = id; request.direction = direction; request.track = nextStation;
		do
		:: shuttleToRailway!request;    
            Reply reply;
			railwayToShuttle[id]?reply;
			if
			:: reply.allowed -> break;
			:: else -> skip;
			fi
		od  
        printf("[Shuttle %d] Moving from station %d to station %d\n", id, currentStation, nextStation);
        currentStation = nextStation; 		
        if 
        :: direction == 1 -> tracks.trackL2R[request.track] = false; 
        :: direction == -1 -> tracks.trackR2L[request.track] = false; 
        fi
        if 
        :: currentStation == destination -> travelling = false; 
        :: else -> travelling = true;
        fi	
    od
}

proctype RailwayNetwork() {
    // The railway network consists of stations and tracks. 
    // Any number of shuttles can be present at a station at the same time.
    Request request;
	do
	::  shuttleToRailway?request ->
        Reply reply;
		if
		:: request.direction = 1 ->
			if // A track can only be occupied by one shuttle at a time. 
			:: !tracks.trackL2R[request.track] -> tracks.trackL2R[request.track] = true; reply.allowed = true;
			:: else -> reply.allowed = false; //Shuttles willing to travel along the occupied track have to wait until the track is free.
			fi
		:: else ->
			if
			:: !tracks.trackR2L[request.track] ->tracks.trackL2R[request.track] = true;  reply.allowed = true;
			:: else -> reply.allowed = false;
			fi
		fi
        railwayToShuttle[request.id]!reply;
	od
}

init{
	atomic{
		run Shuttle(4, 2, 1, 0); 
		run Shuttle(2, 4, 1, 1); 
		run Shuttle(5, 1, 2, 2);
		run Shuttle(3, 3, 3, 3);
		Order first; first.size = 4; first.start = 1; first.end = 3; 
        Order second; second.size = 2; second.start = 2; second.end = 3; 
		run ShuttleManagementSystem(first, second);
        run RailwayNetwork();
	}
}

#define noShuttles 4
#define noOrders 2
#define noStations 4

typedef Order {
	int start;
	int end;
	int size;
};

typedef Offer {
    int id
    int charge;
    bool refuse;
}
chan shuttleToManagement = [noShuttles] of {Offer};
chan managementToShuttle[noShuttles] = [1] of {Order};

proctype ShuttleManagementSystem(Order first; Order second) {
	Order orders[noOrders];
	orders[0].start = first.start; orders[0].end = first.end; orders[0].size = first.size;
	orders[1].start = second.start; orders[1].end = second.end; orders[1].size = second.size;
	int i;
	for (i:0 .. noOrders-1){
		printf("[Management System]: Broadcasting New Order %d\n", i);
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
			:: else -> skip;
			fi
		}
		printf("[Management System]: Order %d assigned to Shuttle %d\n", i, assignedId);
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
    bool onTrack = false;
    int currentStation = initialStation;
	int nextStation;
    int currentLoad;
    chan orders = [noOrders] of {Order};
    do
    ::  managementToShuttle[id]?order -> 
		int currentPosition;
		if // the start destination of the order is within two stations away from its current position
		:: onTrack -> currentPosition = nextStation; //if it is on a track, its current position is its arriving station
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
	}
}

#define noShuttles 4
#define noOrders 2
#define noStations 4

typedef Order {
	int start;
	int end;
	int size;
    bool reject;
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
        printf("[Management System]: Waiting for replies\n");
        int min_charge = 100; //must be larger than all possible charges, replace with MAX_INT
        int min_id = 0;
		for (j:0 .. noShuttles-1){
            Offer offer;
			shuttleToManagement?offer;
			if
			:: offer.charge < min_charge && !offer.refuse -> min_charge = offer.charge; min_id = offer.id;
			fi
		}
		printf("[Management System]: New Order assigned to Shuttle %d\n", min_id);
		for (j:0 .. noShuttles-1){				
			if
			:: j == min_id -> managementToShuttle[j]!orders[i];
            :: else -> Order dummy; managementToShuttle[j]!dummy;
			fi
		}
	}
}

proctype Shuttle(int max_cap; int charge; int init_pos; int id) {
    Order order;
    bool on_track = false;
    int current_station = init_pos;
	int next_station;
    int current_load;
    chan orders = [noOrders] of {Order};
    do
    ::  managementToShuttle[id]?order -> //need to send back offer
        int current_position;
		if //the start destination of the order is within two stations away from its current position
		:: on_track -> current_position = next_station;//if it is on a track, its current position is its arriving station
		:: else -> current_position = current_station;
		fi
        int distance;
        if 
		:: current_position >  order.start -> distance = current_position - order.start;
		:: else -> distance = order.start - current_position;
		fi
        if 
		:: distance > (noStations/2) -> distance = noStations - distance;
		:: else -> distance = distance;
		fi
        Offer offer;
		if //current loaded size plus the order size does not exceed the capacity
		:: current_load + order.size <= max_cap && distance <= 2 -> 
            offer.id = id; offer.charge = charge; offer.refuse = false;
		:: else -> offer.id = id; offer.charge = charge; offer.refuse = true;
		fi
        shuttleToManagement!offer;
		managementToShuttle[id]?order; //check if offer has been accepted
		if
		:: order.size != 0 -> orders!order;
		fi
    od
}

init{
	atomic{
		run Shuttle(4, 2, 1, 0); 
		run Shuttle(2, 4, 1, 1); 
		run Shuttle(5, 1, 2, 2);
		run Shuttle(3, 3, 3, 3);
		Order first; first.start = 1; first.end = 3; first.size = 4;
        Order second; second.start = 2; second.end = 3; second.size = 2;
		run ShuttleManagementSystem(first, second);
	}
}

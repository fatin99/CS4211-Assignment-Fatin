#define noShuttles 4
#define noOrders 2
#define noStations 4
#define trackLength 1
#define minLength 2

#define Reject 0
#define Clockwise 1
#define AntiClockwise -1

#define get_min(x, y) ((x) < (y) -> (x) : (y))
#define get_max(x, y) ((x) > (y) -> (x) : (y))
#define get_abs(x, y) ((x) > (y) -> (x)-(y) : (y)-(x))

bool track_clockwise[noStations];
bool track_anti_clockwise[noStations];

typedef Order {
	int start;
	int end;
	int size;
};

chan shuttleTOmanagement = [noShuttles] of {int, int};
chan managementTOshuttle[noShuttles] = [1] of {Order};

typedef Request {
	int track; //track that shuttle would like to enter
	int direction; //clockwise or anti-clockwise
	int shuttle_id; 
};

chan shuttleTOrailway = [noShuttles] of {Request};
chan railwayTOshuttle[noShuttles] = [1] of {bool};    

inline shuttle_move(){
	if
	:: current_station == destination && destination == current_order.end && !isMoving -> 
		current_cap = current_cap - current_order.size;
		isFree = true;
		isMoving = false;
		printf("[Shuttle %d] Unloading %d passengers at station %d \n", id, current_order.size, current_order.end);
		goto L2;
	:: current_station == destination  && destination == current_order.start && !isMoving ->
		destination = current_order.end;
		if
		:: (current_station + (noStations / 2)) % noStations >= destination -> direction = Clockwise;
		:: else -> direction = AntiClockwise;
		fi
		current_cap = current_cap + current_order.size;
		isFree = false;
		isMoving = false;
		track_distance = trackLength;
		printf("[Shuttle %d] Loading %d passengers from station %d \n", id, current_order.size, current_order.start);
		goto L1;
	:: else -> goto L1;
    fi

L1:	if
	:: !isMoving -> 
		if
		:: direction == Clockwise -> next_station = (current_station + 1) % noStations;
		:: direction == AntiClockwise -> next_station =  (current_station - 1 + noStations) % noStations;
		fi

		track_req.direction = direction;
		if
		:: current_station == noStations - 1 -> track_req.track = current_station;
		:: else -> track_req.track = get_min(current_station, next_station);
		fi
				
		bool got_track;

		do
		:: shuttleTOrailway!track_req; 
			railwayTOshuttle[id]?got_track;
			if
			:: got_track -> track_distance = trackLength; isMoving = true; break;
			:: else -> skip;
			fi
		od

	:: isMoving && track_distance > 0 -> 
			track_distance = track_distance - 1;
			printf("[Shuttle %d] Moving from station %d to station %d\n", id, current_station, next_station);
	:: isMoving && track_distance == 0 -> 
			current_station = next_station; 			
			if
			:: direction == Clockwise -> track_clockwise[track_req.track] = false; 
			:: direction == AntiClockwise -> track_anti_clockwise[track_req.track] = false; 
			fi
			isMoving = false;

L2:	fi

}

proctype Shuttle(int max_cap; int charge; int init_pos; int id) {
	chan order_queue = [noOrders] of {Order};
	Order current_order;
	Order receive_order;
	Request track_req;
	bool isMoving = false;
	bool isFree = true;
	int current_cap;
	int current_station = init_pos;
	int next_station;
	int destination;
	int track_distance;
	int direction;
	int station_distance;

	track_req.shuttle_id = id;

L0:	do
    ::  managementTOshuttle[id]?receive_order -> 
		int temp_station;
		if
		:: isMoving -> temp_station = next_station;
		:: else -> temp_station = current_station;
		fi
		int distance_a = get_abs(temp_station, receive_order.start); 
		int distance_b = noStations - get_max(temp_station, receive_order.start) + get_min(temp_station, receive_order.start);
		station_distance = get_min(distance_a, distance_b);
		if
		:: current_cap + receive_order.size <= max_cap && station_distance <= minLength -> shuttleTOmanagement!charge,id;
		:: else -> shuttleTOmanagement!Reject,id;
		fi
		managementTOshuttle[id]?receive_order;
		if
		:: receive_order.size != 0 -> order_queue!receive_order;
		:: else -> skip;
		fi
    ::  isMoving || !isFree -> shuttle_move();
    ::  isFree && nempty(order_queue) -> 
		order_queue?current_order;	
		isFree = false;
		destination = current_order.start;
		printf("[Shuttle %d] Starting new order from station %d to station %d\n", id, current_order.start, current_order.end);
		if
		:: (current_station + (noStations / 2)) % noStations >= destination -> direction = Clockwise;
		:: else -> direction = AntiClockwise;
		fi      
    od;
}


proctype RailwayNetwork() {
	Request req;
	int shuttle_id;
	do
	::  nempty(shuttleTOrailway) ->
		shuttleTOrailway?req;
		if
		:: req.direction == Clockwise ->
			if
			:: atomic{ !track_clockwise[req.track] -> track_clockwise[req.track] = true; railwayTOshuttle[req.shuttle_id]!true;}
			:: else -> railwayTOshuttle[shuttle_id]!false;
			fi
		:: req.direction == AntiClockwise ->
			if
			:: atomic{ !track_anti_clockwise[req.track] -> track_anti_clockwise[req.track] = true; railwayTOshuttle[req.shuttle_id]!true;}
			:: else -> railwayTOshuttle[shuttle_id]!false;
			fi
		fi
	od
}

proctype ShuttleManagementSystem(Order first; Order second) {
	Order orders[noOrders];
	orders[0].start = first.start; orders[0].end = first.end; orders[0].size = first.size;
	orders[1].start = second.start; orders[1].end = second.end; orders[1].size = second.size;
	int min_charge = 100;
	int min_id;
	int shuttle_id;
	int shuttle_charge;
	int i;
	for (i:0 .. noOrders-1){
		printf("[Management System]: Broadcasting New Order\n");
		int j;
		for (j:0 .. noShuttles-1){
			managementTOshuttle[j]!orders[i];
		}
		printf("[Management System]: Waiting for replies\n");
		for (j:0 .. noShuttles-1){
			shuttleTOmanagement?shuttle_charge,shuttle_id;
			if
			:: shuttle_charge < min_charge && shuttle_charge != 0 -> min_charge = shuttle_charge; min_id = shuttle_id;
			:: else -> skip;
			fi
		}
		printf("[Management System]: New Order assigned to Shuttle %d\n", min_id);
		for (j:0 .. noShuttles-1){				
			if
			:: j == min_id -> managementTOshuttle[j]!orders[i];
			:: else -> Order dummy; managementTOshuttle[j]!dummy;
			fi
		}
	}
}

init{
	atomic{
		run Shuttle(4, 2, 1, 0); 
		run Shuttle(2, 4, 1, 1); 
		run Shuttle(5, 1, 2, 2);
		run Shuttle(3, 3, 3, 3);
        run RailwayNetwork();
		Order first; first.start = 1; first.end = 3; first.size = 4;
        Order second; second.start = 2; second.end = 3; second.size = 2;
		run ShuttleManagementSystem(first, second);
	}
}
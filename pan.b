	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* PROC :init: */

	case 3: // STATE 1
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 4: // STATE 2
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 5: // STATE 3
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 6: // STATE 4
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 7: // STATE 5
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 8: // STATE 13
		;
		((P3 *)_this)->_10_6_second.size = trpt->bup.ovals[5];
		((P3 *)_this)->_10_6_second.end = trpt->bup.ovals[4];
		((P3 *)_this)->_10_6_second.start = trpt->bup.ovals[3];
		;
		((P3 *)_this)->_10_6_first.size = trpt->bup.ovals[2];
		((P3 *)_this)->_10_6_first.end = trpt->bup.ovals[1];
		((P3 *)_this)->_10_6_first.start = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 6);
		goto R999;

	case 9: // STATE 14
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 10: // STATE 16
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC ShuttleManagementSystem */

	case 11: // STATE 12
		;
		((P2 *)_this)->i = trpt->bup.ovals[11];
		((P2 *)_this)->i = trpt->bup.ovals[10];
		((P2 *)_this)->shuttle_charge = trpt->bup.ovals[9];
		((P2 *)_this)->shuttle_id = trpt->bup.ovals[8];
		((P2 *)_this)->min_id = trpt->bup.ovals[7];
		((P2 *)_this)->min_charge = trpt->bup.ovals[6];
		((P2 *)_this)->orders[1].size = trpt->bup.ovals[5];
		((P2 *)_this)->orders[1].end = trpt->bup.ovals[4];
		((P2 *)_this)->orders[1].start = trpt->bup.ovals[3];
		((P2 *)_this)->orders[0].size = trpt->bup.ovals[2];
		((P2 *)_this)->orders[0].end = trpt->bup.ovals[1];
		((P2 *)_this)->orders[0].start = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 12);
		goto R999;

	case 12: // STATE 16
		;
		((P2 *)_this)->_9_5_j = trpt->bup.ovals[1];
		((P2 *)_this)->_9_5_j = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 14: // STATE 18
		;
		_m = unsend(now.managementTOshuttle[ Index(((P2 *)_this)->_9_5_j, 4) ]);
		;
		goto R999;

	case 15: // STATE 19
		;
		((P2 *)_this)->_9_5_j = trpt->bup.oval;
		;
		goto R999;

	case 16: // STATE 26
		;
		((P2 *)_this)->_9_5_j = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 18: // STATE 28
		;
		XX = 1;
		unrecv(now.shuttleTOmanagement, XX-1, 0, ((P2 *)_this)->shuttle_charge, 1);
		unrecv(now.shuttleTOmanagement, XX-1, 1, ((P2 *)_this)->shuttle_id, 0);
		((P2 *)_this)->shuttle_charge = trpt->bup.ovals[0];
		((P2 *)_this)->shuttle_id = trpt->bup.ovals[1];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 19: // STATE 36
		;
		((P2 *)_this)->_9_5_j = trpt->bup.ovals[3];
		((P2 *)_this)->min_id = trpt->bup.ovals[2];
		((P2 *)_this)->min_charge = trpt->bup.ovals[1];
	/* 0 */	((P2 *)_this)->min_charge = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 20: // STATE 36
		;
		((P2 *)_this)->_9_5_j = trpt->bup.oval;
		;
		goto R999;

	case 21: // STATE 36
		;
		((P2 *)_this)->_9_5_j = trpt->bup.oval;
		;
		goto R999;

	case 22: // STATE 43
		;
		((P2 *)_this)->_9_5_j = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 25: // STATE 46
		;
		_m = unsend(now.managementTOshuttle[ Index(((P2 *)_this)->_9_5_j, 4) ]);
		;
		goto R999;

	case 26: // STATE 48
		;
		;
		;
		goto R999;

	case 27: // STATE 49
		;
		_m = unsend(now.managementTOshuttle[ Index(((P2 *)_this)->_9_5_j, 4) ]);
		;
		goto R999;

	case 28: // STATE 52
		;
		((P2 *)_this)->_9_5_j = trpt->bup.oval;
		;
		goto R999;

	case 29: // STATE 58
		;
		((P2 *)_this)->i = trpt->bup.oval;
		;
		goto R999;

	case 30: // STATE 64
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC RailwayNetwork */
;
		;
		
	case 32: // STATE 2
		;
		XX = 1;
		unrecv(now.shuttleTOrailway, XX-1, 0, ((P1 *)_this)->req.track, 1);
		unrecv(now.shuttleTOrailway, XX-1, 1, ((P1 *)_this)->req.direction, 0);
		unrecv(now.shuttleTOrailway, XX-1, 2, ((P1 *)_this)->req.shuttle_id, 0);
		((P1 *)_this)->req.track = trpt->bup.ovals[0];
		((P1 *)_this)->req.direction = trpt->bup.ovals[1];
		((P1 *)_this)->req.shuttle_id = trpt->bup.ovals[2];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		
	case 34: // STATE 5
		;
		now.track_clockwise[ Index(((P1 *)_this)->req.track, 4) ] = trpt->bup.oval;
		;
		goto R999;

	case 35: // STATE 6
		;
		_m = unsend(now.railwayTOshuttle[ Index(((P1 *)_this)->req.shuttle_id, 4) ]);
		;
		goto R999;

	case 36: // STATE 9
		;
		_m = unsend(now.railwayTOshuttle[ Index(((P1 *)_this)->shuttle_id, 4) ]);
		;
		goto R999;
;
		;
		
	case 38: // STATE 14
		;
		now.track_anti_clockwise[ Index(((P1 *)_this)->req.track, 4) ] = trpt->bup.oval;
		;
		goto R999;

	case 39: // STATE 15
		;
		_m = unsend(now.railwayTOshuttle[ Index(((P1 *)_this)->req.shuttle_id, 4) ]);
		;
		goto R999;

	case 40: // STATE 18
		;
		_m = unsend(now.railwayTOshuttle[ Index(((P1 *)_this)->shuttle_id, 4) ]);
		;
		goto R999;

	case 41: // STATE 26
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Shuttle */

	case 42: // STATE 1
		;
		((P0 *)_this)->track_req.shuttle_id = trpt->bup.oval;
		;
		goto R999;

	case 43: // STATE 2
		;
		XX = 1;
		unrecv(now.managementTOshuttle[ Index(((P0 *)_this)->id, 4) ], XX-1, 0, ((P0 *)_this)->receive_order.start, 1);
		unrecv(now.managementTOshuttle[ Index(((P0 *)_this)->id, 4) ], XX-1, 1, ((P0 *)_this)->receive_order.end, 0);
		unrecv(now.managementTOshuttle[ Index(((P0 *)_this)->id, 4) ], XX-1, 2, ((P0 *)_this)->receive_order.size, 0);
		((P0 *)_this)->receive_order.start = trpt->bup.ovals[0];
		((P0 *)_this)->receive_order.end = trpt->bup.ovals[1];
		((P0 *)_this)->receive_order.size = trpt->bup.ovals[2];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 44: // STATE 3
		;
		((P0 *)_this)->temp_station = trpt->bup.oval;
		;
		goto R999;

	case 45: // STATE 12
		;
		((P0 *)_this)->station_distance = trpt->bup.ovals[3];
		((P0 *)_this)->distance_b = trpt->bup.ovals[2];
		((P0 *)_this)->distance_a = trpt->bup.ovals[1];
		((P0 *)_this)->temp_station = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 46: // STATE 12
		;
		((P0 *)_this)->station_distance = trpt->bup.ovals[3];
		((P0 *)_this)->distance_b = trpt->bup.ovals[2];
		((P0 *)_this)->distance_a = trpt->bup.ovals[1];
		((P0 *)_this)->temp_station = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 47: // STATE 12
		;
		((P0 *)_this)->station_distance = trpt->bup.ovals[2];
		((P0 *)_this)->distance_b = trpt->bup.ovals[1];
		((P0 *)_this)->distance_a = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 48: // STATE 13
		;
	/* 0 */	((P0 *)_this)->station_distance = trpt->bup.oval;
		;
		;
		goto R999;

	case 49: // STATE 14
		;
		_m = unsend(now.shuttleTOmanagement);
		;
		goto R999;

	case 50: // STATE 16
		;
		_m = unsend(now.shuttleTOmanagement);
		;
		goto R999;

	case 51: // STATE 19
		;
		XX = 1;
		unrecv(now.managementTOshuttle[ Index(((P0 *)_this)->id, 4) ], XX-1, 0, ((P0 *)_this)->receive_order.start, 1);
		unrecv(now.managementTOshuttle[ Index(((P0 *)_this)->id, 4) ], XX-1, 1, ((P0 *)_this)->receive_order.end, 0);
		unrecv(now.managementTOshuttle[ Index(((P0 *)_this)->id, 4) ], XX-1, 2, ((P0 *)_this)->receive_order.size, 0);
		((P0 *)_this)->receive_order.start = trpt->bup.ovals[0];
		((P0 *)_this)->receive_order.end = trpt->bup.ovals[1];
		((P0 *)_this)->receive_order.size = trpt->bup.ovals[2];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		
	case 53: // STATE 21
		;
		_m = unsend(((P0 *)_this)->order_queue);
		;
		goto R999;
;
		;
		
	case 55: // STATE 30
		;
		((P0 *)_this)->isMoving = trpt->bup.ovals[3];
		((P0 *)_this)->isFree = trpt->bup.ovals[2];
		((P0 *)_this)->current_cap = trpt->bup.ovals[1];
	/* 0 */	((P0 *)_this)->isMoving = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 56: // STATE 34
		;
		((P0 *)_this)->destination = trpt->bup.ovals[2];
	/* 1 */	((P0 *)_this)->isMoving = trpt->bup.ovals[1];
	/* 0 */	((P0 *)_this)->destination = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 57: // STATE 44
		;
		((P0 *)_this)->track_distance = trpt->bup.ovals[4];
		((P0 *)_this)->isMoving = trpt->bup.ovals[3];
		((P0 *)_this)->isFree = trpt->bup.ovals[2];
		((P0 *)_this)->current_cap = trpt->bup.ovals[1];
		((P0 *)_this)->direction = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 5);
		goto R999;

	case 58: // STATE 44
		;
		((P0 *)_this)->track_distance = trpt->bup.ovals[4];
		((P0 *)_this)->isMoving = trpt->bup.ovals[3];
		((P0 *)_this)->isFree = trpt->bup.ovals[2];
		((P0 *)_this)->current_cap = trpt->bup.ovals[1];
		((P0 *)_this)->direction = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 5);
		goto R999;

	case 59: // STATE 44
		;
		((P0 *)_this)->track_distance = trpt->bup.ovals[3];
		((P0 *)_this)->isMoving = trpt->bup.ovals[2];
		((P0 *)_this)->isFree = trpt->bup.ovals[1];
		((P0 *)_this)->current_cap = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 60: // STATE 51
		;
	/* 0 */	((P0 *)_this)->isMoving = trpt->bup.oval;
		;
		;
		goto R999;

	case 61: // STATE 58
		;
		((P0 *)_this)->track_req.direction = trpt->bup.ovals[1];
		((P0 *)_this)->next_station = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 62: // STATE 58
		;
		((P0 *)_this)->track_req.direction = trpt->bup.ovals[1];
		((P0 *)_this)->next_station = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 63: // STATE 58
		;
		((P0 *)_this)->track_req.direction = trpt->bup.oval;
		;
		goto R999;

	case 64: // STATE 65
		;
		((P0 *)_this)->_7_2_got_track = trpt->bup.ovals[1];
		((P0 *)_this)->track_req.track = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 65: // STATE 65
		;
		((P0 *)_this)->_7_2_got_track = trpt->bup.ovals[1];
		((P0 *)_this)->track_req.track = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 66: // STATE 65
		;
		((P0 *)_this)->_7_2_got_track = trpt->bup.oval;
		;
		goto R999;

	case 67: // STATE 66
		;
		_m = unsend(now.shuttleTOrailway);
		;
		goto R999;

	case 68: // STATE 67
		;
		XX = 1;
		unrecv(now.railwayTOshuttle[ Index(((P0 *)_this)->id, 4) ], XX-1, 0, ((int)((P0 *)_this)->_7_2_got_track), 1);
		((P0 *)_this)->_7_2_got_track = trpt->bup.oval;
		;
		;
		goto R999;

	case 69: // STATE 70
		;
		((P0 *)_this)->isMoving = trpt->bup.ovals[2];
		((P0 *)_this)->track_distance = trpt->bup.ovals[1];
	/* 0 */	((P0 *)_this)->_7_2_got_track = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 70: // STATE 80
		;
		((P0 *)_this)->track_distance = trpt->bup.oval;
		;
		goto R999;

	case 71: // STATE 83
		;
		((P0 *)_this)->current_station = trpt->bup.ovals[1];
	/* 0 */	((P0 *)_this)->isMoving = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 73: // STATE 85
		;
		now.track_clockwise[ Index(((P0 *)_this)->track_req.track, 4) ] = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 75: // STATE 87
		;
		now.track_anti_clockwise[ Index(((P0 *)_this)->track_req.track, 4) ] = trpt->bup.oval;
		;
		goto R999;

	case 76: // STATE 90
		;
		((P0 *)_this)->isMoving = trpt->bup.oval;
		;
		goto R999;

	case 77: // STATE 95
		;
	/* 0 */	((P0 *)_this)->isFree = trpt->bup.oval;
		;
		;
		goto R999;

	case 78: // STATE 96
		;
		XX = 1;
		unrecv(((P0 *)_this)->order_queue, XX-1, 0, ((P0 *)_this)->current_order.start, 1);
		unrecv(((P0 *)_this)->order_queue, XX-1, 1, ((P0 *)_this)->current_order.end, 0);
		unrecv(((P0 *)_this)->order_queue, XX-1, 2, ((P0 *)_this)->current_order.size, 0);
		((P0 *)_this)->current_order.start = trpt->bup.ovals[0];
		((P0 *)_this)->current_order.end = trpt->bup.ovals[1];
		((P0 *)_this)->current_order.size = trpt->bup.ovals[2];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 79: // STATE 98
		;
		((P0 *)_this)->destination = trpt->bup.ovals[1];
		((P0 *)_this)->isFree = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 80: // STATE 101
		;
		((P0 *)_this)->direction = trpt->bup.oval;
		;
		goto R999;

	case 81: // STATE 103
		;
		((P0 *)_this)->direction = trpt->bup.oval;
		;
		goto R999;

	case 82: // STATE 109
		;
		p_restor(II);
		;
		;
		goto R999;
	}


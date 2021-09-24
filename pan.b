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
		((P3 *)_this)->_10_11_second.size = trpt->bup.ovals[5];
		((P3 *)_this)->_10_11_second.end = trpt->bup.ovals[4];
		((P3 *)_this)->_10_11_second.start = trpt->bup.ovals[3];
		;
		((P3 *)_this)->_10_11_first.size = trpt->bup.ovals[2];
		((P3 *)_this)->_10_11_first.end = trpt->bup.ovals[1];
		((P3 *)_this)->_10_11_first.start = trpt->bup.ovals[0];
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

		 /* PROC ManagementSystem */

	case 11: // STATE 1
		;
		_m = unsend(((P2 *)_this)->order_stack);
		;
		goto R999;

	case 12: // STATE 2
		;
		_m = unsend(((P2 *)_this)->order_stack);
		;
		goto R999;

	case 13: // STATE 9
		;
		((P2 *)_this)->shuttle_charge = trpt->bup.ovals[4];
		((P2 *)_this)->shuttle_id = trpt->bup.ovals[3];
		((P2 *)_this)->offer_id = trpt->bup.ovals[2];
		((P2 *)_this)->min_charge = trpt->bup.ovals[1];
		;
		;
		((P2 *)_this)->i = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 5);
		goto R999;
;
		;
		;
		;
		
	case 16: // STATE 12
		;
		XX = 1;
		unrecv(((P2 *)_this)->order_stack, XX-1, 0, ((P2 *)_this)->current.start, 1);
		unrecv(((P2 *)_this)->order_stack, XX-1, 1, ((P2 *)_this)->current.end, 0);
		unrecv(((P2 *)_this)->order_stack, XX-1, 2, ((P2 *)_this)->current.size, 0);
		((P2 *)_this)->current.start = trpt->bup.ovals[0];
		((P2 *)_this)->current.end = trpt->bup.ovals[1];
		((P2 *)_this)->current.size = trpt->bup.ovals[2];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 17: // STATE 13
		;
		((P2 *)_this)->i = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 19: // STATE 15
		;
		_m = unsend(now.managementTOshuttle[ Index(((P2 *)_this)->i, 4) ]);
		;
		goto R999;

	case 20: // STATE 16
		;
		((P2 *)_this)->i = trpt->bup.oval;
		;
		goto R999;

	case 21: // STATE 24
		;
		((P2 *)_this)->i = trpt->bup.ovals[1];
		((P2 *)_this)->i = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 23: // STATE 26
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

	case 24: // STATE 34
		;
		((P2 *)_this)->i = trpt->bup.ovals[3];
		((P2 *)_this)->offer_id = trpt->bup.ovals[2];
		((P2 *)_this)->min_charge = trpt->bup.ovals[1];
	/* 0 */	((P2 *)_this)->min_charge = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 25: // STATE 34
		;
		((P2 *)_this)->i = trpt->bup.oval;
		;
		goto R999;

	case 26: // STATE 34
		;
		((P2 *)_this)->i = trpt->bup.oval;
		;
		goto R999;

	case 27: // STATE 42
		;
		((P2 *)_this)->i = trpt->bup.ovals[1];
		((P2 *)_this)->i = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		;
		;
		
	case 30: // STATE 45
		;
		_m = unsend(now.managementTOshuttle[ Index(((P2 *)_this)->i, 4) ]);
		;
		goto R999;

	case 31: // STATE 47
		;
		_m = unsend(now.managementTOshuttle[ Index(((P2 *)_this)->i, 4) ]);
		;
		goto R999;

	case 32: // STATE 50
		;
		((P2 *)_this)->i = trpt->bup.oval;
		;
		goto R999;

	case 33: // STATE 59
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC RailwayNetwork */
;
		;
		
	case 35: // STATE 2
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
		
	case 37: // STATE 5
		;
		now.track_clockwise[ Index(((P1 *)_this)->req.track, 4) ] = trpt->bup.oval;
		;
		goto R999;

	case 38: // STATE 6
		;
		_m = unsend(now.railwayTOshuttle[ Index(((P1 *)_this)->req.shuttle_id, 4) ]);
		;
		goto R999;

	case 39: // STATE 9
		;
		_m = unsend(now.railwayTOshuttle[ Index(((P1 *)_this)->shuttle_id, 4) ]);
		;
		goto R999;
;
		;
		
	case 41: // STATE 14
		;
		now.track_anti_clockwise[ Index(((P1 *)_this)->req.track, 4) ] = trpt->bup.oval;
		;
		goto R999;

	case 42: // STATE 15
		;
		_m = unsend(now.railwayTOshuttle[ Index(((P1 *)_this)->req.shuttle_id, 4) ]);
		;
		goto R999;

	case 43: // STATE 18
		;
		_m = unsend(now.railwayTOshuttle[ Index(((P1 *)_this)->shuttle_id, 4) ]);
		;
		goto R999;

	case 44: // STATE 26
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Shuttle */

	case 45: // STATE 1
		;
		((P0 *)_this)->track_req.shuttle_id = trpt->bup.oval;
		;
		goto R999;

	case 46: // STATE 2
		;
		XX = 1;
		unrecv(((P0 *)_this)->om_in, XX-1, 0, ((P0 *)_this)->recieve_order.start, 1);
		unrecv(((P0 *)_this)->om_in, XX-1, 1, ((P0 *)_this)->recieve_order.end, 0);
		unrecv(((P0 *)_this)->om_in, XX-1, 2, ((P0 *)_this)->recieve_order.size, 0);
		((P0 *)_this)->recieve_order.start = trpt->bup.ovals[0];
		((P0 *)_this)->recieve_order.end = trpt->bup.ovals[1];
		((P0 *)_this)->recieve_order.size = trpt->bup.ovals[2];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 47: // STATE 3
		;
		((P0 *)_this)->_7_2_temp_station = trpt->bup.oval;
		;
		goto R999;

	case 48: // STATE 5
		;
		((P0 *)_this)->_7_2_temp_station = trpt->bup.oval;
		;
		goto R999;

	case 49: // STATE 7
		;
		((P0 *)_this)->_7_2_temp_station = trpt->bup.oval;
		;
		goto R999;

	case 50: // STATE 12
		;
		((P0 *)_this)->station_distance = trpt->bup.ovals[2];
		((P0 *)_this)->_7_2_1_distance_b = trpt->bup.ovals[1];
		((P0 *)_this)->_7_2_1_distance_a = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 51: // STATE 14
		;
	/* 0 */	((P0 *)_this)->station_distance = trpt->bup.oval;
		;
		;
		goto R999;

	case 52: // STATE 15
		;
		_m = unsend(((P0 *)_this)->om_out);
		;
		goto R999;

	case 53: // STATE 17
		;
		_m = unsend(((P0 *)_this)->om_out);
		;
		goto R999;

	case 54: // STATE 20
		;
		XX = 1;
		unrecv(((P0 *)_this)->om_in, XX-1, 0, ((P0 *)_this)->recieve_order.start, 1);
		unrecv(((P0 *)_this)->om_in, XX-1, 1, ((P0 *)_this)->recieve_order.end, 0);
		unrecv(((P0 *)_this)->om_in, XX-1, 2, ((P0 *)_this)->recieve_order.size, 0);
		((P0 *)_this)->recieve_order.start = trpt->bup.ovals[0];
		((P0 *)_this)->recieve_order.end = trpt->bup.ovals[1];
		((P0 *)_this)->recieve_order.size = trpt->bup.ovals[2];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		
	case 56: // STATE 22
		;
		_m = unsend(((P0 *)_this)->order_queue);
		;
		goto R999;
;
		;
		
	case 58: // STATE 32
		;
		((P0 *)_this)->isMoving = trpt->bup.ovals[3];
		((P0 *)_this)->isFree = trpt->bup.ovals[2];
		((P0 *)_this)->current_cap = trpt->bup.ovals[1];
	/* 0 */	((P0 *)_this)->isMoving = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 59: // STATE 36
		;
		((P0 *)_this)->destination = trpt->bup.ovals[2];
	/* 1 */	((P0 *)_this)->isMoving = trpt->bup.ovals[1];
	/* 0 */	((P0 *)_this)->destination = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 60: // STATE 47
		;
		((P0 *)_this)->track_distance = trpt->bup.ovals[4];
		((P0 *)_this)->isMoving = trpt->bup.ovals[3];
		((P0 *)_this)->isFree = trpt->bup.ovals[2];
		((P0 *)_this)->current_cap = trpt->bup.ovals[1];
		((P0 *)_this)->direction = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 5);
		goto R999;

	case 61: // STATE 47
		;
		((P0 *)_this)->track_distance = trpt->bup.ovals[4];
		((P0 *)_this)->isMoving = trpt->bup.ovals[3];
		((P0 *)_this)->isFree = trpt->bup.ovals[2];
		((P0 *)_this)->current_cap = trpt->bup.ovals[1];
		((P0 *)_this)->direction = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 5);
		goto R999;

	case 62: // STATE 47
		;
		((P0 *)_this)->track_distance = trpt->bup.ovals[3];
		((P0 *)_this)->isMoving = trpt->bup.ovals[2];
		((P0 *)_this)->isFree = trpt->bup.ovals[1];
		((P0 *)_this)->current_cap = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 63: // STATE 54
		;
	/* 0 */	((P0 *)_this)->isMoving = trpt->bup.oval;
		;
		;
		goto R999;

	case 64: // STATE 61
		;
		((P0 *)_this)->track_req.direction = trpt->bup.ovals[1];
		((P0 *)_this)->next_station = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 65: // STATE 61
		;
		((P0 *)_this)->track_req.direction = trpt->bup.ovals[1];
		((P0 *)_this)->next_station = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 66: // STATE 61
		;
		((P0 *)_this)->track_req.direction = trpt->bup.oval;
		;
		goto R999;

	case 67: // STATE 68
		;
		((P0 *)_this)->_7_3_got_track = trpt->bup.ovals[1];
		((P0 *)_this)->track_req.track = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 68: // STATE 68
		;
		((P0 *)_this)->_7_3_got_track = trpt->bup.ovals[1];
		((P0 *)_this)->track_req.track = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 69: // STATE 68
		;
		((P0 *)_this)->_7_3_got_track = trpt->bup.oval;
		;
		goto R999;

	case 70: // STATE 69
		;
		_m = unsend(((P0 *)_this)->rm_out);
		;
		goto R999;

	case 71: // STATE 70
		;
		XX = 1;
		unrecv(((P0 *)_this)->rm_in, XX-1, 0, ((int)((P0 *)_this)->_7_3_got_track), 1);
		((P0 *)_this)->_7_3_got_track = trpt->bup.oval;
		;
		;
		goto R999;

	case 72: // STATE 73
		;
		((P0 *)_this)->isMoving = trpt->bup.ovals[2];
		((P0 *)_this)->track_distance = trpt->bup.ovals[1];
	/* 0 */	((P0 *)_this)->_7_3_got_track = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 73: // STATE 83
		;
		((P0 *)_this)->track_distance = trpt->bup.oval;
		;
		goto R999;

	case 74: // STATE 86
		;
		((P0 *)_this)->current_station = trpt->bup.ovals[1];
	/* 0 */	((P0 *)_this)->isMoving = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 76: // STATE 88
		;
		now.track_clockwise[ Index(((P0 *)_this)->track_req.track, 4) ] = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 78: // STATE 90
		;
		now.track_anti_clockwise[ Index(((P0 *)_this)->track_req.track, 4) ] = trpt->bup.oval;
		;
		goto R999;

	case 79: // STATE 93
		;
		((P0 *)_this)->isMoving = trpt->bup.oval;
		;
		goto R999;

	case 80: // STATE 98
		;
	/* 0 */	((P0 *)_this)->isFree = trpt->bup.oval;
		;
		;
		goto R999;

	case 81: // STATE 99
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

	case 82: // STATE 101
		;
		((P0 *)_this)->destination = trpt->bup.ovals[1];
		((P0 *)_this)->isFree = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 83: // STATE 104
		;
		((P0 *)_this)->direction = trpt->bup.oval;
		;
		goto R999;

	case 84: // STATE 106
		;
		((P0 *)_this)->direction = trpt->bup.oval;
		;
		goto R999;

	case 85: // STATE 114
		;
		p_restor(II);
		;
		;
		goto R999;
	}


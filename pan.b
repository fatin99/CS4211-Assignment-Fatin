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

	case 7: // STATE 12
		;
		((P3 *)_this)->_13_3_second.end = trpt->bup.ovals[5];
		((P3 *)_this)->_13_3_second.start = trpt->bup.ovals[4];
		((P3 *)_this)->_13_3_second.size = trpt->bup.ovals[3];
		;
		((P3 *)_this)->_13_3_first.end = trpt->bup.ovals[2];
		((P3 *)_this)->_13_3_first.start = trpt->bup.ovals[1];
		((P3 *)_this)->_13_3_first.size = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 6);
		goto R999;

	case 8: // STATE 13
		;
		;
		delproc(0, now._nr_pr-1);
		;
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

		 /* PROC RailwayNetwork */

	case 11: // STATE 1
		;
		XX = 1;
		unrecv(now.shuttleToRailway, XX-1, 0, ((P2 *)_this)->request.track, 1);
		unrecv(now.shuttleToRailway, XX-1, 1, ((P2 *)_this)->request.direction, 0);
		unrecv(now.shuttleToRailway, XX-1, 2, ((P2 *)_this)->request.id, 0);
		((P2 *)_this)->request.track = trpt->bup.ovals[0];
		((P2 *)_this)->request.direction = trpt->bup.ovals[1];
		((P2 *)_this)->request.id = trpt->bup.ovals[2];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 12: // STATE 2
		;
		;
		;
		goto R999;

	case 13: // STATE 3
		;
		((P2 *)_this)->request.direction = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 15: // STATE 5
		;
		now.tracks.trackL2R[ Index(((P2 *)_this)->request.track, 4) ] = trpt->bup.oval;
		;
		goto R999;

	case 16: // STATE 6
		;
		((P2 *)_this)->reply.allowed = trpt->bup.oval;
		;
		goto R999;

	case 17: // STATE 8
		;
		((P2 *)_this)->reply.allowed = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 19: // STATE 13
		;
		now.tracks.trackL2R[ Index(((P2 *)_this)->request.track, 4) ] = trpt->bup.oval;
		;
		goto R999;

	case 20: // STATE 14
		;
		((P2 *)_this)->reply.allowed = trpt->bup.oval;
		;
		goto R999;

	case 21: // STATE 16
		;
		((P2 *)_this)->reply.allowed = trpt->bup.oval;
		;
		goto R999;

	case 22: // STATE 21
		;
		_m = unsend(now.railwayToShuttle[ Index(((P2 *)_this)->request.id, 4) ]);
		;
		goto R999;

	case 23: // STATE 25
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Shuttle */

	case 24: // STATE 1
		;
		XX = 1;
		unrecv(now.managementToShuttle[ Index(((P1 *)_this)->id, 4) ], XX-1, 0, ((P1 *)_this)->order.start, 1);
		unrecv(now.managementToShuttle[ Index(((P1 *)_this)->id, 4) ], XX-1, 1, ((P1 *)_this)->order.end, 0);
		unrecv(now.managementToShuttle[ Index(((P1 *)_this)->id, 4) ], XX-1, 2, ((P1 *)_this)->order.size, 0);
		((P1 *)_this)->order.start = trpt->bup.ovals[0];
		((P1 *)_this)->order.end = trpt->bup.ovals[1];
		((P1 *)_this)->order.size = trpt->bup.ovals[2];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 25: // STATE 2
		;
		((P1 *)_this)->currentPosition = trpt->bup.oval;
		;
		goto R999;

	case 26: // STATE 9
		;
		((P1 *)_this)->distance = trpt->bup.ovals[1];
		((P1 *)_this)->currentPosition = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 27: // STATE 9
		;
		((P1 *)_this)->distance = trpt->bup.ovals[1];
		((P1 *)_this)->currentPosition = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 28: // STATE 9
		;
		((P1 *)_this)->distance = trpt->bup.oval;
		;
		goto R999;

	case 29: // STATE 11
		;
		((P1 *)_this)->distance = trpt->bup.oval;
		;
		goto R999;

	case 30: // STATE 13
		;
		((P1 *)_this)->distance = trpt->bup.oval;
		;
		goto R999;

	case 31: // STATE 22
		;
		;
		((P1 *)_this)->distance = trpt->bup.oval;
		;
		goto R999;

	case 32: // STATE 22
		;
		;
		((P1 *)_this)->distance = trpt->bup.oval;
		;
		goto R999;

	case 33: // STATE 22
		;
		;
		;
		goto R999;

	case 34: // STATE 26
		;
		((P1 *)_this)->offer.refuse = trpt->bup.ovals[3];
		((P1 *)_this)->offer.charge = trpt->bup.ovals[2];
		((P1 *)_this)->offer.id = trpt->bup.ovals[1];
	/* 0 */	((P1 *)_this)->distance = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 35: // STATE 30
		;
		((P1 *)_this)->offer.refuse = trpt->bup.ovals[2];
		((P1 *)_this)->offer.charge = trpt->bup.ovals[1];
		((P1 *)_this)->offer.id = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 36: // STATE 33
		;
		_m = unsend(now.shuttleToManagement);
		;
		goto R999;

	case 37: // STATE 34
		;
		XX = 1;
		unrecv(now.managementToShuttle[ Index(((P1 *)_this)->id, 4) ], XX-1, 0, ((P1 *)_this)->order.start, 1);
		unrecv(now.managementToShuttle[ Index(((P1 *)_this)->id, 4) ], XX-1, 1, ((P1 *)_this)->order.end, 0);
		unrecv(now.managementToShuttle[ Index(((P1 *)_this)->id, 4) ], XX-1, 2, ((P1 *)_this)->order.size, 0);
		((P1 *)_this)->order.start = trpt->bup.ovals[0];
		((P1 *)_this)->order.end = trpt->bup.ovals[1];
		((P1 *)_this)->order.size = trpt->bup.ovals[2];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		
	case 39: // STATE 36
		;
		_m = unsend(((P1 *)_this)->orders);
		;
		goto R999;

	case 40: // STATE 41
		;
	/* 0 */	((P1 *)_this)->processingOrder = trpt->bup.oval;
		;
		;
		goto R999;

	case 41: // STATE 42
		;
		XX = 1;
		unrecv(((P1 *)_this)->orders, XX-1, 0, ((P1 *)_this)->currentOrder.start, 1);
		unrecv(((P1 *)_this)->orders, XX-1, 1, ((P1 *)_this)->currentOrder.end, 0);
		unrecv(((P1 *)_this)->orders, XX-1, 2, ((P1 *)_this)->currentOrder.size, 0);
		((P1 *)_this)->currentOrder.start = trpt->bup.ovals[0];
		((P1 *)_this)->currentOrder.end = trpt->bup.ovals[1];
		((P1 *)_this)->currentOrder.size = trpt->bup.ovals[2];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 42: // STATE 45
		;
		((P1 *)_this)->travelling = trpt->bup.ovals[2];
		((P1 *)_this)->destination = trpt->bup.ovals[1];
		((P1 *)_this)->processingOrder = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 43: // STATE 47
		;
		((P1 *)_this)->direction = trpt->bup.oval;
		;
		goto R999;

	case 44: // STATE 49
		;
		((P1 *)_this)->direction = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 46: // STATE 56
		;
		((P1 *)_this)->travelling = trpt->bup.ovals[3];
		((P1 *)_this)->destination = trpt->bup.ovals[2];
		((P1 *)_this)->currentLoad = trpt->bup.ovals[1];
	/* 0 */	((P1 *)_this)->destination = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 47: // STATE 58
		;
		((P1 *)_this)->direction = trpt->bup.oval;
		;
		goto R999;

	case 48: // STATE 60
		;
		((P1 *)_this)->direction = trpt->bup.oval;
		;
		goto R999;

	case 49: // STATE 65
		;
		((P1 *)_this)->processingOrder = trpt->bup.ovals[1];
		((P1 *)_this)->currentLoad = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 50: // STATE 72
		;
		((P1 *)_this)->nextStation = trpt->bup.ovals[2];
		((P1 *)_this)->nextStation = trpt->bup.ovals[1];
	/* 0 */	((P1 *)_this)->travelling = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 51: // STATE 85
		;
		;
		((P1 *)_this)->request.track = trpt->bup.ovals[4];
		((P1 *)_this)->request.direction = trpt->bup.ovals[3];
		((P1 *)_this)->request.id = trpt->bup.ovals[2];
		;
		((P1 *)_this)->nextStation = trpt->bup.ovals[1];
	/* 0 */	((P1 *)_this)->nextStation = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 5);
		goto R999;

	case 52: // STATE 85
		;
		;
		((P1 *)_this)->request.track = trpt->bup.ovals[4];
		((P1 *)_this)->request.direction = trpt->bup.ovals[3];
		((P1 *)_this)->request.id = trpt->bup.ovals[2];
		;
		((P1 *)_this)->nextStation = trpt->bup.ovals[1];
	/* 0 */	((P1 *)_this)->nextStation = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 5);
		goto R999;

	case 53: // STATE 85
		;
		;
		((P1 *)_this)->request.track = trpt->bup.ovals[2];
		((P1 *)_this)->request.direction = trpt->bup.ovals[1];
		((P1 *)_this)->request.id = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 54: // STATE 85
		;
		;
		((P1 *)_this)->request.track = trpt->bup.ovals[2];
		((P1 *)_this)->request.direction = trpt->bup.ovals[1];
		((P1 *)_this)->request.id = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 55: // STATE 86
		;
		_m = unsend(now.shuttleToRailway);
		;
		goto R999;

	case 56: // STATE 87
		;
		XX = 1;
		unrecv(now.railwayToShuttle[ Index(((P1 *)_this)->id, 4) ], XX-1, 0, ((int)((P1 *)_this)->reply.allowed), 1);
		((P1 *)_this)->reply.allowed = trpt->bup.oval;
		;
		;
		goto R999;

	case 57: // STATE 97
		;
		((P1 *)_this)->currentStation = trpt->bup.oval;
		;
		goto R999;

	case 58: // STATE 97
		;
		((P1 *)_this)->currentStation = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 60: // STATE 99
		;
		now.tracks.trackL2R[ Index(((P1 *)_this)->request.track, 4) ] = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 62: // STATE 101
		;
		now.tracks.trackR2L[ Index(((P1 *)_this)->request.track, 4) ] = trpt->bup.oval;
		;
		goto R999;

	case 63: // STATE 105
		;
		((P1 *)_this)->travelling = trpt->bup.oval;
		;
		goto R999;

	case 64: // STATE 107
		;
		((P1 *)_this)->travelling = trpt->bup.oval;
		;
		goto R999;

	case 65: // STATE 113
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC ShuttleManagementSystem */

	case 66: // STATE 8
		;
		((P0 *)_this)->i = trpt->bup.ovals[7];
		((P0 *)_this)->i = trpt->bup.ovals[6];
		((P0 *)_this)->orders[1].size = trpt->bup.ovals[5];
		((P0 *)_this)->orders[1].end = trpt->bup.ovals[4];
		((P0 *)_this)->orders[1].start = trpt->bup.ovals[3];
		((P0 *)_this)->orders[0].size = trpt->bup.ovals[2];
		((P0 *)_this)->orders[0].end = trpt->bup.ovals[1];
		((P0 *)_this)->orders[0].start = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 8);
		goto R999;

	case 67: // STATE 11
		;
		((P0 *)_this)->_10_1_j = trpt->bup.ovals[1];
		((P0 *)_this)->_10_1_j = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 69: // STATE 13
		;
		_m = unsend(now.managementToShuttle[ Index(((P0 *)_this)->_10_1_j, 4) ]);
		;
		goto R999;

	case 70: // STATE 14
		;
		((P0 *)_this)->_10_1_j = trpt->bup.oval;
		;
		goto R999;

	case 71: // STATE 22
		;
		((P0 *)_this)->_10_1_j = trpt->bup.ovals[2];
		((P0 *)_this)->_10_1_assignedId = trpt->bup.ovals[1];
		((P0 *)_this)->_10_1_minCharge = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 72: // STATE 24
		;
		;
		;
		goto R999;

	case 73: // STATE 25
		;
		XX = 1;
		unrecv(now.shuttleToManagement, XX-1, 0, ((P0 *)_this)->_10_1_2_offer.id, 1);
		unrecv(now.shuttleToManagement, XX-1, 1, ((P0 *)_this)->_10_1_2_offer.charge, 0);
		unrecv(now.shuttleToManagement, XX-1, 2, ((int)((P0 *)_this)->_10_1_2_offer.refuse), 0);
		((P0 *)_this)->_10_1_2_offer.id = trpt->bup.ovals[0];
		((P0 *)_this)->_10_1_2_offer.charge = trpt->bup.ovals[1];
		((P0 *)_this)->_10_1_2_offer.refuse = trpt->bup.ovals[2];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 74: // STATE 34
		;
		((P0 *)_this)->_10_1_j = trpt->bup.ovals[3];
		((P0 *)_this)->_10_1_assignedId = trpt->bup.ovals[2];
		((P0 *)_this)->_10_1_minCharge = trpt->bup.ovals[1];
	/* 0 */	((P0 *)_this)->_10_1_minCharge = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 75: // STATE 34
		;
		((P0 *)_this)->_10_1_j = trpt->bup.ovals[2];
		((P0 *)_this)->_10_1_assignedId = trpt->bup.ovals[1];
		((P0 *)_this)->_10_1_minCharge = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 76: // STATE 34
		;
		((P0 *)_this)->_10_1_j = trpt->bup.oval;
		;
		goto R999;

	case 77: // STATE 40
		;
		((P0 *)_this)->_10_1_j = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 80: // STATE 43
		;
		_m = unsend(now.managementToShuttle[ Index(((P0 *)_this)->_10_1_j, 4) ]);
		;
		goto R999;

	case 81: // STATE 46
		;
		((P0 *)_this)->_10_1_3_dummy.size = trpt->bup.oval;
		;
		;
		goto R999;

	case 82: // STATE 47
		;
		_m = unsend(now.managementToShuttle[ Index(((P0 *)_this)->_10_1_j, 4) ]);
		;
		goto R999;

	case 83: // STATE 50
		;
		((P0 *)_this)->_10_1_j = trpt->bup.oval;
		;
		goto R999;

	case 84: // STATE 56
		;
		((P0 *)_this)->i = trpt->bup.oval;
		;
		goto R999;

	case 85: // STATE 62
		;
		p_restor(II);
		;
		;
		goto R999;
	}


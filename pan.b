	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* CLAIM p1 */
;
		;
		;
		;
		
	case 5: // STATE 22
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC :init: */

	case 6: // STATE 1
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 7: // STATE 2
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 8: // STATE 3
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 9: // STATE 4
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 10: // STATE 12
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

	case 11: // STATE 13
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 12: // STATE 14
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 13: // STATE 16
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC RailwayNetwork */

	case 14: // STATE 1
		;
		XX = 1;
		unrecv(now.shuttleRequests, XX-1, 0, ((P2 *)_this)->request.track, 1);
		unrecv(now.shuttleRequests, XX-1, 1, ((P2 *)_this)->request.direction, 0);
		unrecv(now.shuttleRequests, XX-1, 2, ((P2 *)_this)->request.id, 0);
		((P2 *)_this)->request.track = trpt->bup.ovals[0];
		((P2 *)_this)->request.direction = trpt->bup.ovals[1];
		((P2 *)_this)->request.id = trpt->bup.ovals[2];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 15: // STATE 2
		;
		;
		;
		goto R999;
;
		;
		;
		;
		
	case 18: // STATE 5
		;
		now.tracks.trackL2R[ Index(((P2 *)_this)->request.track, 4) ] = trpt->bup.oval;
		;
		goto R999;

	case 19: // STATE 6
		;
		((P2 *)_this)->reply.granted = trpt->bup.oval;
		;
		goto R999;

	case 20: // STATE 9
		;
		((P2 *)_this)->reply.granted = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 22: // STATE 15
		;
		now.tracks.trackR2L[ Index(((P2 *)_this)->request.track, 4) ] = trpt->bup.oval;
		;
		goto R999;

	case 23: // STATE 16
		;
		((P2 *)_this)->reply.granted = trpt->bup.oval;
		;
		goto R999;

	case 24: // STATE 19
		;
		((P2 *)_this)->reply.granted = trpt->bup.oval;
		;
		goto R999;

	case 25: // STATE 25
		;
		_m = unsend(now.railwayReplies[ Index(((P2 *)_this)->request.id, 4) ]);
		;
		goto R999;

	case 26: // STATE 29
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Shuttle */

	case 27: // STATE 1
		;
		now.currentLoad[ Index(((P1 *)_this)->id, 4) ] = trpt->bup.oval;
		;
		goto R999;

	case 28: // STATE 2
		;
		now.capacity[ Index(((P1 *)_this)->id, 4) ] = trpt->bup.oval;
		;
		goto R999;

	case 29: // STATE 5
		;
		((P1 *)_this)->processingOrder = trpt->bup.ovals[2];
		((P1 *)_this)->destination = trpt->bup.ovals[1];
		((P1 *)_this)->direction = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 30: // STATE 6
		;
		now.travelling[ Index(((P1 *)_this)->id, 4) ] = trpt->bup.oval;
		;
		goto R999;

	case 31: // STATE 7
		;
		XX = 1;
		unrecv(now.managementOrders[ Index(((P1 *)_this)->id, 4) ], XX-1, 0, ((P1 *)_this)->order.start, 1);
		unrecv(now.managementOrders[ Index(((P1 *)_this)->id, 4) ], XX-1, 1, ((P1 *)_this)->order.end, 0);
		unrecv(now.managementOrders[ Index(((P1 *)_this)->id, 4) ], XX-1, 2, ((P1 *)_this)->order.size, 0);
		((P1 *)_this)->order.start = trpt->bup.ovals[0];
		((P1 *)_this)->order.end = trpt->bup.ovals[1];
		((P1 *)_this)->order.size = trpt->bup.ovals[2];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 32: // STATE 9
		;
		((P1 *)_this)->currentPosition = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 34: // STATE 16
		;
		((P1 *)_this)->distance = trpt->bup.ovals[1];
		((P1 *)_this)->currentPosition = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 35: // STATE 16
		;
		((P1 *)_this)->distance = trpt->bup.ovals[1];
		((P1 *)_this)->currentPosition = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 36: // STATE 16
		;
		((P1 *)_this)->distance = trpt->bup.oval;
		;
		goto R999;

	case 37: // STATE 18
		;
		((P1 *)_this)->distance = trpt->bup.oval;
		;
		goto R999;

	case 38: // STATE 20
		;
		((P1 *)_this)->distance = trpt->bup.oval;
		;
		goto R999;

	case 39: // STATE 24
		;
		((P1 *)_this)->distance = trpt->bup.oval;
		;
		goto R999;

	case 40: // STATE 26
		;
		((P1 *)_this)->distance = trpt->bup.oval;
		;
		goto R999;
;
		
	case 41: // STATE 29
		goto R999;
;
		;
		
	case 43: // STATE 31
		;
		;
		;
		goto R999;

	case 44: // STATE 32
		;
	/* 0 */	((P1 *)_this)->distance = trpt->bup.oval;
		;
		;
		goto R999;

	case 45: // STATE 35
		;
		((P1 *)_this)->offer.refuse = trpt->bup.ovals[2];
		((P1 *)_this)->offer.charge = trpt->bup.ovals[1];
		((P1 *)_this)->offer.id = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 46: // STATE 40
		;
		((P1 *)_this)->offer.refuse = trpt->bup.ovals[2];
		((P1 *)_this)->offer.charge = trpt->bup.ovals[1];
		((P1 *)_this)->offer.id = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 47: // STATE 44
		;
		_m = unsend(now.shuttleOffers);
		;
		goto R999;

	case 48: // STATE 45
		;
		XX = 1;
		unrecv(now.managementOrders[ Index(((P1 *)_this)->id, 4) ], XX-1, 0, ((P1 *)_this)->order.start, 1);
		unrecv(now.managementOrders[ Index(((P1 *)_this)->id, 4) ], XX-1, 1, ((P1 *)_this)->order.end, 0);
		unrecv(now.managementOrders[ Index(((P1 *)_this)->id, 4) ], XX-1, 2, ((P1 *)_this)->order.size, 0);
		((P1 *)_this)->order.start = trpt->bup.ovals[0];
		((P1 *)_this)->order.end = trpt->bup.ovals[1];
		((P1 *)_this)->order.size = trpt->bup.ovals[2];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		
	case 50: // STATE 47
		;
		_m = unsend(((P1 *)_this)->orders);
		;
		goto R999;
;
		;
		
	case 52: // STATE 53
		;
	/* 0 */	((P1 *)_this)->processingOrder = trpt->bup.oval;
		;
		;
		goto R999;

	case 53: // STATE 54
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

	case 54: // STATE 56
		;
		((P1 *)_this)->destination = trpt->bup.ovals[1];
		((P1 *)_this)->processingOrder = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 55: // STATE 57
		;
		now.travelling[ Index(((P1 *)_this)->id, 4) ] = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 57: // STATE 60
		;
		((P1 *)_this)->direction = trpt->bup.oval;
		;
		goto R999;

	case 58: // STATE 63
		;
		((P1 *)_this)->direction = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 60: // STATE 69
		;
		((P1 *)_this)->nextStation = trpt->bup.ovals[1];
		((P1 *)_this)->nextStation = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 61: // STATE 82
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

	case 62: // STATE 82
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

	case 63: // STATE 82
		;
		;
		((P1 *)_this)->request.track = trpt->bup.ovals[2];
		((P1 *)_this)->request.direction = trpt->bup.ovals[1];
		((P1 *)_this)->request.id = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 64: // STATE 82
		;
		;
		((P1 *)_this)->request.track = trpt->bup.ovals[2];
		((P1 *)_this)->request.direction = trpt->bup.ovals[1];
		((P1 *)_this)->request.id = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 65: // STATE 84
		;
		_m = unsend(now.shuttleRequests);
		;
		goto R999;

	case 66: // STATE 85
		;
		XX = 1;
		unrecv(now.railwayReplies[ Index(((P1 *)_this)->id, 4) ], XX-1, 0, ((int)((P1 *)_this)->reply.granted), 1);
		((P1 *)_this)->reply.granted = trpt->bup.oval;
		;
		;
		goto R999;

	case 67: // STATE 96
		;
		((P1 *)_this)->currentStation = trpt->bup.oval;
		;
		goto R999;

	case 68: // STATE 96
		;
		((P1 *)_this)->currentStation = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 70: // STATE 98
		;
		now.tracks.trackL2R[ Index(((P1 *)_this)->request.track, 4) ] = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 72: // STATE 100
		;
		now.tracks.trackR2L[ Index(((P1 *)_this)->request.track, 4) ] = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 74: // STATE 104
		;
		now.travelling[ Index(((P1 *)_this)->id, 4) ] = trpt->bup.oval;
		;
		goto R999;

	case 75: // STATE 106
		;
		now.travelling[ Index(((P1 *)_this)->id, 4) ] = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 77: // STATE 110
		;
	/* 0 */	((P1 *)_this)->destination = trpt->bup.oval;
		;
		;
		goto R999;

	case 78: // STATE 112
		;
		now.currentLoad[ Index(((P1 *)_this)->id, 4) ] = trpt->bup.oval;
		;
		goto R999;

	case 79: // STATE 113
		;
		((P1 *)_this)->destination = trpt->bup.oval;
		;
		goto R999;

	case 80: // STATE 114
		;
		now.travelling[ Index(((P1 *)_this)->id, 4) ] = trpt->bup.oval;
		;
		goto R999;

	case 81: // STATE 116
		;
		((P1 *)_this)->direction = trpt->bup.oval;
		;
		goto R999;

	case 82: // STATE 119
		;
		((P1 *)_this)->direction = trpt->bup.oval;
		;
		goto R999;
;
		
	case 83: // STATE 123
		goto R999;

	case 84: // STATE 125
		;
		now.currentLoad[ Index(((P1 *)_this)->id, 4) ] = trpt->bup.oval;
		;
		goto R999;

	case 85: // STATE 126
		;
		((P1 *)_this)->processingOrder = trpt->bup.oval;
		;
		goto R999;

	case 86: // STATE 134
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC ShuttleManagementSystem */

	case 87: // STATE 8
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

	case 88: // STATE 11
		;
		((P0 *)_this)->_10_1_j = trpt->bup.ovals[1];
		((P0 *)_this)->_10_1_j = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		
	case 89: // STATE 12
		goto R999;

	case 90: // STATE 14
		;
		_m = unsend(now.managementOrders[ Index(((P0 *)_this)->_10_1_j, 4) ]);
		;
		goto R999;

	case 91: // STATE 15
		;
		((P0 *)_this)->_10_1_j = trpt->bup.oval;
		;
		goto R999;

	case 92: // STATE 23
		;
		((P0 *)_this)->_10_1_j = trpt->bup.ovals[2];
		((P0 *)_this)->_10_1_assignedId = trpt->bup.ovals[1];
		((P0 *)_this)->_10_1_minCharge = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 93: // STATE 25
		;
		;
		;
		goto R999;

	case 94: // STATE 27
		;
		XX = 1;
		unrecv(now.shuttleOffers, XX-1, 0, ((P0 *)_this)->_10_1_2_offer.id, 1);
		unrecv(now.shuttleOffers, XX-1, 1, ((P0 *)_this)->_10_1_2_offer.charge, 0);
		unrecv(now.shuttleOffers, XX-1, 2, ((int)((P0 *)_this)->_10_1_2_offer.refuse), 0);
		((P0 *)_this)->_10_1_2_offer.id = trpt->bup.ovals[0];
		((P0 *)_this)->_10_1_2_offer.charge = trpt->bup.ovals[1];
		((P0 *)_this)->_10_1_2_offer.refuse = trpt->bup.ovals[2];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 95: // STATE 36
		;
		((P0 *)_this)->_10_1_j = trpt->bup.ovals[3];
		((P0 *)_this)->_10_1_assignedId = trpt->bup.ovals[2];
		((P0 *)_this)->_10_1_minCharge = trpt->bup.ovals[1];
	/* 0 */	((P0 *)_this)->_10_1_minCharge = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 96: // STATE 36
		;
		((P0 *)_this)->_10_1_j = trpt->bup.ovals[2];
		((P0 *)_this)->_10_1_assignedId = trpt->bup.ovals[1];
		((P0 *)_this)->_10_1_minCharge = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 97: // STATE 36
		;
		((P0 *)_this)->_10_1_j = trpt->bup.oval;
		;
		goto R999;

	case 98: // STATE 43
		;
		((P0 *)_this)->_10_1_j = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 101: // STATE 46
		;
		_m = unsend(now.managementOrders[ Index(((P0 *)_this)->_10_1_j, 4) ]);
		;
		goto R999;

	case 102: // STATE 49
		;
		((P0 *)_this)->_10_1_3_dummy.size = trpt->bup.oval;
		;
		;
		goto R999;

	case 103: // STATE 50
		;
		_m = unsend(now.managementOrders[ Index(((P0 *)_this)->_10_1_j, 4) ]);
		;
		goto R999;

	case 104: // STATE 53
		;
		((P0 *)_this)->_10_1_j = trpt->bup.oval;
		;
		goto R999;

	case 105: // STATE 59
		;
		((P0 *)_this)->i = trpt->bup.oval;
		;
		goto R999;

	case 106: // STATE 65
		;
		p_restor(II);
		;
		;
		goto R999;
	}


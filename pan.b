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
		((P2 *)_this)->_7_3_second.size = trpt->bup.ovals[5];
		((P2 *)_this)->_7_3_second.end = trpt->bup.ovals[4];
		((P2 *)_this)->_7_3_second.start = trpt->bup.ovals[3];
		;
		((P2 *)_this)->_7_3_first.size = trpt->bup.ovals[2];
		((P2 *)_this)->_7_3_first.end = trpt->bup.ovals[1];
		((P2 *)_this)->_7_3_first.start = trpt->bup.ovals[0];
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

	case 9: // STATE 15
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Shuttle */

	case 10: // STATE 1
		;
		XX = 1;
		unrecv(now.managementToShuttle[ Index(((P1 *)_this)->id, 4) ], XX-1, 0, ((P1 *)_this)->order.start, 1);
		unrecv(now.managementToShuttle[ Index(((P1 *)_this)->id, 4) ], XX-1, 1, ((P1 *)_this)->order.end, 0);
		unrecv(now.managementToShuttle[ Index(((P1 *)_this)->id, 4) ], XX-1, 2, ((P1 *)_this)->order.size, 0);
		unrecv(now.managementToShuttle[ Index(((P1 *)_this)->id, 4) ], XX-1, 3, ((int)((P1 *)_this)->order.reject), 0);
		((P1 *)_this)->order.start = trpt->bup.ovals[0];
		((P1 *)_this)->order.end = trpt->bup.ovals[1];
		((P1 *)_this)->order.size = trpt->bup.ovals[2];
		((P1 *)_this)->order.reject = trpt->bup.ovals[3];
		;
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 11: // STATE 2
		;
		((P1 *)_this)->temp_station = trpt->bup.oval;
		;
		goto R999;

	case 12: // STATE 12
		;
		;
		((P1 *)_this)->station_distance = trpt->bup.ovals[3];
		((P1 *)_this)->distance_b = trpt->bup.ovals[2];
		((P1 *)_this)->distance_a = trpt->bup.ovals[1];
		((P1 *)_this)->temp_station = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 13: // STATE 12
		;
		;
		((P1 *)_this)->station_distance = trpt->bup.ovals[3];
		((P1 *)_this)->distance_b = trpt->bup.ovals[2];
		((P1 *)_this)->distance_a = trpt->bup.ovals[1];
		((P1 *)_this)->temp_station = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 14: // STATE 12
		;
		;
		((P1 *)_this)->station_distance = trpt->bup.ovals[2];
		((P1 *)_this)->distance_b = trpt->bup.ovals[1];
		((P1 *)_this)->distance_a = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 15: // STATE 16
		;
		((P1 *)_this)->offer.refuse = trpt->bup.ovals[3];
		((P1 *)_this)->offer.charge = trpt->bup.ovals[2];
		((P1 *)_this)->offer.id = trpt->bup.ovals[1];
	/* 0 */	((P1 *)_this)->station_distance = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 16: // STATE 20
		;
		((P1 *)_this)->offer.refuse = trpt->bup.ovals[2];
		((P1 *)_this)->offer.charge = trpt->bup.ovals[1];
		((P1 *)_this)->offer.id = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 17: // STATE 23
		;
		_m = unsend(now.shuttleToManagement);
		;
		goto R999;

	case 18: // STATE 24
		;
		XX = 1;
		unrecv(now.managementToShuttle[ Index(((P1 *)_this)->id, 4) ], XX-1, 0, ((P1 *)_this)->order.start, 1);
		unrecv(now.managementToShuttle[ Index(((P1 *)_this)->id, 4) ], XX-1, 1, ((P1 *)_this)->order.end, 0);
		unrecv(now.managementToShuttle[ Index(((P1 *)_this)->id, 4) ], XX-1, 2, ((P1 *)_this)->order.size, 0);
		unrecv(now.managementToShuttle[ Index(((P1 *)_this)->id, 4) ], XX-1, 3, ((int)((P1 *)_this)->order.reject), 0);
		((P1 *)_this)->order.start = trpt->bup.ovals[0];
		((P1 *)_this)->order.end = trpt->bup.ovals[1];
		((P1 *)_this)->order.size = trpt->bup.ovals[2];
		((P1 *)_this)->order.reject = trpt->bup.ovals[3];
		;
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;
;
		;
		
	case 20: // STATE 26
		;
		_m = unsend(((P1 *)_this)->orders);
		;
		goto R999;

	case 21: // STATE 34
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC ShuttleManagementSystem */

	case 22: // STATE 12
		;
		((P0 *)_this)->i = trpt->bup.ovals[11];
		((P0 *)_this)->i = trpt->bup.ovals[10];
		((P0 *)_this)->shuttle_charge = trpt->bup.ovals[9];
		((P0 *)_this)->shuttle_id = trpt->bup.ovals[8];
		((P0 *)_this)->min_id = trpt->bup.ovals[7];
		((P0 *)_this)->min_charge = trpt->bup.ovals[6];
		((P0 *)_this)->orders[1].size = trpt->bup.ovals[5];
		((P0 *)_this)->orders[1].end = trpt->bup.ovals[4];
		((P0 *)_this)->orders[1].start = trpt->bup.ovals[3];
		((P0 *)_this)->orders[0].size = trpt->bup.ovals[2];
		((P0 *)_this)->orders[0].end = trpt->bup.ovals[1];
		((P0 *)_this)->orders[0].start = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 12);
		goto R999;

	case 23: // STATE 16
		;
		((P0 *)_this)->_5_1_j = trpt->bup.ovals[1];
		((P0 *)_this)->_5_1_j = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 25: // STATE 18
		;
		_m = unsend(now.managementToShuttle[ Index(((P0 *)_this)->_5_1_j, 4) ]);
		;
		goto R999;

	case 26: // STATE 19
		;
		((P0 *)_this)->_5_1_j = trpt->bup.oval;
		;
		goto R999;

	case 27: // STATE 26
		;
		((P0 *)_this)->_5_1_j = trpt->bup.oval;
		;
		goto R999;

	case 28: // STATE 28
		;
		;
		;
		goto R999;

	case 29: // STATE 29
		;
		XX = 1;
		unrecv(now.shuttleToManagement, XX-1, 0, ((P0 *)_this)->_5_1_2_offer.id, 1);
		unrecv(now.shuttleToManagement, XX-1, 1, ((P0 *)_this)->_5_1_2_offer.charge, 0);
		unrecv(now.shuttleToManagement, XX-1, 2, ((int)((P0 *)_this)->_5_1_2_offer.refuse), 0);
		((P0 *)_this)->_5_1_2_offer.id = trpt->bup.ovals[0];
		((P0 *)_this)->_5_1_2_offer.charge = trpt->bup.ovals[1];
		((P0 *)_this)->_5_1_2_offer.refuse = trpt->bup.ovals[2];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 30: // STATE 37
		;
		((P0 *)_this)->_5_1_j = trpt->bup.ovals[3];
		((P0 *)_this)->min_id = trpt->bup.ovals[2];
		((P0 *)_this)->min_charge = trpt->bup.ovals[1];
	/* 0 */	((P0 *)_this)->min_charge = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 31: // STATE 37
		;
		((P0 *)_this)->_5_1_j = trpt->bup.oval;
		;
		goto R999;

	case 32: // STATE 37
		;
		((P0 *)_this)->_5_1_j = trpt->bup.oval;
		;
		goto R999;

	case 33: // STATE 44
		;
		((P0 *)_this)->_5_1_j = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 36: // STATE 47
		;
		_m = unsend(now.managementToShuttle[ Index(((P0 *)_this)->_5_1_j, 4) ]);
		;
		goto R999;

	case 37: // STATE 49
		;
		;
		;
		goto R999;

	case 38: // STATE 50
		;
		_m = unsend(now.managementToShuttle[ Index(((P0 *)_this)->_5_1_j, 4) ]);
		;
		goto R999;

	case 39: // STATE 53
		;
		((P0 *)_this)->_5_1_j = trpt->bup.oval;
		;
		goto R999;

	case 40: // STATE 59
		;
		((P0 *)_this)->i = trpt->bup.oval;
		;
		goto R999;

	case 41: // STATE 65
		;
		p_restor(II);
		;
		;
		goto R999;
	}


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
		((P2 *)_this)->_7_3_second.end = trpt->bup.ovals[5];
		((P2 *)_this)->_7_3_second.start = trpt->bup.ovals[4];
		((P2 *)_this)->_7_3_second.size = trpt->bup.ovals[3];
		;
		((P2 *)_this)->_7_3_first.end = trpt->bup.ovals[2];
		((P2 *)_this)->_7_3_first.start = trpt->bup.ovals[1];
		((P2 *)_this)->_7_3_first.size = trpt->bup.ovals[0];
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
		((P1 *)_this)->order.start = trpt->bup.ovals[0];
		((P1 *)_this)->order.end = trpt->bup.ovals[1];
		((P1 *)_this)->order.size = trpt->bup.ovals[2];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 11: // STATE 2
		;
		((P1 *)_this)->currentPosition = trpt->bup.oval;
		;
		goto R999;

	case 12: // STATE 9
		;
		((P1 *)_this)->distance = trpt->bup.ovals[1];
		((P1 *)_this)->currentPosition = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 13: // STATE 9
		;
		((P1 *)_this)->distance = trpt->bup.ovals[1];
		((P1 *)_this)->currentPosition = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 14: // STATE 9
		;
		((P1 *)_this)->distance = trpt->bup.oval;
		;
		goto R999;

	case 15: // STATE 11
		;
		((P1 *)_this)->distance = trpt->bup.oval;
		;
		goto R999;

	case 16: // STATE 13
		;
		((P1 *)_this)->distance = trpt->bup.oval;
		;
		goto R999;

	case 17: // STATE 22
		;
		;
		((P1 *)_this)->distance = trpt->bup.oval;
		;
		goto R999;

	case 18: // STATE 22
		;
		;
		((P1 *)_this)->distance = trpt->bup.oval;
		;
		goto R999;

	case 19: // STATE 22
		;
		;
		;
		goto R999;

	case 20: // STATE 26
		;
		((P1 *)_this)->offer.refuse = trpt->bup.ovals[3];
		((P1 *)_this)->offer.charge = trpt->bup.ovals[2];
		((P1 *)_this)->offer.id = trpt->bup.ovals[1];
	/* 0 */	((P1 *)_this)->distance = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 21: // STATE 30
		;
		((P1 *)_this)->offer.refuse = trpt->bup.ovals[2];
		((P1 *)_this)->offer.charge = trpt->bup.ovals[1];
		((P1 *)_this)->offer.id = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 22: // STATE 33
		;
		_m = unsend(now.shuttleToManagement);
		;
		goto R999;

	case 23: // STATE 34
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
		
	case 25: // STATE 36
		;
		_m = unsend(((P1 *)_this)->orders);
		;
		goto R999;

	case 26: // STATE 44
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC ShuttleManagementSystem */

	case 27: // STATE 8
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

	case 28: // STATE 12
		;
		((P0 *)_this)->_5_1_j = trpt->bup.ovals[1];
		((P0 *)_this)->_5_1_j = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 30: // STATE 14
		;
		_m = unsend(now.managementToShuttle[ Index(((P0 *)_this)->_5_1_j, 4) ]);
		;
		goto R999;

	case 31: // STATE 15
		;
		((P0 *)_this)->_5_1_j = trpt->bup.oval;
		;
		goto R999;

	case 32: // STATE 23
		;
		((P0 *)_this)->_5_1_j = trpt->bup.ovals[2];
		((P0 *)_this)->_5_1_assignedId = trpt->bup.ovals[1];
		((P0 *)_this)->_5_1_minCharge = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 33: // STATE 25
		;
		;
		;
		goto R999;

	case 34: // STATE 26
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

	case 35: // STATE 34
		;
		((P0 *)_this)->_5_1_j = trpt->bup.ovals[3];
		((P0 *)_this)->_5_1_assignedId = trpt->bup.ovals[2];
		((P0 *)_this)->_5_1_minCharge = trpt->bup.ovals[1];
	/* 0 */	((P0 *)_this)->_5_1_minCharge = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 36: // STATE 34
		;
		((P0 *)_this)->_5_1_j = trpt->bup.oval;
		;
		goto R999;

	case 37: // STATE 34
		;
		((P0 *)_this)->_5_1_j = trpt->bup.oval;
		;
		goto R999;

	case 38: // STATE 41
		;
		((P0 *)_this)->_5_1_j = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 41: // STATE 44
		;
		_m = unsend(now.managementToShuttle[ Index(((P0 *)_this)->_5_1_j, 4) ]);
		;
		goto R999;

	case 42: // STATE 47
		;
		((P0 *)_this)->_5_1_3_dummy.size = trpt->bup.oval;
		;
		;
		goto R999;

	case 43: // STATE 48
		;
		_m = unsend(now.managementToShuttle[ Index(((P0 *)_this)->_5_1_j, 4) ]);
		;
		goto R999;

	case 44: // STATE 51
		;
		((P0 *)_this)->_5_1_j = trpt->bup.oval;
		;
		goto R999;

	case 45: // STATE 57
		;
		((P0 *)_this)->i = trpt->bup.oval;
		;
		goto R999;

	case 46: // STATE 63
		;
		p_restor(II);
		;
		;
		goto R999;
	}


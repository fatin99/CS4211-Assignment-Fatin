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

	case 8: // STATE 6
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 9: // STATE 8
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC ControlPanel */

	case 10: // STATE 1
		;
		XX = 1;
		unrecv(now.cmAbleWcp, XX-1, 0, now.able, 1);
		now.able = trpt->bup.oval;
		;
		;
		goto R999;
;
		;
		
	case 12: // STATE 3
		;
		((P2 *)_this)->disabled = trpt->bup.oval;
		;
		goto R999;

	case 13: // STATE 5
		;
		((P2 *)_this)->disabled = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 14: // STATE 11
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC CommsManager */

	case 15: // STATE 1
		;
		XX = 1;
		unrecv(now.cmConnectRequest, XX-1, 0, ((P1 *)_this)->id, 1);
		((P1 *)_this)->id = trpt->bup.oval;
		;
		;
		goto R999;

	case 16: // STATE 2
		;
		((P1 *)_this)->reply = trpt->bup.oval;
		;
		goto R999;

	case 17: // STATE 5
		;
		((P1 *)_this)->initStatus = trpt->bup.ovals[1];
		((P1 *)_this)->reply = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 18: // STATE 6
		;
		_m = unsend(((P1 *)_this)->connectedClients);
		;
		goto R999;

	case 19: // STATE 7
		;
		now.able = trpt->bup.oval;
		;
		goto R999;

	case 20: // STATE 8
		;
		_m = unsend(now.cmAbleWcp);
		;
		goto R999;

	case 21: // STATE 10
		;
		((P1 *)_this)->reply = trpt->bup.oval;
		;
		goto R999;

	case 22: // STATE 13
		;
		_m = unsend(now.cmConnectReply[ Index(((P1 *)_this)->id, 4) ]);
		;
		goto R999;

	case 23: // STATE 14
		;
		((P1 *)_this)->initStatus = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 24: // STATE 15
		;
		_m = unsend(now.cmCommand[ Index(((P1 *)_this)->id, 4) ]);
		;
		goto R999;

	case 25: // STATE 16
		;
		((P1 *)_this)->initStatus = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 26: // STATE 17
		;
		((P1 *)_this)->initStatus = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 27: // STATE 18
		;
		XX = 1;
		unrecv(now.clientReport, XX-1, 0, ((P1 *)_this)->reportStatus, 1);
		unrecv(now.clientReport, XX-1, 1, ((P1 *)_this)->id, 0);
		((P1 *)_this)->reportStatus = trpt->bup.ovals[0];
		((P1 *)_this)->id = trpt->bup.ovals[1];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 28: // STATE 19
		;
	/* 0 */	((P1 *)_this)->reportStatus = trpt->bup.oval;
		;
		;
		goto R999;

	case 29: // STATE 20
		;
		_m = unsend(now.cmCommand[ Index(((P1 *)_this)->id, 4) ]);
		;
		goto R999;

	case 30: // STATE 21
		;
		((P1 *)_this)->initStatus = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 31: // STATE 22
		;
	/* 0 */	((P1 *)_this)->reportStatus = trpt->bup.oval;
		;
		;
		goto R999;

	case 32: // STATE 23
		;
		XX = 1;
		unrecv(((P1 *)_this)->connectedClients, XX-1, 0, ((P1 *)_this)->id, 1);
		((P1 *)_this)->id = trpt->bup.oval;
		;
		;
		goto R999;

	case 33: // STATE 24
		;
		((P1 *)_this)->initStatus = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 34: // STATE 27
		;
		((P1 *)_this)->initStatus = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 35: // STATE 28
		;
		XX = 1;
		unrecv(now.clientReport, XX-1, 0, ((P1 *)_this)->reportStatus, 1);
		unrecv(now.clientReport, XX-1, 1, ((P1 *)_this)->id, 0);
		((P1 *)_this)->reportStatus = trpt->bup.ovals[0];
		((P1 *)_this)->id = trpt->bup.ovals[1];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 36: // STATE 29
		;
		((P1 *)_this)->ability = trpt->bup.oval;
		;
		goto R999;

	case 37: // STATE 32
		;
		((P1 *)_this)->ability = trpt->bup.ovals[2];
		((P1 *)_this)->initStatus = trpt->bup.ovals[1];
	/* 0 */	((P1 *)_this)->reportStatus = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 5);
		goto R999;

	case 38: // STATE 33
		;
		_m = unsend(now.cmAbleWcp);
		;
		goto R999;

	case 39: // STATE 34
		;
	/* 0 */	((P1 *)_this)->reportStatus = trpt->bup.oval;
		;
		;
		goto R999;

	case 40: // STATE 35
		;
		XX = 1;
		unrecv(((P1 *)_this)->connectedClients, XX-1, 0, ((P1 *)_this)->id, 1);
		((P1 *)_this)->id = trpt->bup.oval;
		;
		;
		goto R999;

	case 41: // STATE 37
		;
		((P1 *)_this)->ability = trpt->bup.ovals[1];
		((P1 *)_this)->initStatus = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 42: // STATE 38
		;
		_m = unsend(now.cmAbleWcp);
		;
		goto R999;

	case 43: // STATE 44
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Client */

	case 44: // STATE 1
		;
		_m = unsend(now.cmConnectRequest);
		;
		goto R999;

	case 45: // STATE 2
		;
		XX = 1;
		unrecv(now.cmConnectReply[ Index(((P0 *)_this)->id, 4) ], XX-1, 0, ((P0 *)_this)->reply, 1);
		((P0 *)_this)->reply = trpt->bup.oval;
		;
		;
		goto R999;

	case 46: // STATE 5
		;
		((P0 *)_this)->connected = trpt->bup.ovals[2];
		((P0 *)_this)->initStatus = trpt->bup.ovals[1];
	/* 0 */	((P0 *)_this)->reply = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 5);
		goto R999;

	case 47: // STATE 10
		;
		((P0 *)_this)->initStatus = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 48: // STATE 11
		;
		XX = 1;
		unrecv(now.cmCommand[ Index(((P0 *)_this)->id, 4) ], XX-1, 0, 2, 1);
		;
		;
		goto R999;

	case 49: // STATE 12
		;
		((P0 *)_this)->initStatus = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 50: // STATE 13
		;
		((P0 *)_this)->initStatus = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 52: // STATE 15
		;
		_m = unsend(now.clientReport);
		;
		goto R999;

	case 53: // STATE 16
		;
		XX = 1;
		unrecv(now.cmCommand[ Index(((P0 *)_this)->id, 4) ], XX-1, 0, 1, 1);
		;
		;
		goto R999;

	case 54: // STATE 17
		;
		((P0 *)_this)->initStatus = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 55: // STATE 20
		;
		((P0 *)_this)->initStatus = trpt->bup.ovals[1];
		((P0 *)_this)->connected = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 56: // STATE 23
		;
		((P0 *)_this)->initStatus = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 58: // STATE 25
		;
		_m = unsend(now.clientReport);
		;
		goto R999;

	case 59: // STATE 26
		;
		((P0 *)_this)->initStatus = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 60: // STATE 29
		;
		((P0 *)_this)->initStatus = trpt->bup.ovals[1];
		((P0 *)_this)->connected = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 61: // STATE 35
		;
		p_restor(II);
		;
		;
		goto R999;
	}


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
		unrecv(now.cmAbleWcp, XX-1, 0, ((P2 *)_this)->ability, 1);
		((P2 *)_this)->ability = trpt->bup.oval;
		;
		;
		goto R999;

	case 11: // STATE 3
		;
		((P2 *)_this)->disabled = trpt->bup.ovals[1];
	/* 0 */	((P2 *)_this)->ability = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 12: // STATE 5
		;
		((P2 *)_this)->disabled = trpt->bup.oval;
		;
		goto R999;

	case 13: // STATE 9
		;
		((P2 *)_this)->button = trpt->bup.oval;
		;
		goto R999;

	case 14: // STATE 10
		;
		_m = unsend(now.wcpRequest);
		;
		goto R999;

	case 15: // STATE 14
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC CommsManager */
;
		;
		
	case 17: // STATE 2
		;
		XX = 1;
		unrecv(now.cmConnectRequest, XX-1, 0, ((P1 *)_this)->id, 1);
		((P1 *)_this)->id = trpt->bup.oval;
		;
		;
		goto R999;

	case 18: // STATE 3
		;
		((P1 *)_this)->reply = trpt->bup.oval;
		;
		goto R999;

	case 19: // STATE 6
		;
		((P1 *)_this)->currStatus = trpt->bup.ovals[2];
		((P1 *)_this)->reply = trpt->bup.ovals[1];
	/* 0 */	((P1 *)_this)->currStatus = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 20: // STATE 7
		;
		_m = unsend(((P1 *)_this)->connectedClients);
		;
		goto R999;

	case 21: // STATE 8
		;
		_m = unsend(now.cmAbleWcp);
		;
		goto R999;

	case 22: // STATE 10
		;
		((P1 *)_this)->reply = trpt->bup.oval;
		;
		goto R999;

	case 23: // STATE 13
		;
		_m = unsend(now.cmConnectReply[ Index(((P1 *)_this)->id, 4) ]);
		;
		goto R999;

	case 24: // STATE 14
		;
	/* 0 */	((P1 *)_this)->currStatus = trpt->bup.oval;
		;
		;
		goto R999;

	case 25: // STATE 15
		;
		_m = unsend(now.cmCommand[ Index(((P1 *)_this)->id, 4) ]);
		;
		goto R999;

	case 26: // STATE 16
		;
		((P1 *)_this)->currStatus = trpt->bup.oval;
		;
		goto R999;

	case 27: // STATE 17
		;
	/* 0 */	((P1 *)_this)->currStatus = trpt->bup.oval;
		;
		;
		goto R999;

	case 28: // STATE 18
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

	case 29: // STATE 19
		;
	/* 0 */	((P1 *)_this)->reportStatus = trpt->bup.oval;
		;
		;
		goto R999;

	case 30: // STATE 20
		;
		_m = unsend(now.cmCommand[ Index(((P1 *)_this)->id, 4) ]);
		;
		goto R999;

	case 31: // STATE 21
		;
		((P1 *)_this)->currStatus = trpt->bup.oval;
		;
		goto R999;

	case 32: // STATE 22
		;
	/* 0 */	((P1 *)_this)->reportStatus = trpt->bup.oval;
		;
		;
		goto R999;

	case 33: // STATE 23
		;
		XX = 1;
		unrecv(((P1 *)_this)->connectedClients, XX-1, 0, ((P1 *)_this)->id, 1);
		((P1 *)_this)->id = trpt->bup.oval;
		;
		;
		goto R999;

	case 34: // STATE 24
		;
		((P1 *)_this)->currStatus = trpt->bup.oval;
		;
		goto R999;

	case 35: // STATE 27
		;
	/* 0 */	((P1 *)_this)->currStatus = trpt->bup.oval;
		;
		;
		goto R999;

	case 36: // STATE 28
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

	case 37: // STATE 30
		;
		((P1 *)_this)->currStatus = trpt->bup.ovals[1];
	/* 0 */	((P1 *)_this)->reportStatus = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 38: // STATE 31
		;
		_m = unsend(now.cmAbleWcp);
		;
		goto R999;

	case 39: // STATE 32
		;
	/* 0 */	((P1 *)_this)->reportStatus = trpt->bup.oval;
		;
		;
		goto R999;

	case 40: // STATE 33
		;
		XX = 1;
		unrecv(((P1 *)_this)->connectedClients, XX-1, 0, ((P1 *)_this)->id, 1);
		((P1 *)_this)->id = trpt->bup.oval;
		;
		;
		goto R999;

	case 41: // STATE 34
		;
		((P1 *)_this)->currStatus = trpt->bup.oval;
		;
		goto R999;

	case 42: // STATE 35
		;
		_m = unsend(now.cmAbleWcp);
		;
		goto R999;

	case 43: // STATE 38
		;
	/* 0 */	((P1 *)_this)->currStatus = trpt->bup.oval;
		;
		;
		goto R999;

	case 44: // STATE 39
		;
	/* 0 */	((P1 *)_this)->button = trpt->bup.ovals[1];
		XX = 1;
		unrecv(now.wcpRequest, XX-1, 0, ((P1 *)_this)->button, 1);
		((P1 *)_this)->button = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 45: // STATE 40
		;
		((P1 *)_this)->currStatus = trpt->bup.oval;
		;
		goto R999;

	case 46: // STATE 41
		;
		_m = unsend(now.cmAbleWcp);
		;
		goto R999;

	case 47: // STATE 43
		;
		((P1 *)_this)->i = trpt->bup.ovals[1];
	/* 0 */	((P1 *)_this)->currStatus = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 49: // STATE 45
		;
		_m = unsend(now.cmCommand[ Index(((P1 *)_this)->i, 4) ]);
		;
		goto R999;

	case 50: // STATE 46
		;
		((P1 *)_this)->i = trpt->bup.oval;
		;
		goto R999;

	case 51: // STATE 52
		;
		((P1 *)_this)->currStatus = trpt->bup.oval;
		;
		goto R999;

	case 52: // STATE 55
		;
		((P1 *)_this)->i = trpt->bup.ovals[2];
		((P1 *)_this)->hasFail = trpt->bup.ovals[1];
	/* 0 */	((P1 *)_this)->currStatus = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		
	case 54: // STATE 57
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

	case 55: // STATE 64
		;
		((P1 *)_this)->i = trpt->bup.ovals[2];
		((P1 *)_this)->hasFail = trpt->bup.ovals[1];
	/* 0 */	((P1 *)_this)->reportStatus = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 56: // STATE 64
		;
		((P1 *)_this)->i = trpt->bup.oval;
		;
		goto R999;

	case 57: // STATE 64
		;
		((P1 *)_this)->i = trpt->bup.oval;
		;
		goto R999;

	case 58: // STATE 71
		;
		((P1 *)_this)->i = trpt->bup.ovals[1];
	/* 0 */	((P1 *)_this)->hasFail = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 60: // STATE 73
		;
		_m = unsend(now.cmCommand[ Index(((P1 *)_this)->i, 4) ]);
		;
		goto R999;

	case 61: // STATE 74
		;
		((P1 *)_this)->i = trpt->bup.oval;
		;
		goto R999;

	case 62: // STATE 80
		;
		((P1 *)_this)->currStatus = trpt->bup.oval;
		;
		goto R999;

	case 63: // STATE 82
		;
		((P1 *)_this)->i = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 65: // STATE 84
		;
		_m = unsend(now.cmCommand[ Index(((P1 *)_this)->i, 4) ]);
		;
		goto R999;

	case 66: // STATE 85
		;
		((P1 *)_this)->i = trpt->bup.oval;
		;
		goto R999;

	case 67: // STATE 91
		;
		((P1 *)_this)->currStatus = trpt->bup.oval;
		;
		goto R999;

	case 68: // STATE 96
		;
		((P1 *)_this)->i = trpt->bup.ovals[2];
		((P1 *)_this)->hasFail = trpt->bup.ovals[1];
	/* 0 */	((P1 *)_this)->currStatus = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		
	case 70: // STATE 98
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

	case 71: // STATE 105
		;
		((P1 *)_this)->i = trpt->bup.ovals[2];
		((P1 *)_this)->hasFail = trpt->bup.ovals[1];
	/* 0 */	((P1 *)_this)->reportStatus = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 72: // STATE 105
		;
		((P1 *)_this)->i = trpt->bup.oval;
		;
		goto R999;

	case 73: // STATE 105
		;
		((P1 *)_this)->i = trpt->bup.oval;
		;
		goto R999;

	case 74: // STATE 112
		;
		((P1 *)_this)->currStatus = trpt->bup.ovals[1];
	/* 0 */	((P1 *)_this)->hasFail = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 75: // STATE 113
		;
		_m = unsend(now.cmAbleWcp);
		;
		goto R999;

	case 76: // STATE 115
		;
		((P1 *)_this)->currStatus = trpt->bup.oval;
		;
		goto R999;

	case 77: // STATE 116
		;
		_m = unsend(now.cmAbleWcp);
		;
		goto R999;

	case 78: // STATE 121
		;
		((P1 *)_this)->i = trpt->bup.ovals[2];
		((P1 *)_this)->hasFail = trpt->bup.ovals[1];
	/* 0 */	((P1 *)_this)->currStatus = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		
	case 80: // STATE 123
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

	case 81: // STATE 130
		;
		((P1 *)_this)->i = trpt->bup.ovals[2];
		((P1 *)_this)->hasFail = trpt->bup.ovals[1];
	/* 0 */	((P1 *)_this)->reportStatus = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 82: // STATE 130
		;
		((P1 *)_this)->i = trpt->bup.oval;
		;
		goto R999;

	case 83: // STATE 130
		;
		((P1 *)_this)->i = trpt->bup.oval;
		;
		goto R999;

	case 84: // STATE 137
		;
		((P1 *)_this)->currStatus = trpt->bup.ovals[1];
	/* 0 */	((P1 *)_this)->hasFail = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 85: // STATE 138
		;
		_m = unsend(now.cmAbleWcp);
		;
		goto R999;

	case 86: // STATE 140
		;
		((P1 *)_this)->currStatus = trpt->bup.oval;
		;
		goto R999;

	case 87: // STATE 141
		;
		_m = unsend(now.cmAbleWcp);
		;
		goto R999;

	case 88: // STATE 147
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Client */
;
		;
		
	case 90: // STATE 2
		;
		_m = unsend(now.cmConnectRequest);
		;
		goto R999;

	case 91: // STATE 3
		;
		XX = 1;
		unrecv(now.cmConnectReply[ Index(((P0 *)_this)->id, 4) ], XX-1, 0, ((P0 *)_this)->reply, 1);
		((P0 *)_this)->reply = trpt->bup.oval;
		;
		;
		goto R999;

	case 92: // STATE 6
		;
		((P0 *)_this)->connected = trpt->bup.ovals[2];
		((P0 *)_this)->currStatus = trpt->bup.ovals[1];
	/* 0 */	((P0 *)_this)->reply = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 93: // STATE 11
		;
	/* 0 */	((P0 *)_this)->currStatus = trpt->bup.oval;
		;
		;
		goto R999;

	case 94: // STATE 12
		;
		XX = 1;
		unrecv(now.cmCommand[ Index(((P0 *)_this)->id, 4) ], XX-1, 0, 3, 1);
		;
		;
		goto R999;

	case 95: // STATE 13
		;
		((P0 *)_this)->currStatus = trpt->bup.oval;
		;
		goto R999;

	case 96: // STATE 14
		;
	/* 0 */	((P0 *)_this)->currStatus = trpt->bup.oval;
		;
		;
		goto R999;
;
		;
		
	case 98: // STATE 16
		;
		_m = unsend(now.clientReport);
		;
		goto R999;

	case 99: // STATE 17
		;
		XX = 1;
		unrecv(now.cmCommand[ Index(((P0 *)_this)->id, 4) ], XX-1, 0, 2, 1);
		;
		;
		goto R999;

	case 100: // STATE 18
		;
		((P0 *)_this)->currStatus = trpt->bup.oval;
		;
		goto R999;

	case 101: // STATE 20
		;
		_m = unsend(now.clientReport);
		;
		goto R999;

	case 102: // STATE 22
		;
		((P0 *)_this)->connected = trpt->bup.ovals[1];
		((P0 *)_this)->currStatus = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 103: // STATE 25
		;
	/* 0 */	((P0 *)_this)->currStatus = trpt->bup.oval;
		;
		;
		goto R999;
;
		;
		
	case 105: // STATE 27
		;
		_m = unsend(now.clientReport);
		;
		goto R999;

	case 106: // STATE 28
		;
		((P0 *)_this)->currStatus = trpt->bup.oval;
		;
		goto R999;

	case 107: // STATE 30
		;
		_m = unsend(now.clientReport);
		;
		goto R999;

	case 108: // STATE 32
		;
		((P0 *)_this)->currStatus = trpt->bup.ovals[1];
		((P0 *)_this)->connected = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 109: // STATE 35
		;
	/* 0 */	((P0 *)_this)->currStatus = trpt->bup.oval;
		;
		;
		goto R999;

	case 110: // STATE 36
		;
		((P0 *)_this)->currStatus = trpt->bup.oval;
		;
		goto R999;

	case 111: // STATE 37
		;
	/* 0 */	((P0 *)_this)->currStatus = trpt->bup.oval;
		;
		;
		goto R999;

	case 112: // STATE 38
		;
		XX = 1;
		unrecv(now.cmCommand[ Index(((P0 *)_this)->id, 4) ], XX-1, 0, 3, 1);
		;
		;
		goto R999;

	case 113: // STATE 39
		;
		((P0 *)_this)->currStatus = trpt->bup.oval;
		;
		goto R999;

	case 114: // STATE 40
		;
	/* 0 */	((P0 *)_this)->currStatus = trpt->bup.oval;
		;
		;
		goto R999;
;
		;
		
	case 116: // STATE 42
		;
		_m = unsend(now.clientReport);
		;
		goto R999;

	case 117: // STATE 43
		;
		XX = 1;
		unrecv(now.cmCommand[ Index(((P0 *)_this)->id, 4) ], XX-1, 0, 2, 1);
		;
		;
		goto R999;

	case 118: // STATE 44
		;
		((P0 *)_this)->currStatus = trpt->bup.oval;
		;
		goto R999;

	case 119: // STATE 46
		;
		_m = unsend(now.clientReport);
		;
		goto R999;

	case 120: // STATE 47
		;
		XX = 1;
		unrecv(now.cmCommand[ Index(((P0 *)_this)->id, 4) ], XX-1, 0, 1, 1);
		;
		;
		goto R999;

	case 121: // STATE 48
		;
		((P0 *)_this)->currStatus = trpt->bup.oval;
		;
		goto R999;

	case 122: // STATE 51
		;
	/* 0 */	((P0 *)_this)->currStatus = trpt->bup.oval;
		;
		;
		goto R999;
;
		;
		
	case 124: // STATE 53
		;
		_m = unsend(now.clientReport);
		;
		goto R999;

	case 125: // STATE 54
		;
		((P0 *)_this)->currStatus = trpt->bup.oval;
		;
		goto R999;

	case 126: // STATE 56
		;
		_m = unsend(now.clientReport);
		;
		goto R999;

	case 127: // STATE 58
		;
		((P0 *)_this)->currStatus = trpt->bup.ovals[1];
		((P0 *)_this)->connected = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 128: // STATE 61
		;
	/* 0 */	((P0 *)_this)->currStatus = trpt->bup.oval;
		;
		;
		goto R999;
;
		;
		
	case 130: // STATE 63
		;
		_m = unsend(now.clientReport);
		;
		goto R999;

	case 131: // STATE 64
		;
		((P0 *)_this)->currStatus = trpt->bup.oval;
		;
		goto R999;

	case 132: // STATE 66
		;
		_m = unsend(now.clientReport);
		;
		goto R999;

	case 133: // STATE 68
		;
		((P0 *)_this)->currStatus = trpt->bup.ovals[1];
		((P0 *)_this)->connected = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 134: // STATE 74
		;
		p_restor(II);
		;
		;
		goto R999;
	}


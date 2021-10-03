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

	case 16: // STATE 1
		;
		((P1 *)_this)->i = trpt->bup.oval;
		;
		goto R999;

	case 17: // STATE 4
		;
		((P1 *)_this)->i = trpt->bup.ovals[1];
		((P1 *)_this)->connectedClients[ Index(((P1 *)_this)->i, 4) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 18: // STATE 12
		;
		((P1 *)_this)->button = trpt->bup.ovals[2];
		((P1 *)_this)->reportStatus = trpt->bup.ovals[1];
		((P1 *)_this)->currStatus = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		
	case 20: // STATE 14
		;
		XX = 1;
		unrecv(now.cmConnectRequest, XX-1, 0, ((P1 *)_this)->id, 1);
		((P1 *)_this)->id = trpt->bup.oval;
		;
		;
		goto R999;

	case 21: // STATE 15
		;
		((P1 *)_this)->reply = trpt->bup.oval;
		;
		goto R999;

	case 22: // STATE 19
		;
		((P1 *)_this)->connectedClients[ Index(((P1 *)_this)->id, 4) ] = trpt->bup.ovals[3];
		((P1 *)_this)->currStatus = trpt->bup.ovals[2];
		((P1 *)_this)->reply = trpt->bup.ovals[1];
	/* 0 */	((P1 *)_this)->currStatus = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 23: // STATE 20
		;
		_m = unsend(now.cmAbleWcp);
		;
		goto R999;

	case 24: // STATE 22
		;
		((P1 *)_this)->reply = trpt->bup.oval;
		;
		goto R999;

	case 25: // STATE 25
		;
		_m = unsend(now.cmConnectReply[ Index(((P1 *)_this)->id, 4) ]);
		;
		goto R999;

	case 26: // STATE 26
		;
	/* 0 */	((P1 *)_this)->currStatus = trpt->bup.oval;
		;
		;
		goto R999;

	case 27: // STATE 27
		;
		_m = unsend(now.cmCommand[ Index(((P1 *)_this)->id, 4) ]);
		;
		goto R999;

	case 28: // STATE 28
		;
		((P1 *)_this)->currStatus = trpt->bup.oval;
		;
		goto R999;

	case 29: // STATE 29
		;
	/* 0 */	((P1 *)_this)->currStatus = trpt->bup.oval;
		;
		;
		goto R999;

	case 30: // STATE 30
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

	case 31: // STATE 31
		;
	/* 0 */	((P1 *)_this)->reportStatus = trpt->bup.oval;
		;
		;
		goto R999;

	case 32: // STATE 32
		;
		_m = unsend(now.cmCommand[ Index(((P1 *)_this)->id, 4) ]);
		;
		goto R999;

	case 33: // STATE 33
		;
		((P1 *)_this)->currStatus = trpt->bup.oval;
		;
		goto R999;

	case 34: // STATE 36
		;
		((P1 *)_this)->currStatus = trpt->bup.ovals[2];
		((P1 *)_this)->connectedClients[ Index(((P1 *)_this)->id, 4) ] = trpt->bup.ovals[1];
	/* 0 */	((P1 *)_this)->reportStatus = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 35: // STATE 39
		;
	/* 0 */	((P1 *)_this)->currStatus = trpt->bup.oval;
		;
		;
		goto R999;

	case 36: // STATE 40
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

	case 37: // STATE 42
		;
		((P1 *)_this)->currStatus = trpt->bup.ovals[1];
	/* 0 */	((P1 *)_this)->reportStatus = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 38: // STATE 43
		;
		_m = unsend(now.cmAbleWcp);
		;
		goto R999;

	case 39: // STATE 46
		;
		((P1 *)_this)->currStatus = trpt->bup.ovals[2];
		((P1 *)_this)->connectedClients[ Index(((P1 *)_this)->id, 4) ] = trpt->bup.ovals[1];
	/* 0 */	((P1 *)_this)->reportStatus = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 40: // STATE 47
		;
		_m = unsend(now.cmAbleWcp);
		;
		goto R999;

	case 41: // STATE 50
		;
	/* 0 */	((P1 *)_this)->currStatus = trpt->bup.oval;
		;
		;
		goto R999;

	case 42: // STATE 51
		;
	/* 0 */	((P1 *)_this)->button = trpt->bup.ovals[1];
		XX = 1;
		unrecv(now.wcpRequest, XX-1, 0, ((P1 *)_this)->button, 1);
		((P1 *)_this)->button = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 43: // STATE 52
		;
		((P1 *)_this)->currStatus = trpt->bup.oval;
		;
		goto R999;

	case 44: // STATE 53
		;
		_m = unsend(now.cmAbleWcp);
		;
		goto R999;

	case 45: // STATE 55
		;
		((P1 *)_this)->i = trpt->bup.ovals[1];
	/* 0 */	((P1 *)_this)->currStatus = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 47: // STATE 57
		;
		_m = unsend(now.cmCommand[ Index(((P1 *)_this)->i, 4) ]);
		;
		goto R999;

	case 48: // STATE 58
		;
		((P1 *)_this)->i = trpt->bup.oval;
		;
		goto R999;

	case 49: // STATE 64
		;
		((P1 *)_this)->currStatus = trpt->bup.oval;
		;
		goto R999;

	case 50: // STATE 67
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
		
	case 52: // STATE 69
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

	case 53: // STATE 76
		;
		((P1 *)_this)->i = trpt->bup.ovals[2];
		((P1 *)_this)->hasFail = trpt->bup.ovals[1];
	/* 0 */	((P1 *)_this)->reportStatus = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 54: // STATE 76
		;
		((P1 *)_this)->i = trpt->bup.oval;
		;
		goto R999;

	case 55: // STATE 76
		;
		((P1 *)_this)->i = trpt->bup.oval;
		;
		goto R999;

	case 56: // STATE 83
		;
		((P1 *)_this)->i = trpt->bup.ovals[1];
	/* 0 */	((P1 *)_this)->hasFail = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 58: // STATE 85
		;
		_m = unsend(now.cmCommand[ Index(((P1 *)_this)->i, 4) ]);
		;
		goto R999;

	case 59: // STATE 86
		;
		((P1 *)_this)->i = trpt->bup.oval;
		;
		goto R999;

	case 60: // STATE 92
		;
		((P1 *)_this)->currStatus = trpt->bup.oval;
		;
		goto R999;

	case 61: // STATE 94
		;
		((P1 *)_this)->i = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 63: // STATE 96
		;
		_m = unsend(now.cmCommand[ Index(((P1 *)_this)->i, 4) ]);
		;
		goto R999;

	case 64: // STATE 97
		;
		((P1 *)_this)->i = trpt->bup.oval;
		;
		goto R999;

	case 65: // STATE 103
		;
		((P1 *)_this)->currStatus = trpt->bup.oval;
		;
		goto R999;

	case 66: // STATE 108
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
		
	case 68: // STATE 110
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

	case 69: // STATE 117
		;
		((P1 *)_this)->i = trpt->bup.ovals[2];
		((P1 *)_this)->hasFail = trpt->bup.ovals[1];
	/* 0 */	((P1 *)_this)->reportStatus = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 70: // STATE 117
		;
		((P1 *)_this)->i = trpt->bup.oval;
		;
		goto R999;

	case 71: // STATE 117
		;
		((P1 *)_this)->i = trpt->bup.oval;
		;
		goto R999;

	case 72: // STATE 124
		;
		((P1 *)_this)->currStatus = trpt->bup.ovals[1];
	/* 0 */	((P1 *)_this)->hasFail = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 73: // STATE 125
		;
		_m = unsend(now.cmAbleWcp);
		;
		goto R999;

	case 74: // STATE 128
		;
		((P1 *)_this)->i = trpt->bup.ovals[1];
		((P1 *)_this)->currStatus = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 76: // STATE 130
		;
		_m = unsend(now.cmCommand[ Index(((P1 *)_this)->i, 4) ]);
		;
		goto R999;

	case 77: // STATE 131
		;
		((P1 *)_this)->i = trpt->bup.oval;
		;
		goto R999;

	case 78: // STATE 137
		;
		_m = unsend(now.cmAbleWcp);
		;
		goto R999;

	case 79: // STATE 142
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
		
	case 81: // STATE 144
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

	case 82: // STATE 151
		;
		((P1 *)_this)->i = trpt->bup.ovals[2];
		((P1 *)_this)->hasFail = trpt->bup.ovals[1];
	/* 0 */	((P1 *)_this)->reportStatus = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 83: // STATE 151
		;
		((P1 *)_this)->i = trpt->bup.oval;
		;
		goto R999;

	case 84: // STATE 151
		;
		((P1 *)_this)->i = trpt->bup.oval;
		;
		goto R999;

	case 85: // STATE 158
		;
		((P1 *)_this)->currStatus = trpt->bup.ovals[1];
	/* 0 */	((P1 *)_this)->hasFail = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 86: // STATE 159
		;
		_m = unsend(now.cmAbleWcp);
		;
		goto R999;

	case 87: // STATE 162
		;
		((P1 *)_this)->i = trpt->bup.ovals[1];
		((P1 *)_this)->currStatus = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 89: // STATE 164
		;
		_m = unsend(now.cmCommand[ Index(((P1 *)_this)->i, 4) ]);
		;
		goto R999;

	case 90: // STATE 165
		;
		((P1 *)_this)->i = trpt->bup.oval;
		;
		goto R999;

	case 91: // STATE 171
		;
		_m = unsend(now.cmAbleWcp);
		;
		goto R999;

	case 92: // STATE 177
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Client */
;
		;
		
	case 94: // STATE 2
		;
		_m = unsend(now.cmConnectRequest);
		;
		goto R999;

	case 95: // STATE 3
		;
		XX = 1;
		unrecv(now.cmConnectReply[ Index(((P0 *)_this)->id, 4) ], XX-1, 0, ((P0 *)_this)->reply, 1);
		((P0 *)_this)->reply = trpt->bup.oval;
		;
		;
		goto R999;

	case 96: // STATE 6
		;
		((P0 *)_this)->connected = trpt->bup.ovals[2];
		((P0 *)_this)->currStatus = trpt->bup.ovals[1];
	/* 0 */	((P0 *)_this)->reply = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		
	case 98: // STATE 12
		;
		XX = 1;
		unrecv(now.cmCommand[ Index(((P0 *)_this)->id, 4) ], XX-1, 0, ((P0 *)_this)->currCommand, 1);
		((P0 *)_this)->currCommand = trpt->bup.oval;
		;
		;
		goto R999;

	case 99: // STATE 14
		;
		((P0 *)_this)->currStatus = trpt->bup.ovals[1];
	/* 0 */	((P0 *)_this)->currCommand = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		;
		;
		
	case 102: // STATE 21
		;
		_m = unsend(now.clientReport);
		;
		goto R999;

	case 103: // STATE 22
		;
		XX = 1;
		unrecv(now.cmCommand[ Index(((P0 *)_this)->id, 4) ], XX-1, 0, ((P0 *)_this)->currCommand, 1);
		((P0 *)_this)->currCommand = trpt->bup.oval;
		;
		;
		goto R999;

	case 104: // STATE 24
		;
		((P0 *)_this)->currStatus = trpt->bup.ovals[1];
	/* 0 */	((P0 *)_this)->currCommand = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 105: // STATE 30
		;
		_m = unsend(now.clientReport);
		;
		goto R999;

	case 106: // STATE 32
		;
		((P0 *)_this)->connected = trpt->bup.ovals[1];
		((P0 *)_this)->currStatus = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 107: // STATE 35
		;
	/* 0 */	((P0 *)_this)->currStatus = trpt->bup.oval;
		;
		;
		goto R999;
;
		;
		
	case 109: // STATE 37
		;
		_m = unsend(now.clientReport);
		;
		goto R999;

	case 110: // STATE 38
		;
		((P0 *)_this)->currStatus = trpt->bup.oval;
		;
		goto R999;

	case 111: // STATE 40
		;
		_m = unsend(now.clientReport);
		;
		goto R999;

	case 112: // STATE 42
		;
		((P0 *)_this)->currStatus = trpt->bup.ovals[1];
		((P0 *)_this)->connected = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 113: // STATE 45
		;
	/* 0 */	((P0 *)_this)->currStatus = trpt->bup.oval;
		;
		;
		goto R999;

	case 114: // STATE 46
		;
		((P0 *)_this)->currStatus = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 116: // STATE 48
		;
		XX = 1;
		unrecv(now.cmCommand[ Index(((P0 *)_this)->id, 4) ], XX-1, 0, ((P0 *)_this)->currCommand, 1);
		((P0 *)_this)->currCommand = trpt->bup.oval;
		;
		;
		goto R999;

	case 117: // STATE 50
		;
		((P0 *)_this)->currStatus = trpt->bup.ovals[1];
	/* 0 */	((P0 *)_this)->currCommand = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		;
		;
		
	case 120: // STATE 57
		;
		_m = unsend(now.clientReport);
		;
		goto R999;

	case 121: // STATE 58
		;
		XX = 1;
		unrecv(now.cmCommand[ Index(((P0 *)_this)->id, 4) ], XX-1, 0, ((P0 *)_this)->currCommand, 1);
		((P0 *)_this)->currCommand = trpt->bup.oval;
		;
		;
		goto R999;

	case 122: // STATE 60
		;
		((P0 *)_this)->currStatus = trpt->bup.ovals[1];
	/* 0 */	((P0 *)_this)->currCommand = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 123: // STATE 66
		;
		_m = unsend(now.clientReport);
		;
		goto R999;

	case 124: // STATE 67
		;
		XX = 1;
		unrecv(now.cmCommand[ Index(((P0 *)_this)->id, 4) ], XX-1, 0, ((P0 *)_this)->currCommand, 1);
		((P0 *)_this)->currCommand = trpt->bup.oval;
		;
		;
		goto R999;

	case 125: // STATE 69
		;
		((P0 *)_this)->currStatus = trpt->bup.ovals[1];
	/* 0 */	((P0 *)_this)->currCommand = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 126: // STATE 76
		;
	/* 0 */	((P0 *)_this)->currStatus = trpt->bup.oval;
		;
		;
		goto R999;
;
		;
		
	case 128: // STATE 78
		;
		_m = unsend(now.clientReport);
		;
		goto R999;

	case 129: // STATE 79
		;
		((P0 *)_this)->currStatus = trpt->bup.oval;
		;
		goto R999;

	case 130: // STATE 81
		;
		_m = unsend(now.clientReport);
		;
		goto R999;

	case 131: // STATE 83
		;
		((P0 *)_this)->currStatus = trpt->bup.ovals[1];
		((P0 *)_this)->connected = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 132: // STATE 86
		;
		XX = 1;
		unrecv(now.cmCommand[ Index(((P0 *)_this)->id, 4) ], XX-1, 0, ((P0 *)_this)->currCommand, 1);
		((P0 *)_this)->currCommand = trpt->bup.oval;
		;
		;
		goto R999;

	case 133: // STATE 88
		;
		((P0 *)_this)->connected = trpt->bup.ovals[1];
	/* 0 */	((P0 *)_this)->currCommand = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 134: // STATE 93
		;
	/* 0 */	((P0 *)_this)->currStatus = trpt->bup.oval;
		;
		;
		goto R999;
;
		;
		
	case 136: // STATE 95
		;
		_m = unsend(now.clientReport);
		;
		goto R999;

	case 137: // STATE 96
		;
		((P0 *)_this)->currStatus = trpt->bup.oval;
		;
		goto R999;

	case 138: // STATE 98
		;
		_m = unsend(now.clientReport);
		;
		goto R999;

	case 139: // STATE 100
		;
		((P0 *)_this)->currStatus = trpt->bup.ovals[1];
		((P0 *)_this)->connected = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 140: // STATE 103
		;
		XX = 1;
		unrecv(now.cmCommand[ Index(((P0 *)_this)->id, 4) ], XX-1, 0, ((P0 *)_this)->currCommand, 1);
		((P0 *)_this)->currCommand = trpt->bup.oval;
		;
		;
		goto R999;

	case 141: // STATE 105
		;
		((P0 *)_this)->connected = trpt->bup.ovals[1];
	/* 0 */	((P0 *)_this)->currCommand = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 142: // STATE 113
		;
		p_restor(II);
		;
		;
		goto R999;
	}


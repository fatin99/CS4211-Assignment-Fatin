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

	case 11: // STATE 4
		;
		((P2 *)_this)->isUpdating = trpt->bup.ovals[2];
		((P2 *)_this)->disabled = trpt->bup.ovals[1];
	/* 0 */	((P2 *)_this)->ability = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 12: // STATE 7
		;
		((P2 *)_this)->disabled = trpt->bup.oval;
		;
		goto R999;

	case 13: // STATE 14
		;
		((P2 *)_this)->button = trpt->bup.ovals[2];
		((P2 *)_this)->isUpdating = trpt->bup.ovals[1];
	/* 0 */	((P2 *)_this)->isUpdating = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 14: // STATE 15
		;
		_m = unsend(now.wcpRequestCm);
		;
		goto R999;

	case 15: // STATE 19
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

	case 21: // STATE 16
		;
		((P1 *)_this)->reply = trpt->bup.oval;
		;
		goto R999;

	case 22: // STATE 20
		;
		((P1 *)_this)->connectedClients[ Index(((P1 *)_this)->id, 4) ] = trpt->bup.ovals[3];
		((P1 *)_this)->currStatus = trpt->bup.ovals[2];
		((P1 *)_this)->reply = trpt->bup.ovals[1];
	/* 0 */	((P1 *)_this)->currStatus = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 23: // STATE 21
		;
		_m = unsend(now.cmAbleWcp);
		;
		goto R999;

	case 24: // STATE 23
		;
		((P1 *)_this)->reply = trpt->bup.oval;
		;
		goto R999;

	case 25: // STATE 26
		;
		_m = unsend(now.cmConnectReply[ Index(((P1 *)_this)->id, 4) ]);
		;
		goto R999;

	case 26: // STATE 27
		;
	/* 0 */	((P1 *)_this)->currStatus = trpt->bup.oval;
		;
		;
		goto R999;

	case 27: // STATE 29
		;
		_m = unsend(now.cmCommand[ Index(((P1 *)_this)->id, 4) ]);
		;
		goto R999;

	case 28: // STATE 30
		;
		((P1 *)_this)->currStatus = trpt->bup.oval;
		;
		goto R999;

	case 29: // STATE 31
		;
	/* 0 */	((P1 *)_this)->currStatus = trpt->bup.oval;
		;
		;
		goto R999;

	case 30: // STATE 33
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

	case 31: // STATE 34
		;
	/* 0 */	((P1 *)_this)->reportStatus = trpt->bup.oval;
		;
		;
		goto R999;

	case 32: // STATE 35
		;
		_m = unsend(now.cmCommand[ Index(((P1 *)_this)->id, 4) ]);
		;
		goto R999;

	case 33: // STATE 36
		;
		((P1 *)_this)->currStatus = trpt->bup.oval;
		;
		goto R999;

	case 34: // STATE 39
		;
		((P1 *)_this)->currStatus = trpt->bup.ovals[2];
		((P1 *)_this)->connectedClients[ Index(((P1 *)_this)->id, 4) ] = trpt->bup.ovals[1];
	/* 0 */	((P1 *)_this)->reportStatus = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 35: // STATE 42
		;
	/* 0 */	((P1 *)_this)->currStatus = trpt->bup.oval;
		;
		;
		goto R999;

	case 36: // STATE 44
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

	case 37: // STATE 46
		;
		((P1 *)_this)->currStatus = trpt->bup.ovals[1];
	/* 0 */	((P1 *)_this)->reportStatus = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 38: // STATE 47
		;
		_m = unsend(now.cmAbleWcp);
		;
		goto R999;

	case 39: // STATE 50
		;
		((P1 *)_this)->currStatus = trpt->bup.ovals[2];
		((P1 *)_this)->connectedClients[ Index(((P1 *)_this)->id, 4) ] = trpt->bup.ovals[1];
	/* 0 */	((P1 *)_this)->reportStatus = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 40: // STATE 51
		;
		_m = unsend(now.cmAbleWcp);
		;
		goto R999;

	case 41: // STATE 54
		;
	/* 0 */	((P1 *)_this)->currStatus = trpt->bup.oval;
		;
		;
		goto R999;

	case 42: // STATE 55
		;
		XX = 1;
		unrecv(now.wcpRequestCm, XX-1, 0, ((P1 *)_this)->button, 1);
		((P1 *)_this)->button = trpt->bup.oval;
		;
		;
		goto R999;

	case 43: // STATE 57
		;
		((P1 *)_this)->i = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 46: // STATE 60
		;
		_m = unsend(now.wcpRequestClient[ Index(((P1 *)_this)->i, 1) ]);
		;
		goto R999;

	case 47: // STATE 65
		;
		((P1 *)_this)->i = trpt->bup.oval;
		;
		goto R999;

	case 48: // STATE 65
		;
		((P1 *)_this)->i = trpt->bup.oval;
		;
		goto R999;

	case 49: // STATE 71
		;
		((P1 *)_this)->currStatus = trpt->bup.oval;
		;
		goto R999;

	case 50: // STATE 72
		;
		_m = unsend(now.cmAbleWcp);
		;
		goto R999;

	case 51: // STATE 75
		;
		((P1 *)_this)->i = trpt->bup.ovals[1];
	/* 0 */	((P1 *)_this)->currStatus = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		;
		;
		
	case 54: // STATE 78
		;
		_m = unsend(now.cmCommand[ Index(((P1 *)_this)->i, 4) ]);
		;
		goto R999;

	case 55: // STATE 83
		;
		((P1 *)_this)->i = trpt->bup.oval;
		;
		goto R999;

	case 56: // STATE 83
		;
		((P1 *)_this)->i = trpt->bup.oval;
		;
		goto R999;

	case 57: // STATE 89
		;
		((P1 *)_this)->currStatus = trpt->bup.oval;
		;
		goto R999;

	case 58: // STATE 93
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
		;
		;
		
	case 61: // STATE 96
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

	case 62: // STATE 108
		;
		((P1 *)_this)->i = trpt->bup.ovals[2];
		((P1 *)_this)->hasFail = trpt->bup.ovals[1];
	/* 0 */	((P1 *)_this)->reportStatus = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 63: // STATE 108
		;
		((P1 *)_this)->i = trpt->bup.oval;
		;
		goto R999;

	case 64: // STATE 108
		;
		((P1 *)_this)->i = trpt->bup.oval;
		;
		goto R999;

	case 65: // STATE 108
		;
		((P1 *)_this)->i = trpt->bup.oval;
		;
		goto R999;

	case 66: // STATE 115
		;
		((P1 *)_this)->i = trpt->bup.ovals[1];
	/* 0 */	((P1 *)_this)->hasFail = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		;
		;
		
	case 69: // STATE 118
		;
		_m = unsend(now.cmCommand[ Index(((P1 *)_this)->i, 4) ]);
		;
		goto R999;

	case 70: // STATE 123
		;
		((P1 *)_this)->i = trpt->bup.oval;
		;
		goto R999;

	case 71: // STATE 123
		;
		((P1 *)_this)->i = trpt->bup.oval;
		;
		goto R999;

	case 72: // STATE 129
		;
		((P1 *)_this)->currStatus = trpt->bup.oval;
		;
		goto R999;

	case 73: // STATE 131
		;
		((P1 *)_this)->i = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 76: // STATE 134
		;
		_m = unsend(now.cmCommand[ Index(((P1 *)_this)->i, 4) ]);
		;
		goto R999;

	case 77: // STATE 139
		;
		((P1 *)_this)->i = trpt->bup.oval;
		;
		goto R999;

	case 78: // STATE 139
		;
		((P1 *)_this)->i = trpt->bup.oval;
		;
		goto R999;

	case 79: // STATE 145
		;
		((P1 *)_this)->currStatus = trpt->bup.oval;
		;
		goto R999;

	case 80: // STATE 151
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
		;
		;
		
	case 83: // STATE 154
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

	case 84: // STATE 166
		;
		((P1 *)_this)->i = trpt->bup.ovals[2];
		((P1 *)_this)->hasFail = trpt->bup.ovals[1];
	/* 0 */	((P1 *)_this)->reportStatus = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 85: // STATE 166
		;
		((P1 *)_this)->i = trpt->bup.oval;
		;
		goto R999;

	case 86: // STATE 166
		;
		((P1 *)_this)->i = trpt->bup.oval;
		;
		goto R999;

	case 87: // STATE 166
		;
		((P1 *)_this)->i = trpt->bup.oval;
		;
		goto R999;

	case 88: // STATE 173
		;
		((P1 *)_this)->currStatus = trpt->bup.ovals[1];
	/* 0 */	((P1 *)_this)->hasFail = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 89: // STATE 174
		;
		_m = unsend(now.cmAbleWcp);
		;
		goto R999;

	case 90: // STATE 177
		;
		((P1 *)_this)->i = trpt->bup.ovals[1];
		((P1 *)_this)->currStatus = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		;
		;
		
	case 93: // STATE 180
		;
		_m = unsend(now.cmCommand[ Index(((P1 *)_this)->i, 4) ]);
		;
		goto R999;

	case 94: // STATE 185
		;
		((P1 *)_this)->i = trpt->bup.oval;
		;
		goto R999;

	case 95: // STATE 185
		;
		((P1 *)_this)->i = trpt->bup.oval;
		;
		goto R999;

	case 96: // STATE 191
		;
		_m = unsend(now.cmAbleWcp);
		;
		goto R999;

	case 97: // STATE 197
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
		;
		;
		
	case 100: // STATE 200
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

	case 101: // STATE 212
		;
		((P1 *)_this)->i = trpt->bup.ovals[2];
		((P1 *)_this)->hasFail = trpt->bup.ovals[1];
	/* 0 */	((P1 *)_this)->reportStatus = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 102: // STATE 212
		;
		((P1 *)_this)->i = trpt->bup.oval;
		;
		goto R999;

	case 103: // STATE 212
		;
		((P1 *)_this)->i = trpt->bup.oval;
		;
		goto R999;

	case 104: // STATE 212
		;
		((P1 *)_this)->i = trpt->bup.oval;
		;
		goto R999;

	case 105: // STATE 219
		;
		((P1 *)_this)->currStatus = trpt->bup.ovals[1];
	/* 0 */	((P1 *)_this)->hasFail = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 106: // STATE 220
		;
		_m = unsend(now.cmAbleWcp);
		;
		goto R999;

	case 107: // STATE 223
		;
		((P1 *)_this)->i = trpt->bup.ovals[1];
		((P1 *)_this)->currStatus = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		;
		;
		
	case 110: // STATE 226
		;
		_m = unsend(now.cmCommand[ Index(((P1 *)_this)->i, 4) ]);
		;
		goto R999;

	case 111: // STATE 231
		;
		((P1 *)_this)->i = trpt->bup.oval;
		;
		goto R999;

	case 112: // STATE 231
		;
		((P1 *)_this)->i = trpt->bup.oval;
		;
		goto R999;

	case 113: // STATE 237
		;
		_m = unsend(now.cmAbleWcp);
		;
		goto R999;

	case 114: // STATE 243
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Client */
;
		;
		
	case 116: // STATE 2
		;
		_m = unsend(now.cmConnectRequest);
		;
		goto R999;
;
		;
		
	case 118: // STATE 4
		;
		XX = 1;
		unrecv(now.cmConnectReply[ Index(((P0 *)_this)->id, 4) ], XX-1, 0, ((P0 *)_this)->reply, 1);
		((P0 *)_this)->reply = trpt->bup.oval;
		;
		;
		goto R999;

	case 119: // STATE 7
		;
		((P0 *)_this)->connected = trpt->bup.ovals[2];
		((P0 *)_this)->currStatus = trpt->bup.ovals[1];
	/* 0 */	((P0 *)_this)->reply = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		
	case 120: // STATE 10
		goto R999;
;
		
	case 121: // STATE 14
		goto R999;

	case 122: // STATE 16
		;
		XX = 1;
		unrecv(now.cmCommand[ Index(((P0 *)_this)->id, 4) ], XX-1, 0, ((P0 *)_this)->currCommand, 1);
		((P0 *)_this)->currCommand = trpt->bup.oval;
		;
		;
		goto R999;

	case 123: // STATE 18
		;
		((P0 *)_this)->currStatus = trpt->bup.ovals[1];
	/* 0 */	((P0 *)_this)->currCommand = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		
	case 124: // STATE 24
		goto R999;
;
		;
		
	case 126: // STATE 27
		;
		_m = unsend(now.clientReport);
		;
		goto R999;

	case 127: // STATE 28
		;
		XX = 1;
		unrecv(now.cmCommand[ Index(((P0 *)_this)->id, 4) ], XX-1, 0, ((P0 *)_this)->currCommand, 1);
		((P0 *)_this)->currCommand = trpt->bup.oval;
		;
		;
		goto R999;

	case 128: // STATE 30
		;
		((P0 *)_this)->currStatus = trpt->bup.ovals[1];
	/* 0 */	((P0 *)_this)->currCommand = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 129: // STATE 37
		;
		_m = unsend(now.clientReport);
		;
		goto R999;

	case 130: // STATE 39
		;
		((P0 *)_this)->connected = trpt->bup.ovals[1];
		((P0 *)_this)->currStatus = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 131: // STATE 43
		;
	/* 0 */	((P0 *)_this)->currStatus = trpt->bup.oval;
		;
		;
		goto R999;
;
		;
		
	case 133: // STATE 46
		;
		_m = unsend(now.clientReport);
		;
		goto R999;

	case 134: // STATE 47
		;
		((P0 *)_this)->currStatus = trpt->bup.oval;
		;
		goto R999;

	case 135: // STATE 49
		;
		_m = unsend(now.clientReport);
		;
		goto R999;

	case 136: // STATE 51
		;
		((P0 *)_this)->currStatus = trpt->bup.ovals[1];
		((P0 *)_this)->connected = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 137: // STATE 55
		;
	/* 0 */	((P0 *)_this)->currStatus = trpt->bup.oval;
		;
		;
		goto R999;

	case 138: // STATE 57
		;
		((P0 *)_this)->currStatus = trpt->bup.oval;
		;
		goto R999;
;
		
	case 139: // STATE 58
		goto R999;

	case 140: // STATE 60
		;
		XX = 1;
		unrecv(now.cmCommand[ Index(((P0 *)_this)->id, 4) ], XX-1, 0, ((P0 *)_this)->currCommand, 1);
		((P0 *)_this)->currCommand = trpt->bup.oval;
		;
		;
		goto R999;

	case 141: // STATE 62
		;
		((P0 *)_this)->currStatus = trpt->bup.ovals[1];
	/* 0 */	((P0 *)_this)->currCommand = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		
	case 142: // STATE 68
		goto R999;
;
		;
		
	case 144: // STATE 71
		;
		_m = unsend(now.clientReport);
		;
		goto R999;

	case 145: // STATE 72
		;
		XX = 1;
		unrecv(now.cmCommand[ Index(((P0 *)_this)->id, 4) ], XX-1, 0, ((P0 *)_this)->currCommand, 1);
		((P0 *)_this)->currCommand = trpt->bup.oval;
		;
		;
		goto R999;

	case 146: // STATE 74
		;
		((P0 *)_this)->currStatus = trpt->bup.ovals[1];
	/* 0 */	((P0 *)_this)->currCommand = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 147: // STATE 81
		;
		_m = unsend(now.clientReport);
		;
		goto R999;

	case 148: // STATE 82
		;
		XX = 1;
		unrecv(now.cmCommand[ Index(((P0 *)_this)->id, 4) ], XX-1, 0, ((P0 *)_this)->currCommand, 1);
		((P0 *)_this)->currCommand = trpt->bup.oval;
		;
		;
		goto R999;

	case 149: // STATE 84
		;
		((P0 *)_this)->currStatus = trpt->bup.ovals[1];
	/* 0 */	((P0 *)_this)->currCommand = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 150: // STATE 92
		;
	/* 0 */	((P0 *)_this)->currStatus = trpt->bup.oval;
		;
		;
		goto R999;
;
		;
		
	case 152: // STATE 95
		;
		_m = unsend(now.clientReport);
		;
		goto R999;

	case 153: // STATE 96
		;
		((P0 *)_this)->currStatus = trpt->bup.oval;
		;
		goto R999;

	case 154: // STATE 98
		;
		_m = unsend(now.clientReport);
		;
		goto R999;

	case 155: // STATE 100
		;
		((P0 *)_this)->currStatus = trpt->bup.ovals[1];
		((P0 *)_this)->connected = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 156: // STATE 103
		;
		XX = 1;
		unrecv(now.cmCommand[ Index(((P0 *)_this)->id, 4) ], XX-1, 0, ((P0 *)_this)->currCommand, 1);
		((P0 *)_this)->currCommand = trpt->bup.oval;
		;
		;
		goto R999;

	case 157: // STATE 105
		;
		((P0 *)_this)->connected = trpt->bup.ovals[1];
	/* 0 */	((P0 *)_this)->currCommand = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 158: // STATE 111
		;
	/* 0 */	((P0 *)_this)->currStatus = trpt->bup.oval;
		;
		;
		goto R999;
;
		;
		
	case 160: // STATE 114
		;
		_m = unsend(now.clientReport);
		;
		goto R999;

	case 161: // STATE 115
		;
		((P0 *)_this)->currStatus = trpt->bup.oval;
		;
		goto R999;

	case 162: // STATE 117
		;
		_m = unsend(now.clientReport);
		;
		goto R999;

	case 163: // STATE 119
		;
		((P0 *)_this)->currStatus = trpt->bup.ovals[1];
		((P0 *)_this)->connected = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 164: // STATE 122
		;
		XX = 1;
		unrecv(now.cmCommand[ Index(((P0 *)_this)->id, 4) ], XX-1, 0, ((P0 *)_this)->currCommand, 1);
		((P0 *)_this)->currCommand = trpt->bup.oval;
		;
		;
		goto R999;

	case 165: // STATE 124
		;
		((P0 *)_this)->connected = trpt->bup.ovals[1];
	/* 0 */	((P0 *)_this)->currCommand = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 166: // STATE 133
		;
		p_restor(II);
		;
		;
		goto R999;
	}


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

	case 22: // STATE 19
		;
		((P1 *)_this)->currStatus = trpt->bup.ovals[2];
		((P1 *)_this)->reply = trpt->bup.ovals[1];
	/* 0 */	((P1 *)_this)->currStatus = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 23: // STATE 20
		;
		_m = unsend(now.cmStatus[ Index(((P1 *)_this)->id, 4) ]);
		;
		goto R999;

	case 24: // STATE 21
		;
		((P1 *)_this)->connectedClients[ Index(((P1 *)_this)->id, 4) ] = trpt->bup.oval;
		;
		goto R999;

	case 25: // STATE 22
		;
		_m = unsend(now.cmAbleWcp);
		;
		goto R999;

	case 26: // STATE 24
		;
		((P1 *)_this)->reply = trpt->bup.oval;
		;
		goto R999;

	case 27: // STATE 27
		;
		_m = unsend(now.cmConnectReply[ Index(((P1 *)_this)->id, 4) ]);
		;
		goto R999;

	case 28: // STATE 28
		;
	/* 0 */	((P1 *)_this)->currStatus = trpt->bup.oval;
		;
		;
		goto R999;

	case 29: // STATE 30
		;
		_m = unsend(now.cmCommand[ Index(((P1 *)_this)->id, 4) ]);
		;
		goto R999;

	case 30: // STATE 31
		;
		((P1 *)_this)->currStatus = trpt->bup.oval;
		;
		goto R999;

	case 31: // STATE 32
		;
		_m = unsend(now.cmStatus[ Index(((P1 *)_this)->id, 4) ]);
		;
		goto R999;

	case 32: // STATE 33
		;
	/* 0 */	((P1 *)_this)->currStatus = trpt->bup.oval;
		;
		;
		goto R999;

	case 33: // STATE 35
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

	case 34: // STATE 36
		;
	/* 0 */	((P1 *)_this)->reportStatus = trpt->bup.oval;
		;
		;
		goto R999;

	case 35: // STATE 37
		;
		_m = unsend(now.cmCommand[ Index(((P1 *)_this)->id, 4) ]);
		;
		goto R999;

	case 36: // STATE 38
		;
		((P1 *)_this)->currStatus = trpt->bup.oval;
		;
		goto R999;

	case 37: // STATE 39
		;
		_m = unsend(now.cmStatus[ Index(((P1 *)_this)->id, 4) ]);
		;
		goto R999;

	case 38: // STATE 42
		;
		((P1 *)_this)->currStatus = trpt->bup.ovals[2];
		((P1 *)_this)->connectedClients[ Index(((P1 *)_this)->id, 4) ] = trpt->bup.ovals[1];
	/* 0 */	((P1 *)_this)->reportStatus = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 39: // STATE 43
		;
		_m = unsend(now.cmStatus[ Index(((P1 *)_this)->id, 4) ]);
		;
		goto R999;

	case 40: // STATE 46
		;
	/* 0 */	((P1 *)_this)->currStatus = trpt->bup.oval;
		;
		;
		goto R999;

	case 41: // STATE 48
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

	case 42: // STATE 50
		;
		((P1 *)_this)->currStatus = trpt->bup.ovals[1];
	/* 0 */	((P1 *)_this)->reportStatus = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 43: // STATE 51
		;
		_m = unsend(now.cmStatus[ Index(((P1 *)_this)->id, 4) ]);
		;
		goto R999;

	case 44: // STATE 52
		;
		_m = unsend(now.cmAbleWcp);
		;
		goto R999;

	case 45: // STATE 55
		;
		((P1 *)_this)->currStatus = trpt->bup.ovals[2];
		((P1 *)_this)->connectedClients[ Index(((P1 *)_this)->id, 4) ] = trpt->bup.ovals[1];
	/* 0 */	((P1 *)_this)->reportStatus = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 46: // STATE 56
		;
		_m = unsend(now.cmStatus[ Index(((P1 *)_this)->id, 4) ]);
		;
		goto R999;

	case 47: // STATE 57
		;
		_m = unsend(now.cmAbleWcp);
		;
		goto R999;

	case 48: // STATE 60
		;
	/* 0 */	((P1 *)_this)->currStatus = trpt->bup.oval;
		;
		;
		goto R999;

	case 49: // STATE 61
		;
		XX = 1;
		unrecv(now.wcpRequestCm, XX-1, 0, ((P1 *)_this)->button, 1);
		((P1 *)_this)->button = trpt->bup.oval;
		;
		;
		goto R999;

	case 50: // STATE 63
		;
		((P1 *)_this)->i = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 53: // STATE 66
		;
		_m = unsend(now.wcpRequestClient[ Index(((P1 *)_this)->i, 4) ]);
		;
		goto R999;

	case 54: // STATE 67
		;
		_m = unsend(now.cmStatus[ Index(((P1 *)_this)->i, 4) ]);
		;
		goto R999;

	case 55: // STATE 72
		;
		((P1 *)_this)->i = trpt->bup.oval;
		;
		goto R999;

	case 56: // STATE 72
		;
		((P1 *)_this)->i = trpt->bup.oval;
		;
		goto R999;

	case 57: // STATE 78
		;
		((P1 *)_this)->currStatus = trpt->bup.oval;
		;
		goto R999;

	case 58: // STATE 79
		;
		_m = unsend(now.cmAbleWcp);
		;
		goto R999;

	case 59: // STATE 82
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
		
	case 62: // STATE 85
		;
		_m = unsend(now.cmCommand[ Index(((P1 *)_this)->i, 4) ]);
		;
		goto R999;

	case 63: // STATE 86
		;
		_m = unsend(now.cmStatus[ Index(((P1 *)_this)->i, 4) ]);
		;
		goto R999;

	case 64: // STATE 91
		;
		((P1 *)_this)->i = trpt->bup.oval;
		;
		goto R999;

	case 65: // STATE 91
		;
		((P1 *)_this)->i = trpt->bup.oval;
		;
		goto R999;

	case 66: // STATE 97
		;
		((P1 *)_this)->currStatus = trpt->bup.oval;
		;
		goto R999;

	case 67: // STATE 101
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
		
	case 70: // STATE 104
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

	case 71: // STATE 116
		;
		((P1 *)_this)->i = trpt->bup.ovals[2];
		((P1 *)_this)->hasFail = trpt->bup.ovals[1];
	/* 0 */	((P1 *)_this)->reportStatus = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 72: // STATE 116
		;
		((P1 *)_this)->i = trpt->bup.oval;
		;
		goto R999;

	case 73: // STATE 116
		;
		((P1 *)_this)->i = trpt->bup.oval;
		;
		goto R999;

	case 74: // STATE 116
		;
		((P1 *)_this)->i = trpt->bup.oval;
		;
		goto R999;

	case 75: // STATE 123
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
		
	case 78: // STATE 126
		;
		_m = unsend(now.cmCommand[ Index(((P1 *)_this)->i, 4) ]);
		;
		goto R999;

	case 79: // STATE 127
		;
		_m = unsend(now.cmStatus[ Index(((P1 *)_this)->i, 4) ]);
		;
		goto R999;

	case 80: // STATE 132
		;
		((P1 *)_this)->i = trpt->bup.oval;
		;
		goto R999;

	case 81: // STATE 132
		;
		((P1 *)_this)->i = trpt->bup.oval;
		;
		goto R999;

	case 82: // STATE 138
		;
		((P1 *)_this)->currStatus = trpt->bup.oval;
		;
		goto R999;

	case 83: // STATE 140
		;
		((P1 *)_this)->i = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 86: // STATE 143
		;
		_m = unsend(now.cmCommand[ Index(((P1 *)_this)->i, 4) ]);
		;
		goto R999;

	case 87: // STATE 144
		;
		_m = unsend(now.cmStatus[ Index(((P1 *)_this)->i, 4) ]);
		;
		goto R999;

	case 88: // STATE 149
		;
		((P1 *)_this)->i = trpt->bup.oval;
		;
		goto R999;

	case 89: // STATE 149
		;
		((P1 *)_this)->i = trpt->bup.oval;
		;
		goto R999;

	case 90: // STATE 155
		;
		((P1 *)_this)->currStatus = trpt->bup.oval;
		;
		goto R999;

	case 91: // STATE 161
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
		
	case 94: // STATE 164
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

	case 95: // STATE 176
		;
		((P1 *)_this)->i = trpt->bup.ovals[2];
		((P1 *)_this)->hasFail = trpt->bup.ovals[1];
	/* 0 */	((P1 *)_this)->reportStatus = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 96: // STATE 176
		;
		((P1 *)_this)->i = trpt->bup.oval;
		;
		goto R999;

	case 97: // STATE 176
		;
		((P1 *)_this)->i = trpt->bup.oval;
		;
		goto R999;

	case 98: // STATE 176
		;
		((P1 *)_this)->i = trpt->bup.oval;
		;
		goto R999;

	case 99: // STATE 184
		;
		((P1 *)_this)->i = trpt->bup.ovals[2];
		((P1 *)_this)->currStatus = trpt->bup.ovals[1];
	/* 0 */	((P1 *)_this)->hasFail = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		;
		;
		
	case 102: // STATE 187
		;
		_m = unsend(now.cmStatus[ Index(((P1 *)_this)->i, 4) ]);
		;
		goto R999;

	case 103: // STATE 188
		;
		_m = unsend(now.cmCommand[ Index(((P1 *)_this)->i, 4) ]);
		;
		goto R999;

	case 104: // STATE 193
		;
		((P1 *)_this)->i = trpt->bup.oval;
		;
		goto R999;

	case 105: // STATE 193
		;
		((P1 *)_this)->i = trpt->bup.oval;
		;
		goto R999;

	case 106: // STATE 199
		;
		_m = unsend(now.cmAbleWcp);
		;
		goto R999;

	case 107: // STATE 202
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
		
	case 110: // STATE 205
		;
		_m = unsend(now.cmStatus[ Index(((P1 *)_this)->i, 4) ]);
		;
		goto R999;

	case 111: // STATE 210
		;
		((P1 *)_this)->i = trpt->bup.oval;
		;
		goto R999;

	case 112: // STATE 210
		;
		((P1 *)_this)->i = trpt->bup.oval;
		;
		goto R999;

	case 113: // STATE 216
		;
		_m = unsend(now.cmAbleWcp);
		;
		goto R999;

	case 114: // STATE 222
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
		
	case 117: // STATE 225
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

	case 118: // STATE 237
		;
		((P1 *)_this)->i = trpt->bup.ovals[2];
		((P1 *)_this)->hasFail = trpt->bup.ovals[1];
	/* 0 */	((P1 *)_this)->reportStatus = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 119: // STATE 237
		;
		((P1 *)_this)->i = trpt->bup.oval;
		;
		goto R999;

	case 120: // STATE 237
		;
		((P1 *)_this)->i = trpt->bup.oval;
		;
		goto R999;

	case 121: // STATE 237
		;
		((P1 *)_this)->i = trpt->bup.oval;
		;
		goto R999;

	case 122: // STATE 245
		;
		((P1 *)_this)->i = trpt->bup.ovals[2];
		((P1 *)_this)->currStatus = trpt->bup.ovals[1];
	/* 0 */	((P1 *)_this)->hasFail = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		;
		;
		
	case 125: // STATE 248
		;
		_m = unsend(now.cmStatus[ Index(((P1 *)_this)->i, 4) ]);
		;
		goto R999;

	case 126: // STATE 249
		;
		_m = unsend(now.cmCommand[ Index(((P1 *)_this)->i, 4) ]);
		;
		goto R999;

	case 127: // STATE 254
		;
		((P1 *)_this)->i = trpt->bup.oval;
		;
		goto R999;

	case 128: // STATE 254
		;
		((P1 *)_this)->i = trpt->bup.oval;
		;
		goto R999;

	case 129: // STATE 260
		;
		_m = unsend(now.cmAbleWcp);
		;
		goto R999;

	case 130: // STATE 263
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
		
	case 133: // STATE 266
		;
		_m = unsend(now.cmStatus[ Index(((P1 *)_this)->i, 4) ]);
		;
		goto R999;

	case 134: // STATE 271
		;
		((P1 *)_this)->i = trpt->bup.oval;
		;
		goto R999;

	case 135: // STATE 271
		;
		((P1 *)_this)->i = trpt->bup.oval;
		;
		goto R999;

	case 136: // STATE 277
		;
		_m = unsend(now.cmAbleWcp);
		;
		goto R999;

	case 137: // STATE 283
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Client */
;
		;
		
	case 139: // STATE 2
		;
		_m = unsend(now.cmConnectRequest);
		;
		goto R999;
;
		;
		
	case 141: // STATE 4
		;
		XX = 1;
		unrecv(now.cmConnectReply[ Index(((P0 *)_this)->id, 4) ], XX-1, 0, ((P0 *)_this)->reply, 1);
		((P0 *)_this)->reply = trpt->bup.oval;
		;
		;
		goto R999;

	case 142: // STATE 5
		;
	/* 0 */	((P0 *)_this)->reply = trpt->bup.oval;
		;
		;
		goto R999;

	case 143: // STATE 6
		;
		XX = 1;
		unrecv(now.cmStatus[ Index(((P0 *)_this)->id, 4) ], XX-1, 0, ((P0 *)_this)->currStatus, 1);
		((P0 *)_this)->currStatus = trpt->bup.oval;
		;
		;
		goto R999;

	case 144: // STATE 7
		;
		((P0 *)_this)->connected = trpt->bup.oval;
		;
		goto R999;
;
		
	case 145: // STATE 10
		goto R999;
;
		
	case 146: // STATE 14
		goto R999;

	case 147: // STATE 16
		;
		XX = 1;
		unrecv(now.cmCommand[ Index(((P0 *)_this)->id, 4) ], XX-1, 0, ((P0 *)_this)->currCommand, 1);
		((P0 *)_this)->currCommand = trpt->bup.oval;
		;
		;
		goto R999;

	case 148: // STATE 17
		;
	/* 0 */	((P0 *)_this)->currCommand = trpt->bup.oval;
		;
		;
		goto R999;

	case 149: // STATE 18
		;
		XX = 1;
		unrecv(now.cmStatus[ Index(((P0 *)_this)->id, 4) ], XX-1, 0, ((P0 *)_this)->currStatus, 1);
		((P0 *)_this)->currStatus = trpt->bup.oval;
		;
		;
		goto R999;
;
		;
		;
		
	case 151: // STATE 24
		goto R999;
;
		;
		
	case 153: // STATE 27
		;
		_m = unsend(now.clientReport);
		;
		goto R999;

	case 154: // STATE 28
		;
		XX = 1;
		unrecv(now.cmCommand[ Index(((P0 *)_this)->id, 4) ], XX-1, 0, ((P0 *)_this)->currCommand, 1);
		((P0 *)_this)->currCommand = trpt->bup.oval;
		;
		;
		goto R999;

	case 155: // STATE 29
		;
	/* 0 */	((P0 *)_this)->currCommand = trpt->bup.oval;
		;
		;
		goto R999;

	case 156: // STATE 30
		;
		XX = 1;
		unrecv(now.cmStatus[ Index(((P0 *)_this)->id, 4) ], XX-1, 0, ((P0 *)_this)->currStatus, 1);
		((P0 *)_this)->currStatus = trpt->bup.oval;
		;
		;
		goto R999;
;
		;
		
	case 158: // STATE 37
		;
		_m = unsend(now.clientReport);
		;
		goto R999;

	case 159: // STATE 38
		;
		XX = 1;
		unrecv(now.cmStatus[ Index(((P0 *)_this)->id, 4) ], XX-1, 0, ((P0 *)_this)->currStatus, 1);
		((P0 *)_this)->currStatus = trpt->bup.oval;
		;
		;
		goto R999;

	case 160: // STATE 39
		;
		((P0 *)_this)->connected = trpt->bup.oval;
		;
		goto R999;

	case 161: // STATE 43
		;
	/* 0 */	((P0 *)_this)->currStatus = trpt->bup.oval;
		;
		;
		goto R999;
;
		;
		
	case 163: // STATE 46
		;
		_m = unsend(now.clientReport);
		;
		goto R999;

	case 164: // STATE 47
		;
		XX = 1;
		unrecv(now.cmStatus[ Index(((P0 *)_this)->id, 4) ], XX-1, 0, ((P0 *)_this)->currStatus, 1);
		((P0 *)_this)->currStatus = trpt->bup.oval;
		;
		;
		goto R999;

	case 165: // STATE 49
		;
		_m = unsend(now.clientReport);
		;
		goto R999;

	case 166: // STATE 50
		;
		((P0 *)_this)->connected = trpt->bup.oval;
		;
		goto R999;

	case 167: // STATE 51
		;
		XX = 1;
		unrecv(now.cmStatus[ Index(((P0 *)_this)->id, 4) ], XX-1, 0, ((P0 *)_this)->currStatus, 1);
		((P0 *)_this)->currStatus = trpt->bup.oval;
		;
		;
		goto R999;
;
		;
		
	case 169: // STATE 55
		;
	/* 0 */	((P0 *)_this)->currStatus = trpt->bup.oval;
		;
		;
		goto R999;
;
		;
		
	case 171: // STATE 57
		;
		XX = 1;
		unrecv(now.cmStatus[ Index(((P0 *)_this)->id, 4) ], XX-1, 0, ((P0 *)_this)->currStatus, 1);
		((P0 *)_this)->currStatus = trpt->bup.oval;
		;
		;
		goto R999;
;
		
	case 172: // STATE 58
		goto R999;

	case 173: // STATE 60
		;
		XX = 1;
		unrecv(now.cmCommand[ Index(((P0 *)_this)->id, 4) ], XX-1, 0, ((P0 *)_this)->currCommand, 1);
		((P0 *)_this)->currCommand = trpt->bup.oval;
		;
		;
		goto R999;

	case 174: // STATE 61
		;
	/* 0 */	((P0 *)_this)->currCommand = trpt->bup.oval;
		;
		;
		goto R999;

	case 175: // STATE 62
		;
		XX = 1;
		unrecv(now.cmStatus[ Index(((P0 *)_this)->id, 4) ], XX-1, 0, ((P0 *)_this)->currStatus, 1);
		((P0 *)_this)->currStatus = trpt->bup.oval;
		;
		;
		goto R999;
;
		;
		;
		
	case 177: // STATE 68
		goto R999;
;
		;
		
	case 179: // STATE 71
		;
		_m = unsend(now.clientReport);
		;
		goto R999;

	case 180: // STATE 72
		;
		XX = 1;
		unrecv(now.cmCommand[ Index(((P0 *)_this)->id, 4) ], XX-1, 0, ((P0 *)_this)->currCommand, 1);
		((P0 *)_this)->currCommand = trpt->bup.oval;
		;
		;
		goto R999;

	case 181: // STATE 73
		;
	/* 0 */	((P0 *)_this)->currCommand = trpt->bup.oval;
		;
		;
		goto R999;

	case 182: // STATE 74
		;
		XX = 1;
		unrecv(now.cmStatus[ Index(((P0 *)_this)->id, 4) ], XX-1, 0, ((P0 *)_this)->currStatus, 1);
		((P0 *)_this)->currStatus = trpt->bup.oval;
		;
		;
		goto R999;
;
		;
		
	case 184: // STATE 81
		;
		_m = unsend(now.clientReport);
		;
		goto R999;

	case 185: // STATE 82
		;
		XX = 1;
		unrecv(now.cmCommand[ Index(((P0 *)_this)->id, 4) ], XX-1, 0, ((P0 *)_this)->currCommand, 1);
		((P0 *)_this)->currCommand = trpt->bup.oval;
		;
		;
		goto R999;

	case 186: // STATE 83
		;
	/* 0 */	((P0 *)_this)->currCommand = trpt->bup.oval;
		;
		;
		goto R999;

	case 187: // STATE 84
		;
		XX = 1;
		unrecv(now.cmStatus[ Index(((P0 *)_this)->id, 4) ], XX-1, 0, ((P0 *)_this)->currStatus, 1);
		((P0 *)_this)->currStatus = trpt->bup.oval;
		;
		;
		goto R999;
;
		;
		
	case 189: // STATE 92
		;
	/* 0 */	((P0 *)_this)->currStatus = trpt->bup.oval;
		;
		;
		goto R999;
;
		;
		
	case 191: // STATE 95
		;
		_m = unsend(now.clientReport);
		;
		goto R999;

	case 192: // STATE 96
		;
		XX = 1;
		unrecv(now.cmStatus[ Index(((P0 *)_this)->id, 4) ], XX-1, 0, ((P0 *)_this)->currStatus, 1);
		((P0 *)_this)->currStatus = trpt->bup.oval;
		;
		;
		goto R999;

	case 193: // STATE 98
		;
		_m = unsend(now.clientReport);
		;
		goto R999;

	case 194: // STATE 99
		;
		((P0 *)_this)->connected = trpt->bup.oval;
		;
		goto R999;

	case 195: // STATE 100
		;
		XX = 1;
		unrecv(now.cmStatus[ Index(((P0 *)_this)->id, 4) ], XX-1, 0, ((P0 *)_this)->currStatus, 1);
		((P0 *)_this)->currStatus = trpt->bup.oval;
		;
		;
		goto R999;

	case 196: // STATE 103
		;
		XX = 1;
		unrecv(now.cmCommand[ Index(((P0 *)_this)->id, 4) ], XX-1, 0, ((P0 *)_this)->currCommand, 1);
		((P0 *)_this)->currCommand = trpt->bup.oval;
		;
		;
		goto R999;

	case 197: // STATE 105
		;
		((P0 *)_this)->connected = trpt->bup.ovals[1];
	/* 0 */	((P0 *)_this)->currCommand = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 198: // STATE 111
		;
	/* 0 */	((P0 *)_this)->currStatus = trpt->bup.oval;
		;
		;
		goto R999;
;
		;
		
	case 200: // STATE 114
		;
		_m = unsend(now.clientReport);
		;
		goto R999;

	case 201: // STATE 115
		;
		XX = 1;
		unrecv(now.cmStatus[ Index(((P0 *)_this)->id, 4) ], XX-1, 0, ((P0 *)_this)->currStatus, 1);
		((P0 *)_this)->currStatus = trpt->bup.oval;
		;
		;
		goto R999;

	case 202: // STATE 117
		;
		_m = unsend(now.clientReport);
		;
		goto R999;

	case 203: // STATE 118
		;
		((P0 *)_this)->connected = trpt->bup.oval;
		;
		goto R999;

	case 204: // STATE 119
		;
		XX = 1;
		unrecv(now.cmStatus[ Index(((P0 *)_this)->id, 4) ], XX-1, 0, ((P0 *)_this)->currStatus, 1);
		((P0 *)_this)->currStatus = trpt->bup.oval;
		;
		;
		goto R999;

	case 205: // STATE 122
		;
		XX = 1;
		unrecv(now.cmCommand[ Index(((P0 *)_this)->id, 4) ], XX-1, 0, ((P0 *)_this)->currCommand, 1);
		((P0 *)_this)->currCommand = trpt->bup.oval;
		;
		;
		goto R999;

	case 206: // STATE 124
		;
		((P0 *)_this)->connected = trpt->bup.ovals[1];
	/* 0 */	((P0 *)_this)->currCommand = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 207: // STATE 133
		;
		p_restor(II);
		;
		;
		goto R999;
	}


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
;
		;
		
	case 11: // STATE 2
		;
		XX = 1;
		unrecv(now.cmAbleWcp, XX-1, 0, ((P2 *)_this)->ability, 1);
		((P2 *)_this)->ability = trpt->bup.oval;
		;
		;
		goto R999;

	case 12: // STATE 5
		;
		((P2 *)_this)->isUpdating = trpt->bup.ovals[2];
		((P2 *)_this)->disabled = trpt->bup.ovals[1];
	/* 0 */	((P2 *)_this)->ability = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 13: // STATE 8
		;
		((P2 *)_this)->disabled = trpt->bup.oval;
		;
		goto R999;

	case 14: // STATE 12
		;
	/* 0 */	((P2 *)_this)->isUpdating = trpt->bup.oval;
		;
		;
		goto R999;

	case 15: // STATE 15
		;
		((P2 *)_this)->button = trpt->bup.ovals[1];
		((P2 *)_this)->isUpdating = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 16: // STATE 16
		;
		_m = unsend(now.wcpRequestCm);
		;
		goto R999;

	case 17: // STATE 20
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC CommsManager */

	case 18: // STATE 1
		;
		((P1 *)_this)->i = trpt->bup.oval;
		;
		goto R999;

	case 19: // STATE 4
		;
		((P1 *)_this)->i = trpt->bup.ovals[1];
		((P1 *)_this)->connectedClients[ Index(((P1 *)_this)->i, 4) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 20: // STATE 12
		;
		((P1 *)_this)->button = trpt->bup.ovals[2];
		((P1 *)_this)->reportStatus = trpt->bup.ovals[1];
		((P1 *)_this)->currStatus = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		
	case 22: // STATE 14
		;
		XX = 1;
		unrecv(now.cmConnectRequest, XX-1, 0, ((P1 *)_this)->id, 1);
		((P1 *)_this)->id = trpt->bup.oval;
		;
		;
		goto R999;

	case 23: // STATE 16
		;
		((P1 *)_this)->reply = trpt->bup.oval;
		;
		goto R999;

	case 24: // STATE 19
		;
		((P1 *)_this)->currStatus = trpt->bup.ovals[2];
		((P1 *)_this)->reply = trpt->bup.ovals[1];
	/* 0 */	((P1 *)_this)->currStatus = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 25: // STATE 20
		;
		_m = unsend(now.cmStatus[ Index(((P1 *)_this)->id, 4) ]);
		;
		goto R999;

	case 26: // STATE 21
		;
		((P1 *)_this)->connectedClients[ Index(((P1 *)_this)->id, 4) ] = trpt->bup.oval;
		;
		goto R999;

	case 27: // STATE 22
		;
		_m = unsend(now.cmAbleWcp);
		;
		goto R999;

	case 28: // STATE 24
		;
		((P1 *)_this)->reply = trpt->bup.oval;
		;
		goto R999;

	case 29: // STATE 27
		;
		_m = unsend(now.cmConnectReply[ Index(((P1 *)_this)->id, 4) ]);
		;
		goto R999;

	case 30: // STATE 28
		;
	/* 0 */	((P1 *)_this)->currStatus = trpt->bup.oval;
		;
		;
		goto R999;

	case 31: // STATE 30
		;
		_m = unsend(now.cmCommand[ Index(((P1 *)_this)->id, 4) ]);
		;
		goto R999;

	case 32: // STATE 31
		;
		((P1 *)_this)->currStatus = trpt->bup.oval;
		;
		goto R999;

	case 33: // STATE 32
		;
		_m = unsend(now.cmStatus[ Index(((P1 *)_this)->id, 4) ]);
		;
		goto R999;

	case 34: // STATE 33
		;
	/* 0 */	((P1 *)_this)->currStatus = trpt->bup.oval;
		;
		;
		goto R999;

	case 35: // STATE 35
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

	case 36: // STATE 36
		;
	/* 0 */	((P1 *)_this)->reportStatus = trpt->bup.oval;
		;
		;
		goto R999;

	case 37: // STATE 37
		;
		_m = unsend(now.cmCommand[ Index(((P1 *)_this)->id, 4) ]);
		;
		goto R999;

	case 38: // STATE 38
		;
		((P1 *)_this)->currStatus = trpt->bup.oval;
		;
		goto R999;

	case 39: // STATE 39
		;
		_m = unsend(now.cmStatus[ Index(((P1 *)_this)->id, 4) ]);
		;
		goto R999;

	case 40: // STATE 42
		;
		((P1 *)_this)->currStatus = trpt->bup.ovals[2];
		((P1 *)_this)->connectedClients[ Index(((P1 *)_this)->id, 4) ] = trpt->bup.ovals[1];
	/* 0 */	((P1 *)_this)->reportStatus = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 41: // STATE 43
		;
		_m = unsend(now.cmStatus[ Index(((P1 *)_this)->id, 4) ]);
		;
		goto R999;

	case 42: // STATE 46
		;
	/* 0 */	((P1 *)_this)->currStatus = trpt->bup.oval;
		;
		;
		goto R999;

	case 43: // STATE 48
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

	case 44: // STATE 50
		;
		((P1 *)_this)->currStatus = trpt->bup.ovals[1];
	/* 0 */	((P1 *)_this)->reportStatus = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 45: // STATE 51
		;
		_m = unsend(now.cmStatus[ Index(((P1 *)_this)->id, 4) ]);
		;
		goto R999;

	case 46: // STATE 52
		;
		_m = unsend(now.cmAbleWcp);
		;
		goto R999;

	case 47: // STATE 55
		;
		((P1 *)_this)->currStatus = trpt->bup.ovals[2];
		((P1 *)_this)->connectedClients[ Index(((P1 *)_this)->id, 4) ] = trpt->bup.ovals[1];
	/* 0 */	((P1 *)_this)->reportStatus = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 48: // STATE 56
		;
		_m = unsend(now.cmStatus[ Index(((P1 *)_this)->id, 4) ]);
		;
		goto R999;

	case 49: // STATE 57
		;
		_m = unsend(now.cmAbleWcp);
		;
		goto R999;

	case 50: // STATE 60
		;
	/* 0 */	((P1 *)_this)->currStatus = trpt->bup.oval;
		;
		;
		goto R999;

	case 51: // STATE 61
		;
		XX = 1;
		unrecv(now.wcpRequestCm, XX-1, 0, ((P1 *)_this)->button, 1);
		((P1 *)_this)->button = trpt->bup.oval;
		;
		;
		goto R999;

	case 52: // STATE 63
		;
		((P1 *)_this)->i = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 55: // STATE 66
		;
		_m = unsend(now.wcpRequestClient[ Index(((P1 *)_this)->i, 4) ]);
		;
		goto R999;

	case 56: // STATE 67
		;
		_m = unsend(now.cmStatus[ Index(((P1 *)_this)->i, 4) ]);
		;
		goto R999;

	case 57: // STATE 72
		;
		((P1 *)_this)->i = trpt->bup.oval;
		;
		goto R999;

	case 58: // STATE 72
		;
		((P1 *)_this)->i = trpt->bup.oval;
		;
		goto R999;

	case 59: // STATE 78
		;
		((P1 *)_this)->currStatus = trpt->bup.oval;
		;
		goto R999;

	case 60: // STATE 79
		;
		_m = unsend(now.cmAbleWcp);
		;
		goto R999;

	case 61: // STATE 82
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
		
	case 64: // STATE 85
		;
		_m = unsend(now.cmCommand[ Index(((P1 *)_this)->i, 4) ]);
		;
		goto R999;

	case 65: // STATE 86
		;
		_m = unsend(now.cmStatus[ Index(((P1 *)_this)->i, 4) ]);
		;
		goto R999;

	case 66: // STATE 91
		;
		((P1 *)_this)->i = trpt->bup.oval;
		;
		goto R999;

	case 67: // STATE 91
		;
		((P1 *)_this)->i = trpt->bup.oval;
		;
		goto R999;

	case 68: // STATE 97
		;
		((P1 *)_this)->currStatus = trpt->bup.oval;
		;
		goto R999;

	case 69: // STATE 101
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
		
	case 72: // STATE 104
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

	case 73: // STATE 116
		;
		((P1 *)_this)->i = trpt->bup.ovals[2];
		((P1 *)_this)->hasFail = trpt->bup.ovals[1];
	/* 0 */	((P1 *)_this)->reportStatus = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 74: // STATE 116
		;
		((P1 *)_this)->i = trpt->bup.oval;
		;
		goto R999;

	case 75: // STATE 116
		;
		((P1 *)_this)->i = trpt->bup.oval;
		;
		goto R999;

	case 76: // STATE 116
		;
		((P1 *)_this)->i = trpt->bup.oval;
		;
		goto R999;

	case 77: // STATE 123
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
		
	case 80: // STATE 126
		;
		_m = unsend(now.cmCommand[ Index(((P1 *)_this)->i, 4) ]);
		;
		goto R999;

	case 81: // STATE 127
		;
		_m = unsend(now.cmStatus[ Index(((P1 *)_this)->i, 4) ]);
		;
		goto R999;

	case 82: // STATE 132
		;
		((P1 *)_this)->i = trpt->bup.oval;
		;
		goto R999;

	case 83: // STATE 132
		;
		((P1 *)_this)->i = trpt->bup.oval;
		;
		goto R999;

	case 84: // STATE 138
		;
		((P1 *)_this)->currStatus = trpt->bup.oval;
		;
		goto R999;

	case 85: // STATE 140
		;
		((P1 *)_this)->i = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 88: // STATE 143
		;
		_m = unsend(now.cmCommand[ Index(((P1 *)_this)->i, 4) ]);
		;
		goto R999;

	case 89: // STATE 144
		;
		_m = unsend(now.cmStatus[ Index(((P1 *)_this)->i, 4) ]);
		;
		goto R999;

	case 90: // STATE 149
		;
		((P1 *)_this)->i = trpt->bup.oval;
		;
		goto R999;

	case 91: // STATE 149
		;
		((P1 *)_this)->i = trpt->bup.oval;
		;
		goto R999;

	case 92: // STATE 155
		;
		((P1 *)_this)->currStatus = trpt->bup.oval;
		;
		goto R999;

	case 93: // STATE 161
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
		
	case 96: // STATE 164
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

	case 97: // STATE 176
		;
		((P1 *)_this)->i = trpt->bup.ovals[2];
		((P1 *)_this)->hasFail = trpt->bup.ovals[1];
	/* 0 */	((P1 *)_this)->reportStatus = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 98: // STATE 176
		;
		((P1 *)_this)->i = trpt->bup.oval;
		;
		goto R999;

	case 99: // STATE 176
		;
		((P1 *)_this)->i = trpt->bup.oval;
		;
		goto R999;

	case 100: // STATE 176
		;
		((P1 *)_this)->i = trpt->bup.oval;
		;
		goto R999;

	case 101: // STATE 184
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
		
	case 104: // STATE 187
		;
		_m = unsend(now.cmStatus[ Index(((P1 *)_this)->i, 4) ]);
		;
		goto R999;

	case 105: // STATE 188
		;
		((P1 *)_this)->connectedClients[ Index(((P1 *)_this)->i, 4) ] = trpt->bup.oval;
		;
		goto R999;

	case 106: // STATE 189
		;
		_m = unsend(now.cmCommand[ Index(((P1 *)_this)->i, 4) ]);
		;
		goto R999;

	case 107: // STATE 194
		;
		((P1 *)_this)->i = trpt->bup.oval;
		;
		goto R999;

	case 108: // STATE 194
		;
		((P1 *)_this)->i = trpt->bup.oval;
		;
		goto R999;

	case 109: // STATE 200
		;
		_m = unsend(now.cmAbleWcp);
		;
		goto R999;

	case 110: // STATE 203
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
		
	case 113: // STATE 206
		;
		_m = unsend(now.cmStatus[ Index(((P1 *)_this)->i, 4) ]);
		;
		goto R999;

	case 114: // STATE 207
		;
		_m = unsend(now.cmCommand[ Index(((P1 *)_this)->i, 4) ]);
		;
		goto R999;

	case 115: // STATE 212
		;
		((P1 *)_this)->i = trpt->bup.oval;
		;
		goto R999;

	case 116: // STATE 212
		;
		((P1 *)_this)->i = trpt->bup.oval;
		;
		goto R999;

	case 117: // STATE 218
		;
		_m = unsend(now.cmAbleWcp);
		;
		goto R999;

	case 118: // STATE 224
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
		
	case 121: // STATE 227
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

	case 122: // STATE 239
		;
		((P1 *)_this)->i = trpt->bup.ovals[2];
		((P1 *)_this)->hasFail = trpt->bup.ovals[1];
	/* 0 */	((P1 *)_this)->reportStatus = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 123: // STATE 239
		;
		((P1 *)_this)->i = trpt->bup.oval;
		;
		goto R999;

	case 124: // STATE 239
		;
		((P1 *)_this)->i = trpt->bup.oval;
		;
		goto R999;

	case 125: // STATE 239
		;
		((P1 *)_this)->i = trpt->bup.oval;
		;
		goto R999;

	case 126: // STATE 247
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
		
	case 129: // STATE 250
		;
		_m = unsend(now.cmStatus[ Index(((P1 *)_this)->i, 4) ]);
		;
		goto R999;

	case 130: // STATE 251
		;
		((P1 *)_this)->connectedClients[ Index(((P1 *)_this)->i, 4) ] = trpt->bup.oval;
		;
		goto R999;

	case 131: // STATE 252
		;
		_m = unsend(now.cmCommand[ Index(((P1 *)_this)->i, 4) ]);
		;
		goto R999;

	case 132: // STATE 257
		;
		((P1 *)_this)->i = trpt->bup.oval;
		;
		goto R999;

	case 133: // STATE 257
		;
		((P1 *)_this)->i = trpt->bup.oval;
		;
		goto R999;

	case 134: // STATE 263
		;
		_m = unsend(now.cmAbleWcp);
		;
		goto R999;

	case 135: // STATE 266
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
		
	case 138: // STATE 269
		;
		_m = unsend(now.cmStatus[ Index(((P1 *)_this)->i, 4) ]);
		;
		goto R999;

	case 139: // STATE 270
		;
		_m = unsend(now.cmCommand[ Index(((P1 *)_this)->i, 4) ]);
		;
		goto R999;

	case 140: // STATE 275
		;
		((P1 *)_this)->i = trpt->bup.oval;
		;
		goto R999;

	case 141: // STATE 275
		;
		((P1 *)_this)->i = trpt->bup.oval;
		;
		goto R999;

	case 142: // STATE 281
		;
		_m = unsend(now.cmAbleWcp);
		;
		goto R999;

	case 143: // STATE 287
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Client */
;
		;
		
	case 145: // STATE 2
		;
		_m = unsend(now.cmConnectRequest);
		;
		goto R999;
;
		;
		
	case 147: // STATE 4
		;
		XX = 1;
		unrecv(now.cmConnectReply[ Index(((P0 *)_this)->id, 4) ], XX-1, 0, ((P0 *)_this)->reply, 1);
		((P0 *)_this)->reply = trpt->bup.oval;
		;
		;
		goto R999;

	case 148: // STATE 5
		;
	/* 0 */	((P0 *)_this)->reply = trpt->bup.oval;
		;
		;
		goto R999;

	case 149: // STATE 6
		;
		XX = 1;
		unrecv(now.cmStatus[ Index(((P0 *)_this)->id, 4) ], XX-1, 0, ((P0 *)_this)->currStatus, 1);
		((P0 *)_this)->currStatus = trpt->bup.oval;
		;
		;
		goto R999;

	case 150: // STATE 7
		;
		((P0 *)_this)->connected = trpt->bup.oval;
		;
		goto R999;
;
		
	case 151: // STATE 10
		goto R999;
;
		
	case 152: // STATE 14
		goto R999;

	case 153: // STATE 16
		;
		XX = 1;
		unrecv(now.cmCommand[ Index(((P0 *)_this)->id, 4) ], XX-1, 0, ((P0 *)_this)->currCommand, 1);
		((P0 *)_this)->currCommand = trpt->bup.oval;
		;
		;
		goto R999;

	case 154: // STATE 17
		;
	/* 0 */	((P0 *)_this)->currCommand = trpt->bup.oval;
		;
		;
		goto R999;

	case 155: // STATE 18
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
		
	case 157: // STATE 24
		goto R999;
;
		;
		
	case 159: // STATE 27
		;
		_m = unsend(now.clientReport);
		;
		goto R999;

	case 160: // STATE 28
		;
		XX = 1;
		unrecv(now.cmCommand[ Index(((P0 *)_this)->id, 4) ], XX-1, 0, ((P0 *)_this)->currCommand, 1);
		((P0 *)_this)->currCommand = trpt->bup.oval;
		;
		;
		goto R999;

	case 161: // STATE 29
		;
	/* 0 */	((P0 *)_this)->currCommand = trpt->bup.oval;
		;
		;
		goto R999;

	case 162: // STATE 30
		;
		XX = 1;
		unrecv(now.cmStatus[ Index(((P0 *)_this)->id, 4) ], XX-1, 0, ((P0 *)_this)->currStatus, 1);
		((P0 *)_this)->currStatus = trpt->bup.oval;
		;
		;
		goto R999;
;
		;
		
	case 164: // STATE 37
		;
		_m = unsend(now.clientReport);
		;
		goto R999;

	case 165: // STATE 38
		;
		XX = 1;
		unrecv(now.cmStatus[ Index(((P0 *)_this)->id, 4) ], XX-1, 0, ((P0 *)_this)->currStatus, 1);
		((P0 *)_this)->currStatus = trpt->bup.oval;
		;
		;
		goto R999;

	case 166: // STATE 39
		;
		((P0 *)_this)->connected = trpt->bup.oval;
		;
		goto R999;

	case 167: // STATE 43
		;
	/* 0 */	((P0 *)_this)->currStatus = trpt->bup.oval;
		;
		;
		goto R999;
;
		;
		
	case 169: // STATE 46
		;
		_m = unsend(now.clientReport);
		;
		goto R999;

	case 170: // STATE 47
		;
		XX = 1;
		unrecv(now.cmStatus[ Index(((P0 *)_this)->id, 4) ], XX-1, 0, ((P0 *)_this)->currStatus, 1);
		((P0 *)_this)->currStatus = trpt->bup.oval;
		;
		;
		goto R999;

	case 171: // STATE 49
		;
		_m = unsend(now.clientReport);
		;
		goto R999;

	case 172: // STATE 50
		;
		((P0 *)_this)->connected = trpt->bup.oval;
		;
		goto R999;

	case 173: // STATE 51
		;
		XX = 1;
		unrecv(now.cmStatus[ Index(((P0 *)_this)->id, 4) ], XX-1, 0, ((P0 *)_this)->currStatus, 1);
		((P0 *)_this)->currStatus = trpt->bup.oval;
		;
		;
		goto R999;
;
		;
		
	case 175: // STATE 55
		;
	/* 0 */	((P0 *)_this)->currStatus = trpt->bup.oval;
		;
		;
		goto R999;

	case 176: // STATE 56
		;
	/* 0 */	((P0 *)_this)->button = trpt->bup.ovals[1];
		XX = 1;
		unrecv(now.wcpRequestClient[ Index(((P0 *)_this)->id, 4) ], XX-1, 0, ((P0 *)_this)->button, 1);
		((P0 *)_this)->button = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 178: // STATE 58
		;
		XX = 1;
		unrecv(now.cmStatus[ Index(((P0 *)_this)->id, 4) ], XX-1, 0, ((P0 *)_this)->currStatus, 1);
		((P0 *)_this)->currStatus = trpt->bup.oval;
		;
		;
		goto R999;
;
		
	case 179: // STATE 59
		goto R999;

	case 180: // STATE 61
		;
		XX = 1;
		unrecv(now.cmCommand[ Index(((P0 *)_this)->id, 4) ], XX-1, 0, ((P0 *)_this)->currCommand, 1);
		((P0 *)_this)->currCommand = trpt->bup.oval;
		;
		;
		goto R999;

	case 181: // STATE 62
		;
	/* 0 */	((P0 *)_this)->currCommand = trpt->bup.oval;
		;
		;
		goto R999;

	case 182: // STATE 63
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
		
	case 184: // STATE 69
		goto R999;
;
		;
		
	case 186: // STATE 72
		;
		_m = unsend(now.clientReport);
		;
		goto R999;

	case 187: // STATE 73
		;
		XX = 1;
		unrecv(now.cmCommand[ Index(((P0 *)_this)->id, 4) ], XX-1, 0, ((P0 *)_this)->currCommand, 1);
		((P0 *)_this)->currCommand = trpt->bup.oval;
		;
		;
		goto R999;

	case 188: // STATE 74
		;
	/* 0 */	((P0 *)_this)->currCommand = trpt->bup.oval;
		;
		;
		goto R999;

	case 189: // STATE 75
		;
		XX = 1;
		unrecv(now.cmStatus[ Index(((P0 *)_this)->id, 4) ], XX-1, 0, ((P0 *)_this)->currStatus, 1);
		((P0 *)_this)->currStatus = trpt->bup.oval;
		;
		;
		goto R999;
;
		;
		
	case 191: // STATE 82
		;
		_m = unsend(now.clientReport);
		;
		goto R999;

	case 192: // STATE 83
		;
		XX = 1;
		unrecv(now.cmCommand[ Index(((P0 *)_this)->id, 4) ], XX-1, 0, ((P0 *)_this)->currCommand, 1);
		((P0 *)_this)->currCommand = trpt->bup.oval;
		;
		;
		goto R999;

	case 193: // STATE 84
		;
	/* 0 */	((P0 *)_this)->currCommand = trpt->bup.oval;
		;
		;
		goto R999;

	case 194: // STATE 85
		;
		XX = 1;
		unrecv(now.cmStatus[ Index(((P0 *)_this)->id, 4) ], XX-1, 0, ((P0 *)_this)->currStatus, 1);
		((P0 *)_this)->currStatus = trpt->bup.oval;
		;
		;
		goto R999;
;
		;
		
	case 196: // STATE 93
		;
	/* 0 */	((P0 *)_this)->currStatus = trpt->bup.oval;
		;
		;
		goto R999;
;
		;
		
	case 198: // STATE 96
		;
		_m = unsend(now.clientReport);
		;
		goto R999;

	case 199: // STATE 97
		;
		XX = 1;
		unrecv(now.cmStatus[ Index(((P0 *)_this)->id, 4) ], XX-1, 0, ((P0 *)_this)->currStatus, 1);
		((P0 *)_this)->currStatus = trpt->bup.oval;
		;
		;
		goto R999;

	case 200: // STATE 99
		;
		_m = unsend(now.clientReport);
		;
		goto R999;

	case 201: // STATE 100
		;
		((P0 *)_this)->connected = trpt->bup.oval;
		;
		goto R999;

	case 202: // STATE 101
		;
		XX = 1;
		unrecv(now.cmStatus[ Index(((P0 *)_this)->id, 4) ], XX-1, 0, ((P0 *)_this)->currStatus, 1);
		((P0 *)_this)->currStatus = trpt->bup.oval;
		;
		;
		goto R999;

	case 203: // STATE 104
		;
		XX = 1;
		unrecv(now.cmCommand[ Index(((P0 *)_this)->id, 4) ], XX-1, 0, ((P0 *)_this)->currCommand, 1);
		((P0 *)_this)->currCommand = trpt->bup.oval;
		;
		;
		goto R999;

	case 204: // STATE 106
		;
		((P0 *)_this)->connected = trpt->bup.ovals[1];
	/* 0 */	((P0 *)_this)->currCommand = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 205: // STATE 112
		;
	/* 0 */	((P0 *)_this)->currStatus = trpt->bup.oval;
		;
		;
		goto R999;
;
		;
		
	case 207: // STATE 115
		;
		_m = unsend(now.clientReport);
		;
		goto R999;

	case 208: // STATE 116
		;
		XX = 1;
		unrecv(now.cmStatus[ Index(((P0 *)_this)->id, 4) ], XX-1, 0, ((P0 *)_this)->currStatus, 1);
		((P0 *)_this)->currStatus = trpt->bup.oval;
		;
		;
		goto R999;

	case 209: // STATE 118
		;
		_m = unsend(now.clientReport);
		;
		goto R999;

	case 210: // STATE 119
		;
		((P0 *)_this)->connected = trpt->bup.oval;
		;
		goto R999;

	case 211: // STATE 120
		;
		XX = 1;
		unrecv(now.cmStatus[ Index(((P0 *)_this)->id, 4) ], XX-1, 0, ((P0 *)_this)->currStatus, 1);
		((P0 *)_this)->currStatus = trpt->bup.oval;
		;
		;
		goto R999;

	case 212: // STATE 123
		;
		XX = 1;
		unrecv(now.cmCommand[ Index(((P0 *)_this)->id, 4) ], XX-1, 0, ((P0 *)_this)->currCommand, 1);
		((P0 *)_this)->currCommand = trpt->bup.oval;
		;
		;
		goto R999;

	case 213: // STATE 125
		;
		((P0 *)_this)->connected = trpt->bup.ovals[1];
	/* 0 */	((P0 *)_this)->currCommand = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 214: // STATE 134
		;
		p_restor(II);
		;
		;
		goto R999;
	}


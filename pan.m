#define rand	pan_rand
#define pthread_equal(a,b)	((a)==(b))
#if defined(HAS_CODE) && defined(VERBOSE)
	#ifdef BFS_PAR
		bfs_printf("Pr: %d Tr: %d\n", II, t->forw);
	#else
		cpu_printf("Pr: %d Tr: %d\n", II, t->forw);
	#endif
#endif
	switch (t->forw) {
	default: Uerror("bad forward move");
	case 0:	/* if without executable clauses */
		continue;
	case 1: /* generic 'goto' or 'skip' */
		IfNotBlocked
		_m = 3; goto P999;
	case 2: /* generic 'else' */
		IfNotBlocked
		if (trpt->o_pm&1) continue;
		_m = 3; goto P999;

		 /* PROC :init: */
	case 3: // STATE 1 - problem2.pml:106 - [(run Client(0))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][1] = 1;
		if (!(addproc(II, 1, 0, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 2 - problem2.pml:107 - [(run Client(1))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][2] = 1;
		if (!(addproc(II, 1, 0, 1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 5: // STATE 3 - problem2.pml:108 - [(run Client(2))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][3] = 1;
		if (!(addproc(II, 1, 0, 2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 6: // STATE 4 - problem2.pml:109 - [(run Client(3))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][4] = 1;
		if (!(addproc(II, 1, 0, 3)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 5 - problem2.pml:110 - [(run CommsManager())] (0:0:0 - 1)
		IfNotBlocked
		reached[3][5] = 1;
		if (!(addproc(II, 1, 1, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 6 - problem2.pml:111 - [(run ControlPanel())] (0:0:0 - 1)
		IfNotBlocked
		reached[3][6] = 1;
		if (!(addproc(II, 1, 2, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 9: // STATE 8 - problem2.pml:113 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[3][8] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC ControlPanel */
	case 10: // STATE 1 - problem2.pml:96 - [cmAbleWcp?able] (0:0:1 - 1)
		reached[2][1] = 1;
		if (q_len(now.cmAbleWcp) == 0) continue;

		XX=1;
		(trpt+1)->bup.oval = now.able;
		;
		now.able = qrecv(now.cmAbleWcp, XX-1, 0, 1);
#ifdef VAR_RANGES
		logval("able", now.able);
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.cmAbleWcp);
		sprintf(simtmp, "%d", now.able); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 11: // STATE 2 - problem2.pml:98 - [((able==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][2] = 1;
		if (!((now.able==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 12: // STATE 3 - problem2.pml:98 - [disabled = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[2][3] = 1;
		(trpt+1)->bup.oval = ((int)((P2 *)_this)->disabled);
		((P2 *)_this)->disabled = 0;
#ifdef VAR_RANGES
		logval("ControlPanel:disabled", ((int)((P2 *)_this)->disabled));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 13: // STATE 5 - problem2.pml:99 - [disabled = 1] (0:0:2 - 1)
		IfNotBlocked
		reached[2][5] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P2 *)_this)->disabled);
		((P2 *)_this)->disabled = 1;
#ifdef VAR_RANGES
		logval("ControlPanel:disabled", ((int)((P2 *)_this)->disabled));
#endif
		;
		if (TstOnly) return 1; /* TT */
		/* dead 2: disabled */  
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P2 *)_this)->disabled = 0;
		_m = 3; goto P999; /* 0 */
	case 14: // STATE 11 - problem2.pml:102 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[2][11] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC CommsManager */
	case 15: // STATE 1 - problem2.pml:59 - [cmConnectRequest?id] (0:0:1 - 1)
		reached[1][1] = 1;
		if (q_len(now.cmConnectRequest) == 0) continue;

		XX=1;
		(trpt+1)->bup.oval = ((P1 *)_this)->id;
		;
		((P1 *)_this)->id = qrecv(now.cmConnectRequest, XX-1, 0, 1);
#ifdef VAR_RANGES
		logval("CommsManager:id", ((P1 *)_this)->id);
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.cmConnectRequest);
		sprintf(simtmp, "%d", ((P1 *)_this)->id); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 16: // STATE 2 - problem2.pml:61 - [reply = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][2] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->reply;
		((P1 *)_this)->reply = 0;
#ifdef VAR_RANGES
		logval("CommsManager:reply", ((P1 *)_this)->reply);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 17: // STATE 3 - problem2.pml:62 - [(4)] (6:0:3 - 1)
		IfNotBlocked
		reached[1][3] = 1;
		if (!(4))
			continue;
		/* merge: reply = 2(6, 4, 6) */
		reached[1][4] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->reply;
		((P1 *)_this)->reply = 2;
#ifdef VAR_RANGES
		logval("CommsManager:reply", ((P1 *)_this)->reply);
#endif
		;
		/* merge: initStatus = 3(6, 5, 6) */
		reached[1][5] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)_this)->initStatus;
		((P1 *)_this)->initStatus = 3;
#ifdef VAR_RANGES
		logval("CommsManager:initStatus", ((P1 *)_this)->initStatus);
#endif
		;
		if (TstOnly) return 1; /* TT */
		/* dead 2: initStatus */  
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->initStatus = 0;
		_m = 3; goto P999; /* 2 */
	case 18: // STATE 6 - problem2.pml:63 - [connectedClients!id] (0:0:0 - 1)
		IfNotBlocked
		reached[1][6] = 1;
		if (q_full(((P1 *)_this)->connectedClients))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", ((P1 *)_this)->connectedClients);
		sprintf(simtmp, "%d", ((P1 *)_this)->id); strcat(simvals, simtmp);		}
#endif
		
		qsend(((P1 *)_this)->connectedClients, 0, ((P1 *)_this)->id, 0, 1);
		_m = 2; goto P999; /* 0 */
	case 19: // STATE 7 - problem2.pml:64 - [able = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][7] = 1;
		(trpt+1)->bup.oval = now.able;
		now.able = 1;
#ifdef VAR_RANGES
		logval("able", now.able);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 20: // STATE 8 - problem2.pml:64 - [cmAbleWcp!able] (0:0:0 - 1)
		IfNotBlocked
		reached[1][8] = 1;
		if (q_full(now.cmAbleWcp))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.cmAbleWcp);
		sprintf(simtmp, "%d", now.able); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.cmAbleWcp, 0, now.able, 0, 1);
		_m = 2; goto P999; /* 0 */
	case 21: // STATE 10 - problem2.pml:65 - [reply = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][10] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->reply;
		((P1 *)_this)->reply = 1;
#ifdef VAR_RANGES
		logval("CommsManager:reply", ((P1 *)_this)->reply);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 22: // STATE 13 - problem2.pml:67 - [cmConnectReply[id]!reply] (0:0:0 - 3)
		IfNotBlocked
		reached[1][13] = 1;
		if (q_full(now.cmConnectReply[ Index(((P1 *)_this)->id, 4) ]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.cmConnectReply[ Index(((P1 *)_this)->id, 4) ]);
		sprintf(simtmp, "%d", ((P1 *)_this)->reply); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.cmConnectReply[ Index(((P1 *)_this)->id, 4) ], 0, ((P1 *)_this)->reply, 0, 1);
		_m = 2; goto P999; /* 0 */
	case 23: // STATE 14 - problem2.pml:68 - [initStatus = 3] (0:0:2 - 1)
		IfNotBlocked
		reached[1][14] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->initStatus;
		((P1 *)_this)->initStatus = 3;
#ifdef VAR_RANGES
		logval("CommsManager:initStatus", ((P1 *)_this)->initStatus);
#endif
		;
		if (TstOnly) return 1; /* TT */
		/* dead 2: initStatus */  
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->initStatus = 0;
		_m = 3; goto P999; /* 0 */
	case 24: // STATE 15 - problem2.pml:69 - [cmCommand[id]!2] (0:0:0 - 1)
		IfNotBlocked
		reached[1][15] = 1;
		if (q_full(now.cmCommand[ Index(((P1 *)_this)->id, 4) ]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.cmCommand[ Index(((P1 *)_this)->id, 4) ]);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.cmCommand[ Index(((P1 *)_this)->id, 4) ], 0, 2, 0, 1);
		_m = 2; goto P999; /* 0 */
	case 25: // STATE 16 - problem2.pml:70 - [initStatus = 2] (0:0:2 - 1)
		IfNotBlocked
		reached[1][16] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->initStatus;
		((P1 *)_this)->initStatus = 2;
#ifdef VAR_RANGES
		logval("CommsManager:initStatus", ((P1 *)_this)->initStatus);
#endif
		;
		if (TstOnly) return 1; /* TT */
		/* dead 2: initStatus */  
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->initStatus = 0;
		_m = 3; goto P999; /* 0 */
	case 26: // STATE 17 - problem2.pml:71 - [initStatus = 2] (0:0:2 - 1)
		IfNotBlocked
		reached[1][17] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->initStatus;
		((P1 *)_this)->initStatus = 2;
#ifdef VAR_RANGES
		logval("CommsManager:initStatus", ((P1 *)_this)->initStatus);
#endif
		;
		if (TstOnly) return 1; /* TT */
		/* dead 2: initStatus */  
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->initStatus = 0;
		_m = 3; goto P999; /* 0 */
	case 27: // STATE 18 - problem2.pml:72 - [clientReport?reportStatus,id] (0:0:2 - 1)
		reached[1][18] = 1;
		if (q_len(now.clientReport) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->reportStatus;
		(trpt+1)->bup.ovals[1] = ((P1 *)_this)->id;
		;
		((P1 *)_this)->reportStatus = qrecv(now.clientReport, XX-1, 0, 0);
#ifdef VAR_RANGES
		logval("CommsManager:reportStatus", ((P1 *)_this)->reportStatus);
#endif
		;
		((P1 *)_this)->id = qrecv(now.clientReport, XX-1, 1, 1);
#ifdef VAR_RANGES
		logval("CommsManager:id", ((P1 *)_this)->id);
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.clientReport);
		sprintf(simtmp, "%d", ((P1 *)_this)->reportStatus); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P1 *)_this)->id); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 28: // STATE 19 - problem2.pml:74 - [((reportStatus==2))] (0:0:1 - 1)
		IfNotBlocked
		reached[1][19] = 1;
		if (!((((P1 *)_this)->reportStatus==2)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: reportStatus */  (trpt+1)->bup.oval = ((P1 *)_this)->reportStatus;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->reportStatus = 0;
		_m = 3; goto P999; /* 0 */
	case 29: // STATE 20 - problem2.pml:74 - [cmCommand[id]!1] (0:0:0 - 1)
		IfNotBlocked
		reached[1][20] = 1;
		if (q_full(now.cmCommand[ Index(((P1 *)_this)->id, 4) ]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.cmCommand[ Index(((P1 *)_this)->id, 4) ]);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.cmCommand[ Index(((P1 *)_this)->id, 4) ], 0, 1, 0, 1);
		_m = 2; goto P999; /* 0 */
	case 30: // STATE 21 - problem2.pml:75 - [initStatus = 1] (0:0:2 - 1)
		IfNotBlocked
		reached[1][21] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->initStatus;
		((P1 *)_this)->initStatus = 1;
#ifdef VAR_RANGES
		logval("CommsManager:initStatus", ((P1 *)_this)->initStatus);
#endif
		;
		if (TstOnly) return 1; /* TT */
		/* dead 2: initStatus */  
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->initStatus = 0;
		_m = 3; goto P999; /* 0 */
	case 31: // STATE 22 - problem2.pml:76 - [((reportStatus==1))] (0:0:1 - 1)
		IfNotBlocked
		reached[1][22] = 1;
		if (!((((P1 *)_this)->reportStatus==1)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: reportStatus */  (trpt+1)->bup.oval = ((P1 *)_this)->reportStatus;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->reportStatus = 0;
		_m = 3; goto P999; /* 0 */
	case 32: // STATE 23 - problem2.pml:76 - [connectedClients?id] (0:0:1 - 1)
		reached[1][23] = 1;
		if (q_len(((P1 *)_this)->connectedClients) == 0) continue;

		XX=1;
		(trpt+1)->bup.oval = ((P1 *)_this)->id;
		;
		((P1 *)_this)->id = qrecv(((P1 *)_this)->connectedClients, XX-1, 0, 1);
#ifdef VAR_RANGES
		logval("CommsManager:id", ((P1 *)_this)->id);
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", ((P1 *)_this)->connectedClients);
		sprintf(simtmp, "%d", ((P1 *)_this)->id); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 33: // STATE 24 - problem2.pml:77 - [initStatus = 4] (0:0:2 - 1)
		IfNotBlocked
		reached[1][24] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->initStatus;
		((P1 *)_this)->initStatus = 4;
#ifdef VAR_RANGES
		logval("CommsManager:initStatus", ((P1 *)_this)->initStatus);
#endif
		;
		if (TstOnly) return 1; /* TT */
		/* dead 2: initStatus */  
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->initStatus = 0;
		_m = 3; goto P999; /* 0 */
	case 34: // STATE 27 - problem2.pml:79 - [initStatus = 1] (0:0:2 - 1)
		IfNotBlocked
		reached[1][27] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->initStatus;
		((P1 *)_this)->initStatus = 1;
#ifdef VAR_RANGES
		logval("CommsManager:initStatus", ((P1 *)_this)->initStatus);
#endif
		;
		if (TstOnly) return 1; /* TT */
		/* dead 2: initStatus */  
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->initStatus = 0;
		_m = 3; goto P999; /* 0 */
	case 35: // STATE 28 - problem2.pml:80 - [clientReport?reportStatus,id] (0:0:2 - 1)
		reached[1][28] = 1;
		if (q_len(now.clientReport) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->reportStatus;
		(trpt+1)->bup.ovals[1] = ((P1 *)_this)->id;
		;
		((P1 *)_this)->reportStatus = qrecv(now.clientReport, XX-1, 0, 0);
#ifdef VAR_RANGES
		logval("CommsManager:reportStatus", ((P1 *)_this)->reportStatus);
#endif
		;
		((P1 *)_this)->id = qrecv(now.clientReport, XX-1, 1, 1);
#ifdef VAR_RANGES
		logval("CommsManager:id", ((P1 *)_this)->id);
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.clientReport);
		sprintf(simtmp, "%d", ((P1 *)_this)->reportStatus); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P1 *)_this)->id); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 36: // STATE 29 - problem2.pml:82 - [ability = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][29] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->ability;
		((P1 *)_this)->ability = 0;
#ifdef VAR_RANGES
		logval("CommsManager:ability", ((P1 *)_this)->ability);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 37: // STATE 30 - problem2.pml:83 - [((reportStatus==2))] (33:0:5 - 1)
		IfNotBlocked
		reached[1][30] = 1;
		if (!((((P1 *)_this)->reportStatus==2)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: reportStatus */  (trpt+1)->bup.ovals = grab_ints(5);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->reportStatus;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->reportStatus = 0;
		/* merge: initStatus = 4(33, 31, 33) */
		reached[1][31] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)_this)->initStatus;
		((P1 *)_this)->initStatus = 4;
#ifdef VAR_RANGES
		logval("CommsManager:initStatus", ((P1 *)_this)->initStatus);
#endif
		;
		if (TstOnly) return 1; /* TT */
		/* dead 2: initStatus */  
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->initStatus = 0;
		/* merge: ability = 2(33, 32, 33) */
		reached[1][32] = 1;
		(trpt+1)->bup.ovals[2] = ((P1 *)_this)->ability;
		((P1 *)_this)->ability = 2;
#ifdef VAR_RANGES
		logval("CommsManager:ability", ((P1 *)_this)->ability);
#endif
		;
		if (TstOnly) return 1; /* TT */
		/* dead 2: ability */  
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->ability = 0;
		_m = 3; goto P999; /* 2 */
	case 38: // STATE 33 - problem2.pml:84 - [cmAbleWcp!able] (0:0:0 - 1)
		IfNotBlocked
		reached[1][33] = 1;
		if (q_full(now.cmAbleWcp))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.cmAbleWcp);
		sprintf(simtmp, "%d", now.able); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.cmAbleWcp, 0, now.able, 0, 1);
		_m = 2; goto P999; /* 0 */
	case 39: // STATE 34 - problem2.pml:85 - [((reportStatus==1))] (0:0:1 - 1)
		IfNotBlocked
		reached[1][34] = 1;
		if (!((((P1 *)_this)->reportStatus==1)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: reportStatus */  (trpt+1)->bup.oval = ((P1 *)_this)->reportStatus;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->reportStatus = 0;
		_m = 3; goto P999; /* 0 */
	case 40: // STATE 35 - problem2.pml:85 - [connectedClients?id] (0:0:1 - 1)
		reached[1][35] = 1;
		if (q_len(((P1 *)_this)->connectedClients) == 0) continue;

		XX=1;
		(trpt+1)->bup.oval = ((P1 *)_this)->id;
		;
		((P1 *)_this)->id = qrecv(((P1 *)_this)->connectedClients, XX-1, 0, 1);
#ifdef VAR_RANGES
		logval("CommsManager:id", ((P1 *)_this)->id);
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", ((P1 *)_this)->connectedClients);
		sprintf(simtmp, "%d", ((P1 *)_this)->id); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 41: // STATE 36 - problem2.pml:86 - [initStatus = 4] (0:38:4 - 1)
		IfNotBlocked
		reached[1][36] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->initStatus;
		((P1 *)_this)->initStatus = 4;
#ifdef VAR_RANGES
		logval("CommsManager:initStatus", ((P1 *)_this)->initStatus);
#endif
		;
		if (TstOnly) return 1; /* TT */
		/* dead 2: initStatus */  
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->initStatus = 0;
		/* merge: ability = 2(38, 37, 38) */
		reached[1][37] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)_this)->ability;
		((P1 *)_this)->ability = 2;
#ifdef VAR_RANGES
		logval("CommsManager:ability", ((P1 *)_this)->ability);
#endif
		;
		if (TstOnly) return 1; /* TT */
		/* dead 2: ability */  
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->ability = 0;
		_m = 3; goto P999; /* 1 */
	case 42: // STATE 38 - problem2.pml:87 - [cmAbleWcp!able] (0:0:0 - 1)
		IfNotBlocked
		reached[1][38] = 1;
		if (q_full(now.cmAbleWcp))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.cmAbleWcp);
		sprintf(simtmp, "%d", now.able); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.cmAbleWcp, 0, now.able, 0, 1);
		_m = 2; goto P999; /* 0 */
	case 43: // STATE 44 - problem2.pml:90 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][44] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Client */
	case 44: // STATE 1 - problem2.pml:27 - [cmConnectRequest!id] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		if (q_full(now.cmConnectRequest))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.cmConnectRequest);
		sprintf(simtmp, "%d", ((P0 *)_this)->id); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.cmConnectRequest, 0, ((P0 *)_this)->id, 0, 1);
		_m = 2; goto P999; /* 0 */
	case 45: // STATE 2 - problem2.pml:28 - [cmConnectReply[id]?reply] (0:0:1 - 1)
		reached[0][2] = 1;
		if (q_len(now.cmConnectReply[ Index(((P0 *)_this)->id, 4) ]) == 0) continue;

		XX=1;
		(trpt+1)->bup.oval = ((P0 *)_this)->reply;
		;
		((P0 *)_this)->reply = qrecv(now.cmConnectReply[ Index(((P0 *)_this)->id, 4) ], XX-1, 0, 1);
#ifdef VAR_RANGES
		logval("Client:reply", ((P0 *)_this)->reply);
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.cmConnectReply[ Index(((P0 *)_this)->id, 4) ]);
		sprintf(simtmp, "%d", ((P0 *)_this)->reply); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 46: // STATE 3 - problem2.pml:30 - [((reply==2))] (32:0:5 - 1)
		IfNotBlocked
		reached[0][3] = 1;
		if (!((((P0 *)_this)->reply==2)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: reply */  (trpt+1)->bup.ovals = grab_ints(5);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->reply;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->reply = 0;
		/* merge: initStatus = 3(32, 4, 32) */
		reached[0][4] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->initStatus;
		((P0 *)_this)->initStatus = 3;
#ifdef VAR_RANGES
		logval("Client:initStatus", ((P0 *)_this)->initStatus);
#endif
		;
		if (TstOnly) return 1; /* TT */
		/* dead 2: initStatus */  
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->initStatus = 0;
		/* merge: connected = 1(32, 5, 32) */
		reached[0][5] = 1;
		(trpt+1)->bup.ovals[2] = ((int)((P0 *)_this)->connected);
		((P0 *)_this)->connected = 1;
#ifdef VAR_RANGES
		logval("Client:connected", ((int)((P0 *)_this)->connected));
#endif
		;
		if (TstOnly) return 1; /* TT */
		/* dead 2: connected */  
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->connected = 0;
		/* merge: .(goto)(0, 9, 32) */
		reached[0][9] = 1;
		;
		/* merge: .(goto)(0, 33, 32) */
		reached[0][33] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 47: // STATE 10 - problem2.pml:33 - [initStatus = 3] (0:0:2 - 1)
		IfNotBlocked
		reached[0][10] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->initStatus;
		((P0 *)_this)->initStatus = 3;
#ifdef VAR_RANGES
		logval("Client:initStatus", ((P0 *)_this)->initStatus);
#endif
		;
		if (TstOnly) return 1; /* TT */
		/* dead 2: initStatus */  
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->initStatus = 0;
		_m = 3; goto P999; /* 0 */
	case 48: // STATE 11 - problem2.pml:34 - [cmCommand[id]?2] (0:0:0 - 1)
		reached[0][11] = 1;
		if (q_len(now.cmCommand[ Index(((P0 *)_this)->id, 4) ]) == 0) continue;

		XX=1;
		if (2 != qrecv(now.cmCommand[ Index(((P0 *)_this)->id, 4) ], 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.cmCommand[ Index(((P0 *)_this)->id, 4) ]-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.cmCommand[ Index(((P0 *)_this)->id, 4) ], XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.cmCommand[ Index(((P0 *)_this)->id, 4) ]);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 49: // STATE 12 - problem2.pml:35 - [initStatus = 2] (0:0:2 - 1)
		IfNotBlocked
		reached[0][12] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->initStatus;
		((P0 *)_this)->initStatus = 2;
#ifdef VAR_RANGES
		logval("Client:initStatus", ((P0 *)_this)->initStatus);
#endif
		;
		if (TstOnly) return 1; /* TT */
		/* dead 2: initStatus */  
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->initStatus = 0;
		_m = 3; goto P999; /* 0 */
	case 50: // STATE 13 - problem2.pml:36 - [initStatus = 2] (0:0:2 - 1)
		IfNotBlocked
		reached[0][13] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->initStatus;
		((P0 *)_this)->initStatus = 2;
#ifdef VAR_RANGES
		logval("Client:initStatus", ((P0 *)_this)->initStatus);
#endif
		;
		if (TstOnly) return 1; /* TT */
		/* dead 2: initStatus */  
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->initStatus = 0;
		_m = 3; goto P999; /* 0 */
	case 51: // STATE 14 - problem2.pml:38 - [(getInfoSuccess)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][14] = 1;
		if (!(((int)((P0 *)_this)->getInfoSuccess)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 52: // STATE 15 - problem2.pml:38 - [clientReport!2,id] (0:0:0 - 1)
		IfNotBlocked
		reached[0][15] = 1;
		if (q_full(now.clientReport))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.clientReport);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->id); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.clientReport, 0, 2, ((P0 *)_this)->id, 2);
		_m = 2; goto P999; /* 0 */
	case 53: // STATE 16 - problem2.pml:39 - [cmCommand[id]?1] (0:0:0 - 1)
		reached[0][16] = 1;
		if (q_len(now.cmCommand[ Index(((P0 *)_this)->id, 4) ]) == 0) continue;

		XX=1;
		if (1 != qrecv(now.cmCommand[ Index(((P0 *)_this)->id, 4) ], 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.cmCommand[ Index(((P0 *)_this)->id, 4) ]-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.cmCommand[ Index(((P0 *)_this)->id, 4) ], XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.cmCommand[ Index(((P0 *)_this)->id, 4) ]);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 54: // STATE 17 - problem2.pml:39 - [initStatus = 1] (0:0:2 - 1)
		IfNotBlocked
		reached[0][17] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->initStatus;
		((P0 *)_this)->initStatus = 1;
#ifdef VAR_RANGES
		logval("Client:initStatus", ((P0 *)_this)->initStatus);
#endif
		;
		if (TstOnly) return 1; /* TT */
		/* dead 2: initStatus */  
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->initStatus = 0;
		_m = 3; goto P999; /* 0 */
	case 55: // STATE 19 - problem2.pml:40 - [connected = 0] (0:32:3 - 1)
		IfNotBlocked
		reached[0][19] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)((P0 *)_this)->connected);
		((P0 *)_this)->connected = 0;
#ifdef VAR_RANGES
		logval("Client:connected", ((int)((P0 *)_this)->connected));
#endif
		;
		/* merge: initStatus = 4(32, 20, 32) */
		reached[0][20] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->initStatus;
		((P0 *)_this)->initStatus = 4;
#ifdef VAR_RANGES
		logval("Client:initStatus", ((P0 *)_this)->initStatus);
#endif
		;
		if (TstOnly) return 1; /* TT */
		/* dead 2: initStatus */  
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->initStatus = 0;
		/* merge: .(goto)(0, 22, 32) */
		reached[0][22] = 1;
		;
		/* merge: .(goto)(0, 33, 32) */
		reached[0][33] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 56: // STATE 23 - problem2.pml:43 - [initStatus = 1] (0:0:2 - 1)
		IfNotBlocked
		reached[0][23] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->initStatus;
		((P0 *)_this)->initStatus = 1;
#ifdef VAR_RANGES
		logval("Client:initStatus", ((P0 *)_this)->initStatus);
#endif
		;
		if (TstOnly) return 1; /* TT */
		/* dead 2: initStatus */  
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->initStatus = 0;
		_m = 3; goto P999; /* 0 */
	case 57: // STATE 24 - problem2.pml:45 - [(useInfoSuccess)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][24] = 1;
		if (!(((int)((P0 *)_this)->useInfoSuccess)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 58: // STATE 25 - problem2.pml:45 - [clientReport!2,id] (0:0:0 - 1)
		IfNotBlocked
		reached[0][25] = 1;
		if (q_full(now.clientReport))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.clientReport);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->id); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.clientReport, 0, 2, ((P0 *)_this)->id, 2);
		_m = 2; goto P999; /* 0 */
	case 59: // STATE 26 - problem2.pml:46 - [initStatus = 4] (0:0:2 - 1)
		IfNotBlocked
		reached[0][26] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->initStatus;
		((P0 *)_this)->initStatus = 4;
#ifdef VAR_RANGES
		logval("Client:initStatus", ((P0 *)_this)->initStatus);
#endif
		;
		if (TstOnly) return 1; /* TT */
		/* dead 2: initStatus */  
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->initStatus = 0;
		_m = 3; goto P999; /* 0 */
	case 60: // STATE 28 - problem2.pml:47 - [connected = 0] (0:32:3 - 1)
		IfNotBlocked
		reached[0][28] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)((P0 *)_this)->connected);
		((P0 *)_this)->connected = 0;
#ifdef VAR_RANGES
		logval("Client:connected", ((int)((P0 *)_this)->connected));
#endif
		;
		/* merge: initStatus = 4(32, 29, 32) */
		reached[0][29] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->initStatus;
		((P0 *)_this)->initStatus = 4;
#ifdef VAR_RANGES
		logval("Client:initStatus", ((P0 *)_this)->initStatus);
#endif
		;
		if (TstOnly) return 1; /* TT */
		/* dead 2: initStatus */  
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->initStatus = 0;
		/* merge: .(goto)(0, 31, 32) */
		reached[0][31] = 1;
		;
		/* merge: .(goto)(0, 33, 32) */
		reached[0][33] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 61: // STATE 35 - problem2.pml:51 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][35] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */
	case  _T5:	/* np_ */
		if (!((!(trpt->o_pm&4) && !(trpt->tau&128))))
			continue;
		/* else fall through */
	case  _T2:	/* true */
		_m = 3; goto P999;
#undef rand
	}


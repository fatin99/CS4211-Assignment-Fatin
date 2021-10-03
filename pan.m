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
	case 3: // STATE 1 - problem2.pml:204 - [(run Client(0))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][1] = 1;
		if (!(addproc(II, 1, 0, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 2 - problem2.pml:205 - [(run Client(1))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][2] = 1;
		if (!(addproc(II, 1, 0, 1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 5: // STATE 3 - problem2.pml:206 - [(run Client(2))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][3] = 1;
		if (!(addproc(II, 1, 0, 2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 6: // STATE 4 - problem2.pml:207 - [(run Client(3))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][4] = 1;
		if (!(addproc(II, 1, 0, 3)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 5 - problem2.pml:208 - [(run CommsManager())] (0:0:0 - 1)
		IfNotBlocked
		reached[3][5] = 1;
		if (!(addproc(II, 1, 1, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 6 - problem2.pml:209 - [(run ControlPanel())] (0:0:0 - 1)
		IfNotBlocked
		reached[3][6] = 1;
		if (!(addproc(II, 1, 2, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 9: // STATE 8 - problem2.pml:211 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[3][8] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC ControlPanel */
	case 10: // STATE 1 - problem2.pml:191 - [cmAbleWcp?ability] (0:0:1 - 1)
		reached[2][1] = 1;
		if (q_len(now.cmAbleWcp) == 0) continue;

		XX=1;
		(trpt+1)->bup.oval = ((P2 *)_this)->ability;
		;
		((P2 *)_this)->ability = qrecv(now.cmAbleWcp, XX-1, 0, 1);
#ifdef VAR_RANGES
		logval("ControlPanel:ability", ((P2 *)_this)->ability);
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.cmAbleWcp);
		sprintf(simtmp, "%d", ((P2 *)_this)->ability); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 11: // STATE 2 - problem2.pml:193 - [((ability==2))] (11:0:2 - 1)
		IfNotBlocked
		reached[2][2] = 1;
		if (!((((P2 *)_this)->ability==2)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: ability */  (trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P2 *)_this)->ability;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P2 *)_this)->ability = 0;
		/* merge: disabled = 0(0, 3, 11) */
		reached[2][3] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P2 *)_this)->disabled);
		((P2 *)_this)->disabled = 0;
#ifdef VAR_RANGES
		logval("ControlPanel:disabled", ((int)((P2 *)_this)->disabled));
#endif
		;
		/* merge: .(goto)(0, 7, 11) */
		reached[2][7] = 1;
		;
		/* merge: .(goto)(0, 12, 11) */
		reached[2][12] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 12: // STATE 5 - problem2.pml:194 - [disabled = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[2][5] = 1;
		(trpt+1)->bup.oval = ((int)((P2 *)_this)->disabled);
		((P2 *)_this)->disabled = 1;
#ifdef VAR_RANGES
		logval("ControlPanel:disabled", ((int)((P2 *)_this)->disabled));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 13: // STATE 8 - problem2.pml:196 - [(!(disabled))] (10:0:1 - 1)
		IfNotBlocked
		reached[2][8] = 1;
		if (!( !(((int)((P2 *)_this)->disabled))))
			continue;
		/* merge: button = 1(0, 9, 10) */
		reached[2][9] = 1;
		(trpt+1)->bup.oval = ((P2 *)_this)->button;
		((P2 *)_this)->button = 1;
#ifdef VAR_RANGES
		logval("ControlPanel:button", ((P2 *)_this)->button);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 14: // STATE 10 - problem2.pml:198 - [wcpRequest!button] (0:0:0 - 1)
		IfNotBlocked
		reached[2][10] = 1;
		if (q_full(now.wcpRequest))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.wcpRequest);
		sprintf(simtmp, "%d", ((P2 *)_this)->button); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.wcpRequest, 0, ((P2 *)_this)->button, 0, 1);
		_m = 2; goto P999; /* 0 */
	case 15: // STATE 14 - problem2.pml:200 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[2][14] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC CommsManager */
	case 16: // STATE 1 - problem2.pml:93 - [(nempty(cmConnectRequest))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][1] = 1;
		if (!((q_len(now.cmConnectRequest)>0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 17: // STATE 2 - problem2.pml:94 - [cmConnectRequest?id] (0:0:1 - 1)
		reached[1][2] = 1;
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
	case 18: // STATE 3 - problem2.pml:96 - [reply = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][3] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->reply;
		((P1 *)_this)->reply = 0;
#ifdef VAR_RANGES
		logval("CommsManager:reply", ((P1 *)_this)->reply);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 19: // STATE 4 - problem2.pml:97 - [((currStatus==8))] (7:0:3 - 1)
		IfNotBlocked
		reached[1][4] = 1;
		if (!((((P1 *)_this)->currStatus==8)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: currStatus */  (trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->currStatus;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->currStatus = 0;
		/* merge: reply = 2(7, 5, 7) */
		reached[1][5] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)_this)->reply;
		((P1 *)_this)->reply = 2;
#ifdef VAR_RANGES
		logval("CommsManager:reply", ((P1 *)_this)->reply);
#endif
		;
		/* merge: currStatus = 7(7, 6, 7) */
		reached[1][6] = 1;
		(trpt+1)->bup.ovals[2] = ((P1 *)_this)->currStatus;
		((P1 *)_this)->currStatus = 7;
#ifdef VAR_RANGES
		logval("CommsManager:currStatus", ((P1 *)_this)->currStatus);
#endif
		;
		_m = 3; goto P999; /* 2 */
	case 20: // STATE 7 - problem2.pml:98 - [connectedClients!id] (0:0:0 - 1)
		IfNotBlocked
		reached[1][7] = 1;
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
	case 21: // STATE 8 - problem2.pml:99 - [cmAbleWcp!1] (0:0:0 - 1)
		IfNotBlocked
		reached[1][8] = 1;
		if (q_full(now.cmAbleWcp))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.cmAbleWcp);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.cmAbleWcp, 0, 1, 0, 1);
		_m = 2; goto P999; /* 0 */
	case 22: // STATE 10 - problem2.pml:100 - [reply = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][10] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->reply;
		((P1 *)_this)->reply = 1;
#ifdef VAR_RANGES
		logval("CommsManager:reply", ((P1 *)_this)->reply);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 23: // STATE 13 - problem2.pml:102 - [cmConnectReply[id]!reply] (0:0:0 - 3)
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
	case 24: // STATE 14 - problem2.pml:103 - [((currStatus==7))] (0:0:1 - 1)
		IfNotBlocked
		reached[1][14] = 1;
		if (!((((P1 *)_this)->currStatus==7)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: currStatus */  (trpt+1)->bup.oval = ((P1 *)_this)->currStatus;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->currStatus = 0;
		_m = 3; goto P999; /* 0 */
	case 25: // STATE 15 - problem2.pml:104 - [cmCommand[id]!3] (0:0:0 - 1)
		IfNotBlocked
		reached[1][15] = 1;
		if (q_full(now.cmCommand[ Index(((P1 *)_this)->id, 4) ]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.cmCommand[ Index(((P1 *)_this)->id, 4) ]);
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.cmCommand[ Index(((P1 *)_this)->id, 4) ], 0, 3, 0, 1);
		_m = 2; goto P999; /* 0 */
	case 26: // STATE 16 - problem2.pml:105 - [currStatus = 6] (0:0:1 - 1)
		IfNotBlocked
		reached[1][16] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->currStatus;
		((P1 *)_this)->currStatus = 6;
#ifdef VAR_RANGES
		logval("CommsManager:currStatus", ((P1 *)_this)->currStatus);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 27: // STATE 17 - problem2.pml:106 - [((currStatus==6))] (0:0:1 - 1)
		IfNotBlocked
		reached[1][17] = 1;
		if (!((((P1 *)_this)->currStatus==6)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: currStatus */  (trpt+1)->bup.oval = ((P1 *)_this)->currStatus;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->currStatus = 0;
		_m = 3; goto P999; /* 0 */
	case 28: // STATE 18 - problem2.pml:107 - [clientReport?reportStatus,id] (0:0:2 - 1)
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
	case 29: // STATE 19 - problem2.pml:109 - [((reportStatus==2))] (0:0:1 - 1)
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
	case 30: // STATE 20 - problem2.pml:109 - [cmCommand[id]!2] (0:0:0 - 1)
		IfNotBlocked
		reached[1][20] = 1;
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
	case 31: // STATE 21 - problem2.pml:110 - [currStatus = 5] (0:0:1 - 1)
		IfNotBlocked
		reached[1][21] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->currStatus;
		((P1 *)_this)->currStatus = 5;
#ifdef VAR_RANGES
		logval("CommsManager:currStatus", ((P1 *)_this)->currStatus);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 32: // STATE 22 - problem2.pml:111 - [((reportStatus==1))] (0:0:1 - 1)
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
	case 33: // STATE 23 - problem2.pml:111 - [connectedClients?id] (0:0:1 - 1)
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
	case 34: // STATE 24 - problem2.pml:112 - [currStatus = 8] (0:0:1 - 1)
		IfNotBlocked
		reached[1][24] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->currStatus;
		((P1 *)_this)->currStatus = 8;
#ifdef VAR_RANGES
		logval("CommsManager:currStatus", ((P1 *)_this)->currStatus);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 35: // STATE 27 - problem2.pml:114 - [((currStatus==5))] (0:0:1 - 1)
		IfNotBlocked
		reached[1][27] = 1;
		if (!((((P1 *)_this)->currStatus==5)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: currStatus */  (trpt+1)->bup.oval = ((P1 *)_this)->currStatus;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->currStatus = 0;
		_m = 3; goto P999; /* 0 */
	case 36: // STATE 28 - problem2.pml:115 - [clientReport?reportStatus,id] (0:0:2 - 1)
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
	case 37: // STATE 29 - problem2.pml:117 - [((reportStatus==2))] (31:0:2 - 1)
		IfNotBlocked
		reached[1][29] = 1;
		if (!((((P1 *)_this)->reportStatus==2)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: reportStatus */  (trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->reportStatus;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->reportStatus = 0;
		/* merge: currStatus = 8(0, 30, 31) */
		reached[1][30] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)_this)->currStatus;
		((P1 *)_this)->currStatus = 8;
#ifdef VAR_RANGES
		logval("CommsManager:currStatus", ((P1 *)_this)->currStatus);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 38: // STATE 31 - problem2.pml:118 - [cmAbleWcp!2] (0:0:0 - 1)
		IfNotBlocked
		reached[1][31] = 1;
		if (q_full(now.cmAbleWcp))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.cmAbleWcp);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.cmAbleWcp, 0, 2, 0, 1);
		_m = 2; goto P999; /* 0 */
	case 39: // STATE 32 - problem2.pml:119 - [((reportStatus==1))] (0:0:1 - 1)
		IfNotBlocked
		reached[1][32] = 1;
		if (!((((P1 *)_this)->reportStatus==1)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: reportStatus */  (trpt+1)->bup.oval = ((P1 *)_this)->reportStatus;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->reportStatus = 0;
		_m = 3; goto P999; /* 0 */
	case 40: // STATE 33 - problem2.pml:119 - [connectedClients?id] (0:0:1 - 1)
		reached[1][33] = 1;
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
	case 41: // STATE 34 - problem2.pml:120 - [currStatus = 8] (0:0:1 - 1)
		IfNotBlocked
		reached[1][34] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->currStatus;
		((P1 *)_this)->currStatus = 8;
#ifdef VAR_RANGES
		logval("CommsManager:currStatus", ((P1 *)_this)->currStatus);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 42: // STATE 35 - problem2.pml:121 - [cmAbleWcp!2] (0:0:0 - 1)
		IfNotBlocked
		reached[1][35] = 1;
		if (q_full(now.cmAbleWcp))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.cmAbleWcp);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.cmAbleWcp, 0, 2, 0, 1);
		_m = 2; goto P999; /* 0 */
	case 43: // STATE 38 - problem2.pml:123 - [((nempty(wcpRequest)&&(currStatus==8)))] (0:0:1 - 1)
		IfNotBlocked
		reached[1][38] = 1;
		if (!(((q_len(now.wcpRequest)>0)&&(((P1 *)_this)->currStatus==8))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: currStatus */  (trpt+1)->bup.oval = ((P1 *)_this)->currStatus;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->currStatus = 0;
		_m = 3; goto P999; /* 0 */
	case 44: // STATE 39 - problem2.pml:124 - [wcpRequest?button] (0:0:2 - 1)
		reached[1][39] = 1;
		if (q_len(now.wcpRequest) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->button;
		;
		((P1 *)_this)->button = qrecv(now.wcpRequest, XX-1, 0, 1);
#ifdef VAR_RANGES
		logval("CommsManager:button", ((P1 *)_this)->button);
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.wcpRequest);
		sprintf(simtmp, "%d", ((P1 *)_this)->button); strcat(simvals, simtmp);		}
#endif
		;
		if (TstOnly) return 1; /* TT */
		/* dead 2: button */  (trpt+1)->bup.ovals[1] = ((P1 *)_this)->button;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->button = 0;
		_m = 4; goto P999; /* 0 */
	case 45: // STATE 40 - problem2.pml:125 - [currStatus = 4] (0:0:1 - 1)
		IfNotBlocked
		reached[1][40] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->currStatus;
		((P1 *)_this)->currStatus = 4;
#ifdef VAR_RANGES
		logval("CommsManager:currStatus", ((P1 *)_this)->currStatus);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 46: // STATE 41 - problem2.pml:126 - [cmAbleWcp!1] (0:0:0 - 1)
		IfNotBlocked
		reached[1][41] = 1;
		if (q_full(now.cmAbleWcp))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.cmAbleWcp);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.cmAbleWcp, 0, 1, 0, 1);
		_m = 2; goto P999; /* 0 */
	case 47: // STATE 42 - problem2.pml:127 - [((currStatus==4))] (49:0:2 - 1)
		IfNotBlocked
		reached[1][42] = 1;
		if (!((((P1 *)_this)->currStatus==4)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: currStatus */  (trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->currStatus;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->currStatus = 0;
		/* merge: i = 0(0, 43, 49) */
		reached[1][43] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)_this)->i;
		((P1 *)_this)->i = 0;
#ifdef VAR_RANGES
		logval("CommsManager:i", ((P1 *)_this)->i);
#endif
		;
		/* merge: .(goto)(0, 50, 49) */
		reached[1][50] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 48: // STATE 44 - problem2.pml:128 - [((i<=(4-1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][44] = 1;
		if (!((((P1 *)_this)->i<=(4-1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 49: // STATE 45 - problem2.pml:129 - [cmCommand[i]!3] (0:0:0 - 1)
		IfNotBlocked
		reached[1][45] = 1;
		if (q_full(now.cmCommand[ Index(((P1 *)_this)->i, 4) ]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.cmCommand[ Index(((P1 *)_this)->i, 4) ]);
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.cmCommand[ Index(((P1 *)_this)->i, 4) ], 0, 3, 0, 1);
		_m = 2; goto P999; /* 0 */
	case 50: // STATE 46 - problem2.pml:128 - [i = (i+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][46] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->i;
		((P1 *)_this)->i = (((P1 *)_this)->i+1);
#ifdef VAR_RANGES
		logval("CommsManager:i", ((P1 *)_this)->i);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 51: // STATE 52 - problem2.pml:131 - [currStatus = 3] (0:144:1 - 3)
		IfNotBlocked
		reached[1][52] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->currStatus;
		((P1 *)_this)->currStatus = 3;
#ifdef VAR_RANGES
		logval("CommsManager:currStatus", ((P1 *)_this)->currStatus);
#endif
		;
		/* merge: .(goto)(0, 145, 144) */
		reached[1][145] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 52: // STATE 53 - problem2.pml:132 - [((currStatus==3))] (67:0:3 - 1)
		IfNotBlocked
		reached[1][53] = 1;
		if (!((((P1 *)_this)->currStatus==3)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: currStatus */  (trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->currStatus;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->currStatus = 0;
		/* merge: hasFail = 0(67, 54, 67) */
		reached[1][54] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P1 *)_this)->hasFail);
		((P1 *)_this)->hasFail = 0;
#ifdef VAR_RANGES
		logval("CommsManager:hasFail", ((int)((P1 *)_this)->hasFail));
#endif
		;
		/* merge: i = 0(67, 55, 67) */
		reached[1][55] = 1;
		(trpt+1)->bup.ovals[2] = ((P1 *)_this)->i;
		((P1 *)_this)->i = 0;
#ifdef VAR_RANGES
		logval("CommsManager:i", ((P1 *)_this)->i);
#endif
		;
		/* merge: .(goto)(0, 68, 67) */
		reached[1][68] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 53: // STATE 56 - problem2.pml:134 - [((i<=(4-1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][56] = 1;
		if (!((((P1 *)_this)->i<=(4-1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 54: // STATE 57 - problem2.pml:135 - [clientReport?reportStatus,id] (0:0:2 - 1)
		reached[1][57] = 1;
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
	case 55: // STATE 58 - problem2.pml:137 - [((reportStatus==1))] (67:0:3 - 1)
		IfNotBlocked
		reached[1][58] = 1;
		if (!((((P1 *)_this)->reportStatus==1)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: reportStatus */  (trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->reportStatus;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->reportStatus = 0;
		/* merge: hasFail = 1(67, 59, 67) */
		reached[1][59] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P1 *)_this)->hasFail);
		((P1 *)_this)->hasFail = 1;
#ifdef VAR_RANGES
		logval("CommsManager:hasFail", ((int)((P1 *)_this)->hasFail));
#endif
		;
		/* merge: .(goto)(67, 63, 67) */
		reached[1][63] = 1;
		;
		/* merge: i = (i+1)(67, 64, 67) */
		reached[1][64] = 1;
		(trpt+1)->bup.ovals[2] = ((P1 *)_this)->i;
		((P1 *)_this)->i = (((P1 *)_this)->i+1);
#ifdef VAR_RANGES
		logval("CommsManager:i", ((P1 *)_this)->i);
#endif
		;
		/* merge: .(goto)(0, 68, 67) */
		reached[1][68] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 56: // STATE 61 - problem2.pml:138 - [(1)] (67:0:1 - 1)
		IfNotBlocked
		reached[1][61] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(67, 63, 67) */
		reached[1][63] = 1;
		;
		/* merge: i = (i+1)(67, 64, 67) */
		reached[1][64] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->i;
		((P1 *)_this)->i = (((P1 *)_this)->i+1);
#ifdef VAR_RANGES
		logval("CommsManager:i", ((P1 *)_this)->i);
#endif
		;
		/* merge: .(goto)(0, 68, 67) */
		reached[1][68] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 57: // STATE 64 - problem2.pml:134 - [i = (i+1)] (0:67:1 - 3)
		IfNotBlocked
		reached[1][64] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->i;
		((P1 *)_this)->i = (((P1 *)_this)->i+1);
#ifdef VAR_RANGES
		logval("CommsManager:i", ((P1 *)_this)->i);
#endif
		;
		/* merge: .(goto)(0, 68, 67) */
		reached[1][68] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 58: // STATE 70 - problem2.pml:142 - [(hasFail)] (77:0:2 - 1)
		IfNotBlocked
		reached[1][70] = 1;
		if (!(((int)((P1 *)_this)->hasFail)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: hasFail */  (trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->hasFail;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->hasFail = 0;
		/* merge: i = 0(0, 71, 77) */
		reached[1][71] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)_this)->i;
		((P1 *)_this)->i = 0;
#ifdef VAR_RANGES
		logval("CommsManager:i", ((P1 *)_this)->i);
#endif
		;
		/* merge: .(goto)(0, 78, 77) */
		reached[1][78] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 59: // STATE 72 - problem2.pml:143 - [((i<=(4-1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][72] = 1;
		if (!((((P1 *)_this)->i<=(4-1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 60: // STATE 73 - problem2.pml:144 - [cmCommand[i]!2] (0:0:0 - 1)
		IfNotBlocked
		reached[1][73] = 1;
		if (q_full(now.cmCommand[ Index(((P1 *)_this)->i, 4) ]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.cmCommand[ Index(((P1 *)_this)->i, 4) ]);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.cmCommand[ Index(((P1 *)_this)->i, 4) ], 0, 2, 0, 1);
		_m = 2; goto P999; /* 0 */
	case 61: // STATE 74 - problem2.pml:143 - [i = (i+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][74] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->i;
		((P1 *)_this)->i = (((P1 *)_this)->i+1);
#ifdef VAR_RANGES
		logval("CommsManager:i", ((P1 *)_this)->i);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 62: // STATE 80 - problem2.pml:146 - [currStatus = 1] (0:144:1 - 3)
		IfNotBlocked
		reached[1][80] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->currStatus;
		((P1 *)_this)->currStatus = 1;
#ifdef VAR_RANGES
		logval("CommsManager:currStatus", ((P1 *)_this)->currStatus);
#endif
		;
		/* merge: .(goto)(0, 93, 144) */
		reached[1][93] = 1;
		;
		/* merge: .(goto)(0, 145, 144) */
		reached[1][145] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 63: // STATE 82 - problem2.pml:148 - [i = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][82] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->i;
		((P1 *)_this)->i = 0;
#ifdef VAR_RANGES
		logval("CommsManager:i", ((P1 *)_this)->i);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 64: // STATE 83 - problem2.pml:148 - [((i<=(4-1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][83] = 1;
		if (!((((P1 *)_this)->i<=(4-1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 65: // STATE 84 - problem2.pml:149 - [cmCommand[i]!2] (0:0:0 - 1)
		IfNotBlocked
		reached[1][84] = 1;
		if (q_full(now.cmCommand[ Index(((P1 *)_this)->i, 4) ]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.cmCommand[ Index(((P1 *)_this)->i, 4) ]);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.cmCommand[ Index(((P1 *)_this)->i, 4) ], 0, 2, 0, 1);
		_m = 2; goto P999; /* 0 */
	case 66: // STATE 85 - problem2.pml:148 - [i = (i+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][85] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->i;
		((P1 *)_this)->i = (((P1 *)_this)->i+1);
#ifdef VAR_RANGES
		logval("CommsManager:i", ((P1 *)_this)->i);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 67: // STATE 91 - problem2.pml:151 - [currStatus = 2] (0:144:1 - 3)
		IfNotBlocked
		reached[1][91] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->currStatus;
		((P1 *)_this)->currStatus = 2;
#ifdef VAR_RANGES
		logval("CommsManager:currStatus", ((P1 *)_this)->currStatus);
#endif
		;
		/* merge: .(goto)(0, 93, 144) */
		reached[1][93] = 1;
		;
		/* merge: .(goto)(0, 145, 144) */
		reached[1][145] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 68: // STATE 94 - problem2.pml:153 - [((currStatus==2))] (108:0:3 - 1)
		IfNotBlocked
		reached[1][94] = 1;
		if (!((((P1 *)_this)->currStatus==2)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: currStatus */  (trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->currStatus;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->currStatus = 0;
		/* merge: hasFail = 0(108, 95, 108) */
		reached[1][95] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P1 *)_this)->hasFail);
		((P1 *)_this)->hasFail = 0;
#ifdef VAR_RANGES
		logval("CommsManager:hasFail", ((int)((P1 *)_this)->hasFail));
#endif
		;
		/* merge: i = 0(108, 96, 108) */
		reached[1][96] = 1;
		(trpt+1)->bup.ovals[2] = ((P1 *)_this)->i;
		((P1 *)_this)->i = 0;
#ifdef VAR_RANGES
		logval("CommsManager:i", ((P1 *)_this)->i);
#endif
		;
		/* merge: .(goto)(0, 109, 108) */
		reached[1][109] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 69: // STATE 97 - problem2.pml:155 - [((i<=(4-1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][97] = 1;
		if (!((((P1 *)_this)->i<=(4-1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 70: // STATE 98 - problem2.pml:156 - [clientReport?reportStatus,id] (0:0:2 - 1)
		reached[1][98] = 1;
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
	case 71: // STATE 99 - problem2.pml:158 - [((reportStatus==1))] (108:0:3 - 1)
		IfNotBlocked
		reached[1][99] = 1;
		if (!((((P1 *)_this)->reportStatus==1)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: reportStatus */  (trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->reportStatus;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->reportStatus = 0;
		/* merge: hasFail = 1(108, 100, 108) */
		reached[1][100] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P1 *)_this)->hasFail);
		((P1 *)_this)->hasFail = 1;
#ifdef VAR_RANGES
		logval("CommsManager:hasFail", ((int)((P1 *)_this)->hasFail));
#endif
		;
		/* merge: .(goto)(108, 104, 108) */
		reached[1][104] = 1;
		;
		/* merge: i = (i+1)(108, 105, 108) */
		reached[1][105] = 1;
		(trpt+1)->bup.ovals[2] = ((P1 *)_this)->i;
		((P1 *)_this)->i = (((P1 *)_this)->i+1);
#ifdef VAR_RANGES
		logval("CommsManager:i", ((P1 *)_this)->i);
#endif
		;
		/* merge: .(goto)(0, 109, 108) */
		reached[1][109] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 72: // STATE 102 - problem2.pml:159 - [(1)] (108:0:1 - 1)
		IfNotBlocked
		reached[1][102] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(108, 104, 108) */
		reached[1][104] = 1;
		;
		/* merge: i = (i+1)(108, 105, 108) */
		reached[1][105] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->i;
		((P1 *)_this)->i = (((P1 *)_this)->i+1);
#ifdef VAR_RANGES
		logval("CommsManager:i", ((P1 *)_this)->i);
#endif
		;
		/* merge: .(goto)(0, 109, 108) */
		reached[1][109] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 73: // STATE 105 - problem2.pml:155 - [i = (i+1)] (0:108:1 - 3)
		IfNotBlocked
		reached[1][105] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->i;
		((P1 *)_this)->i = (((P1 *)_this)->i+1);
#ifdef VAR_RANGES
		logval("CommsManager:i", ((P1 *)_this)->i);
#endif
		;
		/* merge: .(goto)(0, 109, 108) */
		reached[1][109] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 74: // STATE 111 - problem2.pml:163 - [(hasFail)] (113:0:2 - 1)
		IfNotBlocked
		reached[1][111] = 1;
		if (!(((int)((P1 *)_this)->hasFail)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: hasFail */  (trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->hasFail;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->hasFail = 0;
		/* merge: currStatus = 8(0, 112, 113) */
		reached[1][112] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)_this)->currStatus;
		((P1 *)_this)->currStatus = 8;
#ifdef VAR_RANGES
		logval("CommsManager:currStatus", ((P1 *)_this)->currStatus);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 75: // STATE 113 - problem2.pml:164 - [cmAbleWcp!2] (0:0:0 - 1)
		IfNotBlocked
		reached[1][113] = 1;
		if (q_full(now.cmAbleWcp))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.cmAbleWcp);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.cmAbleWcp, 0, 2, 0, 1);
		_m = 2; goto P999; /* 0 */
	case 76: // STATE 115 - problem2.pml:165 - [currStatus = 8] (0:0:1 - 1)
		IfNotBlocked
		reached[1][115] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->currStatus;
		((P1 *)_this)->currStatus = 8;
#ifdef VAR_RANGES
		logval("CommsManager:currStatus", ((P1 *)_this)->currStatus);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 77: // STATE 116 - problem2.pml:166 - [cmAbleWcp!2] (0:0:0 - 1)
		IfNotBlocked
		reached[1][116] = 1;
		if (q_full(now.cmAbleWcp))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.cmAbleWcp);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.cmAbleWcp, 0, 2, 0, 1);
		_m = 2; goto P999; /* 0 */
	case 78: // STATE 119 - problem2.pml:168 - [((currStatus==1))] (133:0:3 - 1)
		IfNotBlocked
		reached[1][119] = 1;
		if (!((((P1 *)_this)->currStatus==1)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: currStatus */  (trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->currStatus;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->currStatus = 0;
		/* merge: hasFail = 0(133, 120, 133) */
		reached[1][120] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P1 *)_this)->hasFail);
		((P1 *)_this)->hasFail = 0;
#ifdef VAR_RANGES
		logval("CommsManager:hasFail", ((int)((P1 *)_this)->hasFail));
#endif
		;
		/* merge: i = 0(133, 121, 133) */
		reached[1][121] = 1;
		(trpt+1)->bup.ovals[2] = ((P1 *)_this)->i;
		((P1 *)_this)->i = 0;
#ifdef VAR_RANGES
		logval("CommsManager:i", ((P1 *)_this)->i);
#endif
		;
		/* merge: .(goto)(0, 134, 133) */
		reached[1][134] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 79: // STATE 122 - problem2.pml:170 - [((i<=(4-1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][122] = 1;
		if (!((((P1 *)_this)->i<=(4-1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 80: // STATE 123 - problem2.pml:171 - [clientReport?reportStatus,id] (0:0:2 - 1)
		reached[1][123] = 1;
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
	case 81: // STATE 124 - problem2.pml:173 - [((reportStatus==1))] (133:0:3 - 1)
		IfNotBlocked
		reached[1][124] = 1;
		if (!((((P1 *)_this)->reportStatus==1)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: reportStatus */  (trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->reportStatus;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->reportStatus = 0;
		/* merge: hasFail = 1(133, 125, 133) */
		reached[1][125] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P1 *)_this)->hasFail);
		((P1 *)_this)->hasFail = 1;
#ifdef VAR_RANGES
		logval("CommsManager:hasFail", ((int)((P1 *)_this)->hasFail));
#endif
		;
		/* merge: .(goto)(133, 129, 133) */
		reached[1][129] = 1;
		;
		/* merge: i = (i+1)(133, 130, 133) */
		reached[1][130] = 1;
		(trpt+1)->bup.ovals[2] = ((P1 *)_this)->i;
		((P1 *)_this)->i = (((P1 *)_this)->i+1);
#ifdef VAR_RANGES
		logval("CommsManager:i", ((P1 *)_this)->i);
#endif
		;
		/* merge: .(goto)(0, 134, 133) */
		reached[1][134] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 82: // STATE 127 - problem2.pml:174 - [(1)] (133:0:1 - 1)
		IfNotBlocked
		reached[1][127] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(133, 129, 133) */
		reached[1][129] = 1;
		;
		/* merge: i = (i+1)(133, 130, 133) */
		reached[1][130] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->i;
		((P1 *)_this)->i = (((P1 *)_this)->i+1);
#ifdef VAR_RANGES
		logval("CommsManager:i", ((P1 *)_this)->i);
#endif
		;
		/* merge: .(goto)(0, 134, 133) */
		reached[1][134] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 83: // STATE 130 - problem2.pml:170 - [i = (i+1)] (0:133:1 - 3)
		IfNotBlocked
		reached[1][130] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->i;
		((P1 *)_this)->i = (((P1 *)_this)->i+1);
#ifdef VAR_RANGES
		logval("CommsManager:i", ((P1 *)_this)->i);
#endif
		;
		/* merge: .(goto)(0, 134, 133) */
		reached[1][134] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 84: // STATE 136 - problem2.pml:178 - [(hasFail)] (138:0:2 - 1)
		IfNotBlocked
		reached[1][136] = 1;
		if (!(((int)((P1 *)_this)->hasFail)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: hasFail */  (trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->hasFail;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->hasFail = 0;
		/* merge: currStatus = 8(0, 137, 138) */
		reached[1][137] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)_this)->currStatus;
		((P1 *)_this)->currStatus = 8;
#ifdef VAR_RANGES
		logval("CommsManager:currStatus", ((P1 *)_this)->currStatus);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 85: // STATE 138 - problem2.pml:179 - [cmAbleWcp!2] (0:0:0 - 1)
		IfNotBlocked
		reached[1][138] = 1;
		if (q_full(now.cmAbleWcp))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.cmAbleWcp);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.cmAbleWcp, 0, 2, 0, 1);
		_m = 2; goto P999; /* 0 */
	case 86: // STATE 140 - problem2.pml:180 - [currStatus = 8] (0:0:1 - 1)
		IfNotBlocked
		reached[1][140] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->currStatus;
		((P1 *)_this)->currStatus = 8;
#ifdef VAR_RANGES
		logval("CommsManager:currStatus", ((P1 *)_this)->currStatus);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 87: // STATE 141 - problem2.pml:181 - [cmAbleWcp!2] (0:0:0 - 1)
		IfNotBlocked
		reached[1][141] = 1;
		if (q_full(now.cmAbleWcp))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.cmAbleWcp);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.cmAbleWcp, 0, 2, 0, 1);
		_m = 2; goto P999; /* 0 */
	case 88: // STATE 147 - problem2.pml:184 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][147] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Client */
	case 89: // STATE 1 - problem2.pml:31 - [(!(connected))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		if (!( !(((int)((P0 *)_this)->connected))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 90: // STATE 2 - problem2.pml:32 - [cmConnectRequest!id] (0:0:0 - 1)
		IfNotBlocked
		reached[0][2] = 1;
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
	case 91: // STATE 3 - problem2.pml:33 - [cmConnectReply[id]?reply] (0:0:1 - 1)
		reached[0][3] = 1;
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
	case 92: // STATE 4 - problem2.pml:35 - [((reply==2))] (71:0:3 - 1)
		IfNotBlocked
		reached[0][4] = 1;
		if (!((((P0 *)_this)->reply==2)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: reply */  (trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->reply;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->reply = 0;
		/* merge: currStatus = 7(71, 5, 71) */
		reached[0][5] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->currStatus;
		((P0 *)_this)->currStatus = 7;
#ifdef VAR_RANGES
		logval("Client:currStatus", ((P0 *)_this)->currStatus);
#endif
		;
		/* merge: connected = 1(71, 6, 71) */
		reached[0][6] = 1;
		(trpt+1)->bup.ovals[2] = ((int)((P0 *)_this)->connected);
		((P0 *)_this)->connected = 1;
#ifdef VAR_RANGES
		logval("Client:connected", ((int)((P0 *)_this)->connected));
#endif
		;
		/* merge: .(goto)(0, 10, 71) */
		reached[0][10] = 1;
		;
		/* merge: .(goto)(0, 72, 71) */
		reached[0][72] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 93: // STATE 11 - problem2.pml:38 - [((currStatus==7))] (0:0:1 - 1)
		IfNotBlocked
		reached[0][11] = 1;
		if (!((((P0 *)_this)->currStatus==7)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: currStatus */  (trpt+1)->bup.oval = ((P0 *)_this)->currStatus;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->currStatus = 0;
		_m = 3; goto P999; /* 0 */
	case 94: // STATE 12 - problem2.pml:39 - [cmCommand[id]?3] (0:0:0 - 1)
		reached[0][12] = 1;
		if (q_len(now.cmCommand[ Index(((P0 *)_this)->id, 4) ]) == 0) continue;

		XX=1;
		if (3 != qrecv(now.cmCommand[ Index(((P0 *)_this)->id, 4) ], 0, 0, 0)) continue;
		
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
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 95: // STATE 13 - problem2.pml:40 - [currStatus = 6] (0:0:1 - 1)
		IfNotBlocked
		reached[0][13] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->currStatus;
		((P0 *)_this)->currStatus = 6;
#ifdef VAR_RANGES
		logval("Client:currStatus", ((P0 *)_this)->currStatus);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 96: // STATE 14 - problem2.pml:41 - [((currStatus==6))] (0:0:1 - 1)
		IfNotBlocked
		reached[0][14] = 1;
		if (!((((P0 *)_this)->currStatus==6)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: currStatus */  (trpt+1)->bup.oval = ((P0 *)_this)->currStatus;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->currStatus = 0;
		_m = 3; goto P999; /* 0 */
	case 97: // STATE 15 - problem2.pml:43 - [(getInfoSuccess)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][15] = 1;
		if (!(((int)((P0 *)_this)->getInfoSuccess)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 98: // STATE 16 - problem2.pml:43 - [clientReport!2,id] (0:0:0 - 1)
		IfNotBlocked
		reached[0][16] = 1;
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
	case 99: // STATE 17 - problem2.pml:44 - [cmCommand[id]?2] (0:0:0 - 1)
		reached[0][17] = 1;
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
	case 100: // STATE 18 - problem2.pml:44 - [currStatus = 5] (0:0:1 - 1)
		IfNotBlocked
		reached[0][18] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->currStatus;
		((P0 *)_this)->currStatus = 5;
#ifdef VAR_RANGES
		logval("Client:currStatus", ((P0 *)_this)->currStatus);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 101: // STATE 20 - problem2.pml:45 - [clientReport!1,id] (0:0:0 - 1)
		IfNotBlocked
		reached[0][20] = 1;
		if (q_full(now.clientReport))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.clientReport);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->id); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.clientReport, 0, 1, ((P0 *)_this)->id, 2);
		_m = 2; goto P999; /* 0 */
	case 102: // STATE 21 - problem2.pml:46 - [currStatus = 8] (0:71:2 - 1)
		IfNotBlocked
		reached[0][21] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->currStatus;
		((P0 *)_this)->currStatus = 8;
#ifdef VAR_RANGES
		logval("Client:currStatus", ((P0 *)_this)->currStatus);
#endif
		;
		/* merge: connected = 0(71, 22, 71) */
		reached[0][22] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P0 *)_this)->connected);
		((P0 *)_this)->connected = 0;
#ifdef VAR_RANGES
		logval("Client:connected", ((int)((P0 *)_this)->connected));
#endif
		;
		/* merge: .(goto)(0, 24, 71) */
		reached[0][24] = 1;
		;
		/* merge: .(goto)(0, 72, 71) */
		reached[0][72] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 103: // STATE 25 - problem2.pml:48 - [((currStatus==5))] (0:0:1 - 1)
		IfNotBlocked
		reached[0][25] = 1;
		if (!((((P0 *)_this)->currStatus==5)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: currStatus */  (trpt+1)->bup.oval = ((P0 *)_this)->currStatus;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->currStatus = 0;
		_m = 3; goto P999; /* 0 */
	case 104: // STATE 26 - problem2.pml:50 - [(useNewInfoSuccess)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][26] = 1;
		if (!(((int)((P0 *)_this)->useNewInfoSuccess)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 105: // STATE 27 - problem2.pml:50 - [clientReport!2,id] (0:0:0 - 1)
		IfNotBlocked
		reached[0][27] = 1;
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
	case 106: // STATE 28 - problem2.pml:51 - [currStatus = 8] (0:0:1 - 1)
		IfNotBlocked
		reached[0][28] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->currStatus;
		((P0 *)_this)->currStatus = 8;
#ifdef VAR_RANGES
		logval("Client:currStatus", ((P0 *)_this)->currStatus);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 107: // STATE 30 - problem2.pml:52 - [clientReport!1,id] (0:0:0 - 1)
		IfNotBlocked
		reached[0][30] = 1;
		if (q_full(now.clientReport))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.clientReport);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->id); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.clientReport, 0, 1, ((P0 *)_this)->id, 2);
		_m = 2; goto P999; /* 0 */
	case 108: // STATE 31 - problem2.pml:53 - [connected = 0] (0:71:2 - 1)
		IfNotBlocked
		reached[0][31] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P0 *)_this)->connected);
		((P0 *)_this)->connected = 0;
#ifdef VAR_RANGES
		logval("Client:connected", ((int)((P0 *)_this)->connected));
#endif
		;
		/* merge: currStatus = 8(71, 32, 71) */
		reached[0][32] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->currStatus;
		((P0 *)_this)->currStatus = 8;
#ifdef VAR_RANGES
		logval("Client:currStatus", ((P0 *)_this)->currStatus);
#endif
		;
		/* merge: .(goto)(0, 34, 71) */
		reached[0][34] = 1;
		;
		/* merge: .(goto)(0, 72, 71) */
		reached[0][72] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 109: // STATE 35 - problem2.pml:55 - [(((nempty(wcpRequest)&&(currStatus==8))&&connected))] (0:0:1 - 1)
		IfNotBlocked
		reached[0][35] = 1;
		if (!((((q_len(now.wcpRequest)>0)&&(((P0 *)_this)->currStatus==8))&&((int)((P0 *)_this)->connected))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: currStatus */  (trpt+1)->bup.oval = ((P0 *)_this)->currStatus;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->currStatus = 0;
		_m = 3; goto P999; /* 0 */
	case 110: // STATE 36 - problem2.pml:56 - [currStatus = 4] (0:0:1 - 1)
		IfNotBlocked
		reached[0][36] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->currStatus;
		((P0 *)_this)->currStatus = 4;
#ifdef VAR_RANGES
		logval("Client:currStatus", ((P0 *)_this)->currStatus);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 111: // STATE 37 - problem2.pml:57 - [(((currStatus==4)&&connected))] (0:0:1 - 1)
		IfNotBlocked
		reached[0][37] = 1;
		if (!(((((P0 *)_this)->currStatus==4)&&((int)((P0 *)_this)->connected))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: currStatus */  (trpt+1)->bup.oval = ((P0 *)_this)->currStatus;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->currStatus = 0;
		_m = 3; goto P999; /* 0 */
	case 112: // STATE 38 - problem2.pml:58 - [cmCommand[id]?3] (0:0:0 - 1)
		reached[0][38] = 1;
		if (q_len(now.cmCommand[ Index(((P0 *)_this)->id, 4) ]) == 0) continue;

		XX=1;
		if (3 != qrecv(now.cmCommand[ Index(((P0 *)_this)->id, 4) ], 0, 0, 0)) continue;
		
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
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 113: // STATE 39 - problem2.pml:59 - [currStatus = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][39] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->currStatus;
		((P0 *)_this)->currStatus = 3;
#ifdef VAR_RANGES
		logval("Client:currStatus", ((P0 *)_this)->currStatus);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 114: // STATE 40 - problem2.pml:60 - [(((currStatus==3)&&connected))] (0:0:1 - 1)
		IfNotBlocked
		reached[0][40] = 1;
		if (!(((((P0 *)_this)->currStatus==3)&&((int)((P0 *)_this)->connected))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: currStatus */  (trpt+1)->bup.oval = ((P0 *)_this)->currStatus;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->currStatus = 0;
		_m = 3; goto P999; /* 0 */
	case 115: // STATE 41 - problem2.pml:62 - [(getInfoSuccess)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][41] = 1;
		if (!(((int)((P0 *)_this)->getInfoSuccess)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 116: // STATE 42 - problem2.pml:62 - [clientReport!2,id] (0:0:0 - 1)
		IfNotBlocked
		reached[0][42] = 1;
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
	case 117: // STATE 43 - problem2.pml:63 - [cmCommand[id]?2] (0:0:0 - 1)
		reached[0][43] = 1;
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
	case 118: // STATE 44 - problem2.pml:63 - [currStatus = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][44] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->currStatus;
		((P0 *)_this)->currStatus = 2;
#ifdef VAR_RANGES
		logval("Client:currStatus", ((P0 *)_this)->currStatus);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 119: // STATE 46 - problem2.pml:64 - [clientReport!1,id] (0:0:0 - 1)
		IfNotBlocked
		reached[0][46] = 1;
		if (q_full(now.clientReport))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.clientReport);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->id); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.clientReport, 0, 1, ((P0 *)_this)->id, 2);
		_m = 2; goto P999; /* 0 */
	case 120: // STATE 47 - problem2.pml:65 - [cmCommand[id]?1] (0:0:0 - 1)
		reached[0][47] = 1;
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
	case 121: // STATE 48 - problem2.pml:65 - [currStatus = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][48] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->currStatus;
		((P0 *)_this)->currStatus = 1;
#ifdef VAR_RANGES
		logval("Client:currStatus", ((P0 *)_this)->currStatus);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 122: // STATE 51 - problem2.pml:67 - [(((currStatus==2)&&connected))] (0:0:1 - 1)
		IfNotBlocked
		reached[0][51] = 1;
		if (!(((((P0 *)_this)->currStatus==2)&&((int)((P0 *)_this)->connected))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: currStatus */  (trpt+1)->bup.oval = ((P0 *)_this)->currStatus;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->currStatus = 0;
		_m = 3; goto P999; /* 0 */
	case 123: // STATE 52 - problem2.pml:69 - [(useNewInfoSuccess)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][52] = 1;
		if (!(((int)((P0 *)_this)->useNewInfoSuccess)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 124: // STATE 53 - problem2.pml:69 - [clientReport!2,id] (0:0:0 - 1)
		IfNotBlocked
		reached[0][53] = 1;
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
	case 125: // STATE 54 - problem2.pml:70 - [currStatus = 8] (0:0:1 - 1)
		IfNotBlocked
		reached[0][54] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->currStatus;
		((P0 *)_this)->currStatus = 8;
#ifdef VAR_RANGES
		logval("Client:currStatus", ((P0 *)_this)->currStatus);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 126: // STATE 56 - problem2.pml:71 - [clientReport!1,id] (0:0:0 - 1)
		IfNotBlocked
		reached[0][56] = 1;
		if (q_full(now.clientReport))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.clientReport);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->id); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.clientReport, 0, 1, ((P0 *)_this)->id, 2);
		_m = 2; goto P999; /* 0 */
	case 127: // STATE 57 - problem2.pml:72 - [connected = 0] (0:71:2 - 1)
		IfNotBlocked
		reached[0][57] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P0 *)_this)->connected);
		((P0 *)_this)->connected = 0;
#ifdef VAR_RANGES
		logval("Client:connected", ((int)((P0 *)_this)->connected));
#endif
		;
		/* merge: currStatus = 8(71, 58, 71) */
		reached[0][58] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->currStatus;
		((P0 *)_this)->currStatus = 8;
#ifdef VAR_RANGES
		logval("Client:currStatus", ((P0 *)_this)->currStatus);
#endif
		;
		/* merge: .(goto)(0, 60, 71) */
		reached[0][60] = 1;
		;
		/* merge: .(goto)(0, 72, 71) */
		reached[0][72] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 128: // STATE 61 - problem2.pml:74 - [(((currStatus==1)&&connected))] (0:0:1 - 1)
		IfNotBlocked
		reached[0][61] = 1;
		if (!(((((P0 *)_this)->currStatus==1)&&((int)((P0 *)_this)->connected))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: currStatus */  (trpt+1)->bup.oval = ((P0 *)_this)->currStatus;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->currStatus = 0;
		_m = 3; goto P999; /* 0 */
	case 129: // STATE 62 - problem2.pml:76 - [(useOldInfoSuccess)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][62] = 1;
		if (!(((int)((P0 *)_this)->useOldInfoSuccess)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 130: // STATE 63 - problem2.pml:76 - [clientReport!2,id] (0:0:0 - 1)
		IfNotBlocked
		reached[0][63] = 1;
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
	case 131: // STATE 64 - problem2.pml:77 - [currStatus = 8] (0:0:1 - 1)
		IfNotBlocked
		reached[0][64] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->currStatus;
		((P0 *)_this)->currStatus = 8;
#ifdef VAR_RANGES
		logval("Client:currStatus", ((P0 *)_this)->currStatus);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 132: // STATE 66 - problem2.pml:78 - [clientReport!1,id] (0:0:0 - 1)
		IfNotBlocked
		reached[0][66] = 1;
		if (q_full(now.clientReport))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.clientReport);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->id); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.clientReport, 0, 1, ((P0 *)_this)->id, 2);
		_m = 2; goto P999; /* 0 */
	case 133: // STATE 67 - problem2.pml:79 - [connected = 0] (0:71:2 - 1)
		IfNotBlocked
		reached[0][67] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P0 *)_this)->connected);
		((P0 *)_this)->connected = 0;
#ifdef VAR_RANGES
		logval("Client:connected", ((int)((P0 *)_this)->connected));
#endif
		;
		/* merge: currStatus = 8(71, 68, 71) */
		reached[0][68] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->currStatus;
		((P0 *)_this)->currStatus = 8;
#ifdef VAR_RANGES
		logval("Client:currStatus", ((P0 *)_this)->currStatus);
#endif
		;
		/* merge: .(goto)(0, 70, 71) */
		reached[0][70] = 1;
		;
		/* merge: .(goto)(0, 72, 71) */
		reached[0][72] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 134: // STATE 74 - problem2.pml:82 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][74] = 1;
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


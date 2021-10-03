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
	case 3: // STATE 1 - problem2.pml:242 - [(run Client(0))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][1] = 1;
		if (!(addproc(II, 1, 0, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 2 - problem2.pml:243 - [(run Client(1))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][2] = 1;
		if (!(addproc(II, 1, 0, 1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 5: // STATE 3 - problem2.pml:244 - [(run Client(2))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][3] = 1;
		if (!(addproc(II, 1, 0, 2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 6: // STATE 4 - problem2.pml:245 - [(run Client(3))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][4] = 1;
		if (!(addproc(II, 1, 0, 3)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 5 - problem2.pml:246 - [(run CommsManager())] (0:0:0 - 1)
		IfNotBlocked
		reached[3][5] = 1;
		if (!(addproc(II, 1, 1, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 6 - problem2.pml:247 - [(run ControlPanel())] (0:0:0 - 1)
		IfNotBlocked
		reached[3][6] = 1;
		if (!(addproc(II, 1, 2, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 9: // STATE 8 - problem2.pml:249 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[3][8] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC ControlPanel */
	case 10: // STATE 1 - problem2.pml:229 - [cmAbleWcp?ability] (0:0:1 - 1)
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
	case 11: // STATE 2 - problem2.pml:231 - [((ability==2))] (11:0:2 - 1)
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
	case 12: // STATE 5 - problem2.pml:232 - [disabled = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[2][5] = 1;
		(trpt+1)->bup.oval = ((int)((P2 *)_this)->disabled);
		((P2 *)_this)->disabled = 1;
#ifdef VAR_RANGES
		logval("ControlPanel:disabled", ((int)((P2 *)_this)->disabled));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 13: // STATE 8 - problem2.pml:234 - [(!(disabled))] (10:0:1 - 1)
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
	case 14: // STATE 10 - problem2.pml:236 - [wcpRequest!button] (0:0:0 - 1)
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
	case 15: // STATE 14 - problem2.pml:238 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[2][14] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC CommsManager */
	case 16: // STATE 1 - problem2.pml:118 - [i = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][1] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->i;
		((P1 *)_this)->i = 0;
#ifdef VAR_RANGES
		logval("CommsManager:i", ((P1 *)_this)->i);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 17: // STATE 2 - problem2.pml:118 - [((i<=(4-1)))] (7:0:2 - 1)
		IfNotBlocked
		reached[1][2] = 1;
		if (!((((P1 *)_this)->i<=(4-1))))
			continue;
		/* merge: connectedClients[i] = 0(7, 3, 7) */
		reached[1][3] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P1 *)_this)->connectedClients[ Index(((P1 *)_this)->i, 4) ]);
		((P1 *)_this)->connectedClients[ Index(((P1 *)_this)->i, 4) ] = 0;
#ifdef VAR_RANGES
		logval("CommsManager:connectedClients[CommsManager:i]", ((int)((P1 *)_this)->connectedClients[ Index(((P1 *)_this)->i, 4) ]));
#endif
		;
		/* merge: i = (i+1)(7, 4, 7) */
		reached[1][4] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)_this)->i;
		((P1 *)_this)->i = (((P1 *)_this)->i+1);
#ifdef VAR_RANGES
		logval("CommsManager:i", ((P1 *)_this)->i);
#endif
		;
		/* merge: .(goto)(0, 8, 7) */
		reached[1][8] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 18: // STATE 10 - problem2.pml:122 - [currStatus = 8] (0:174:3 - 3)
		IfNotBlocked
		reached[1][10] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->currStatus;
		((P1 *)_this)->currStatus = 8;
#ifdef VAR_RANGES
		logval("CommsManager:currStatus", ((P1 *)_this)->currStatus);
#endif
		;
		/* merge: reportStatus = 0(174, 11, 174) */
		reached[1][11] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)_this)->reportStatus;
		((P1 *)_this)->reportStatus = 0;
#ifdef VAR_RANGES
		logval("CommsManager:reportStatus", ((P1 *)_this)->reportStatus);
#endif
		;
		/* merge: button = 0(174, 12, 174) */
		reached[1][12] = 1;
		(trpt+1)->bup.ovals[2] = ((P1 *)_this)->button;
		((P1 *)_this)->button = 0;
#ifdef VAR_RANGES
		logval("CommsManager:button", ((P1 *)_this)->button);
#endif
		;
		/* merge: .(goto)(0, 175, 174) */
		reached[1][175] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 19: // STATE 13 - problem2.pml:125 - [(nempty(cmConnectRequest))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][13] = 1;
		if (!((q_len(now.cmConnectRequest)>0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 20: // STATE 14 - problem2.pml:126 - [cmConnectRequest?id] (0:0:1 - 1)
		reached[1][14] = 1;
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
	case 21: // STATE 15 - problem2.pml:128 - [reply = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][15] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->reply;
		((P1 *)_this)->reply = 0;
#ifdef VAR_RANGES
		logval("CommsManager:reply", ((P1 *)_this)->reply);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 22: // STATE 16 - problem2.pml:129 - [((currStatus==8))] (20:0:4 - 1)
		IfNotBlocked
		reached[1][16] = 1;
		if (!((((P1 *)_this)->currStatus==8)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: currStatus */  (trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->currStatus;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->currStatus = 0;
		/* merge: reply = 2(20, 17, 20) */
		reached[1][17] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)_this)->reply;
		((P1 *)_this)->reply = 2;
#ifdef VAR_RANGES
		logval("CommsManager:reply", ((P1 *)_this)->reply);
#endif
		;
		/* merge: currStatus = 7(20, 18, 20) */
		reached[1][18] = 1;
		(trpt+1)->bup.ovals[2] = ((P1 *)_this)->currStatus;
		((P1 *)_this)->currStatus = 7;
#ifdef VAR_RANGES
		logval("CommsManager:currStatus", ((P1 *)_this)->currStatus);
#endif
		;
		/* merge: connectedClients[id] = 1(20, 19, 20) */
		reached[1][19] = 1;
		(trpt+1)->bup.ovals[3] = ((int)((P1 *)_this)->connectedClients[ Index(((P1 *)_this)->id, 4) ]);
		((P1 *)_this)->connectedClients[ Index(((P1 *)_this)->id, 4) ] = 1;
#ifdef VAR_RANGES
		logval("CommsManager:connectedClients[CommsManager:id]", ((int)((P1 *)_this)->connectedClients[ Index(((P1 *)_this)->id, 4) ]));
#endif
		;
		_m = 3; goto P999; /* 3 */
	case 23: // STATE 20 - problem2.pml:131 - [cmAbleWcp!1] (0:0:0 - 1)
		IfNotBlocked
		reached[1][20] = 1;
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
	case 24: // STATE 22 - problem2.pml:132 - [reply = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][22] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->reply;
		((P1 *)_this)->reply = 1;
#ifdef VAR_RANGES
		logval("CommsManager:reply", ((P1 *)_this)->reply);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 25: // STATE 25 - problem2.pml:134 - [cmConnectReply[id]!reply] (0:0:0 - 3)
		IfNotBlocked
		reached[1][25] = 1;
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
	case 26: // STATE 26 - problem2.pml:135 - [((currStatus==7))] (0:0:1 - 1)
		IfNotBlocked
		reached[1][26] = 1;
		if (!((((P1 *)_this)->currStatus==7)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: currStatus */  (trpt+1)->bup.oval = ((P1 *)_this)->currStatus;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->currStatus = 0;
		_m = 3; goto P999; /* 0 */
	case 27: // STATE 27 - problem2.pml:136 - [cmCommand[id]!4] (0:0:0 - 1)
		IfNotBlocked
		reached[1][27] = 1;
		if (q_full(now.cmCommand[ Index(((P1 *)_this)->id, 4) ]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.cmCommand[ Index(((P1 *)_this)->id, 4) ]);
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.cmCommand[ Index(((P1 *)_this)->id, 4) ], 0, 4, 0, 1);
		_m = 2; goto P999; /* 0 */
	case 28: // STATE 28 - problem2.pml:137 - [currStatus = 6] (0:0:1 - 1)
		IfNotBlocked
		reached[1][28] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->currStatus;
		((P1 *)_this)->currStatus = 6;
#ifdef VAR_RANGES
		logval("CommsManager:currStatus", ((P1 *)_this)->currStatus);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 29: // STATE 29 - problem2.pml:138 - [((currStatus==6))] (0:0:1 - 1)
		IfNotBlocked
		reached[1][29] = 1;
		if (!((((P1 *)_this)->currStatus==6)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: currStatus */  (trpt+1)->bup.oval = ((P1 *)_this)->currStatus;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->currStatus = 0;
		_m = 3; goto P999; /* 0 */
	case 30: // STATE 30 - problem2.pml:139 - [clientReport?reportStatus,id] (0:0:2 - 1)
		reached[1][30] = 1;
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
	case 31: // STATE 31 - problem2.pml:141 - [((reportStatus==2))] (0:0:1 - 1)
		IfNotBlocked
		reached[1][31] = 1;
		if (!((((P1 *)_this)->reportStatus==2)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: reportStatus */  (trpt+1)->bup.oval = ((P1 *)_this)->reportStatus;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->reportStatus = 0;
		_m = 3; goto P999; /* 0 */
	case 32: // STATE 32 - problem2.pml:141 - [cmCommand[id]!3] (0:0:0 - 1)
		IfNotBlocked
		reached[1][32] = 1;
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
	case 33: // STATE 33 - problem2.pml:142 - [currStatus = 5] (0:0:1 - 1)
		IfNotBlocked
		reached[1][33] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->currStatus;
		((P1 *)_this)->currStatus = 5;
#ifdef VAR_RANGES
		logval("CommsManager:currStatus", ((P1 *)_this)->currStatus);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 34: // STATE 34 - problem2.pml:143 - [((reportStatus==1))] (174:0:3 - 1)
		IfNotBlocked
		reached[1][34] = 1;
		if (!((((P1 *)_this)->reportStatus==1)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: reportStatus */  (trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->reportStatus;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->reportStatus = 0;
		/* merge: connectedClients[id] = 0(174, 35, 174) */
		reached[1][35] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P1 *)_this)->connectedClients[ Index(((P1 *)_this)->id, 4) ]);
		((P1 *)_this)->connectedClients[ Index(((P1 *)_this)->id, 4) ] = 0;
#ifdef VAR_RANGES
		logval("CommsManager:connectedClients[CommsManager:id]", ((int)((P1 *)_this)->connectedClients[ Index(((P1 *)_this)->id, 4) ]));
#endif
		;
		/* merge: currStatus = 8(174, 36, 174) */
		reached[1][36] = 1;
		(trpt+1)->bup.ovals[2] = ((P1 *)_this)->currStatus;
		((P1 *)_this)->currStatus = 8;
#ifdef VAR_RANGES
		logval("CommsManager:currStatus", ((P1 *)_this)->currStatus);
#endif
		;
		/* merge: .(goto)(0, 38, 174) */
		reached[1][38] = 1;
		;
		/* merge: .(goto)(0, 175, 174) */
		reached[1][175] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 35: // STATE 39 - problem2.pml:146 - [((currStatus==5))] (0:0:1 - 1)
		IfNotBlocked
		reached[1][39] = 1;
		if (!((((P1 *)_this)->currStatus==5)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: currStatus */  (trpt+1)->bup.oval = ((P1 *)_this)->currStatus;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->currStatus = 0;
		_m = 3; goto P999; /* 0 */
	case 36: // STATE 40 - problem2.pml:147 - [clientReport?reportStatus,id] (0:0:2 - 1)
		reached[1][40] = 1;
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
	case 37: // STATE 41 - problem2.pml:149 - [((reportStatus==2))] (43:0:2 - 1)
		IfNotBlocked
		reached[1][41] = 1;
		if (!((((P1 *)_this)->reportStatus==2)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: reportStatus */  (trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->reportStatus;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->reportStatus = 0;
		/* merge: currStatus = 8(0, 42, 43) */
		reached[1][42] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)_this)->currStatus;
		((P1 *)_this)->currStatus = 8;
#ifdef VAR_RANGES
		logval("CommsManager:currStatus", ((P1 *)_this)->currStatus);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 38: // STATE 43 - problem2.pml:150 - [cmAbleWcp!2] (0:0:0 - 1)
		IfNotBlocked
		reached[1][43] = 1;
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
	case 39: // STATE 44 - problem2.pml:151 - [((reportStatus==1))] (47:0:3 - 1)
		IfNotBlocked
		reached[1][44] = 1;
		if (!((((P1 *)_this)->reportStatus==1)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: reportStatus */  (trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->reportStatus;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->reportStatus = 0;
		/* merge: connectedClients[id] = 0(47, 45, 47) */
		reached[1][45] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P1 *)_this)->connectedClients[ Index(((P1 *)_this)->id, 4) ]);
		((P1 *)_this)->connectedClients[ Index(((P1 *)_this)->id, 4) ] = 0;
#ifdef VAR_RANGES
		logval("CommsManager:connectedClients[CommsManager:id]", ((int)((P1 *)_this)->connectedClients[ Index(((P1 *)_this)->id, 4) ]));
#endif
		;
		/* merge: currStatus = 8(47, 46, 47) */
		reached[1][46] = 1;
		(trpt+1)->bup.ovals[2] = ((P1 *)_this)->currStatus;
		((P1 *)_this)->currStatus = 8;
#ifdef VAR_RANGES
		logval("CommsManager:currStatus", ((P1 *)_this)->currStatus);
#endif
		;
		_m = 3; goto P999; /* 2 */
	case 40: // STATE 47 - problem2.pml:153 - [cmAbleWcp!2] (0:0:0 - 1)
		IfNotBlocked
		reached[1][47] = 1;
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
	case 41: // STATE 50 - problem2.pml:155 - [((nempty(wcpRequest)&&(currStatus==8)))] (0:0:1 - 1)
		IfNotBlocked
		reached[1][50] = 1;
		if (!(((q_len(now.wcpRequest)>0)&&(((P1 *)_this)->currStatus==8))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: currStatus */  (trpt+1)->bup.oval = ((P1 *)_this)->currStatus;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->currStatus = 0;
		_m = 3; goto P999; /* 0 */
	case 42: // STATE 51 - problem2.pml:156 - [wcpRequest?button] (0:0:2 - 1)
		reached[1][51] = 1;
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
	case 43: // STATE 52 - problem2.pml:157 - [currStatus = 4] (0:0:1 - 1)
		IfNotBlocked
		reached[1][52] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->currStatus;
		((P1 *)_this)->currStatus = 4;
#ifdef VAR_RANGES
		logval("CommsManager:currStatus", ((P1 *)_this)->currStatus);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 44: // STATE 53 - problem2.pml:158 - [cmAbleWcp!1] (0:0:0 - 1)
		IfNotBlocked
		reached[1][53] = 1;
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
	case 45: // STATE 54 - problem2.pml:159 - [((currStatus==4))] (61:0:2 - 1)
		IfNotBlocked
		reached[1][54] = 1;
		if (!((((P1 *)_this)->currStatus==4)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: currStatus */  (trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->currStatus;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->currStatus = 0;
		/* merge: i = 0(0, 55, 61) */
		reached[1][55] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)_this)->i;
		((P1 *)_this)->i = 0;
#ifdef VAR_RANGES
		logval("CommsManager:i", ((P1 *)_this)->i);
#endif
		;
		/* merge: .(goto)(0, 62, 61) */
		reached[1][62] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 46: // STATE 56 - problem2.pml:160 - [((i<=(4-1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][56] = 1;
		if (!((((P1 *)_this)->i<=(4-1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 47: // STATE 57 - problem2.pml:161 - [cmCommand[i]!4] (0:0:0 - 1)
		IfNotBlocked
		reached[1][57] = 1;
		if (q_full(now.cmCommand[ Index(((P1 *)_this)->i, 4) ]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.cmCommand[ Index(((P1 *)_this)->i, 4) ]);
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.cmCommand[ Index(((P1 *)_this)->i, 4) ], 0, 4, 0, 1);
		_m = 2; goto P999; /* 0 */
	case 48: // STATE 58 - problem2.pml:160 - [i = (i+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][58] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->i;
		((P1 *)_this)->i = (((P1 *)_this)->i+1);
#ifdef VAR_RANGES
		logval("CommsManager:i", ((P1 *)_this)->i);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 49: // STATE 64 - problem2.pml:163 - [currStatus = 3] (0:174:1 - 3)
		IfNotBlocked
		reached[1][64] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->currStatus;
		((P1 *)_this)->currStatus = 3;
#ifdef VAR_RANGES
		logval("CommsManager:currStatus", ((P1 *)_this)->currStatus);
#endif
		;
		/* merge: .(goto)(0, 175, 174) */
		reached[1][175] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 50: // STATE 65 - problem2.pml:164 - [((currStatus==3))] (79:0:3 - 1)
		IfNotBlocked
		reached[1][65] = 1;
		if (!((((P1 *)_this)->currStatus==3)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: currStatus */  (trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->currStatus;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->currStatus = 0;
		/* merge: hasFail = 0(79, 66, 79) */
		reached[1][66] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P1 *)_this)->hasFail);
		((P1 *)_this)->hasFail = 0;
#ifdef VAR_RANGES
		logval("CommsManager:hasFail", ((int)((P1 *)_this)->hasFail));
#endif
		;
		/* merge: i = 0(79, 67, 79) */
		reached[1][67] = 1;
		(trpt+1)->bup.ovals[2] = ((P1 *)_this)->i;
		((P1 *)_this)->i = 0;
#ifdef VAR_RANGES
		logval("CommsManager:i", ((P1 *)_this)->i);
#endif
		;
		/* merge: .(goto)(0, 80, 79) */
		reached[1][80] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 51: // STATE 68 - problem2.pml:166 - [((i<=(4-1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][68] = 1;
		if (!((((P1 *)_this)->i<=(4-1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 52: // STATE 69 - problem2.pml:167 - [clientReport?reportStatus,id] (0:0:2 - 1)
		reached[1][69] = 1;
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
	case 53: // STATE 70 - problem2.pml:169 - [((reportStatus==1))] (79:0:3 - 1)
		IfNotBlocked
		reached[1][70] = 1;
		if (!((((P1 *)_this)->reportStatus==1)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: reportStatus */  (trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->reportStatus;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->reportStatus = 0;
		/* merge: hasFail = 1(79, 71, 79) */
		reached[1][71] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P1 *)_this)->hasFail);
		((P1 *)_this)->hasFail = 1;
#ifdef VAR_RANGES
		logval("CommsManager:hasFail", ((int)((P1 *)_this)->hasFail));
#endif
		;
		/* merge: .(goto)(79, 75, 79) */
		reached[1][75] = 1;
		;
		/* merge: i = (i+1)(79, 76, 79) */
		reached[1][76] = 1;
		(trpt+1)->bup.ovals[2] = ((P1 *)_this)->i;
		((P1 *)_this)->i = (((P1 *)_this)->i+1);
#ifdef VAR_RANGES
		logval("CommsManager:i", ((P1 *)_this)->i);
#endif
		;
		/* merge: .(goto)(0, 80, 79) */
		reached[1][80] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 54: // STATE 73 - problem2.pml:170 - [(1)] (79:0:1 - 1)
		IfNotBlocked
		reached[1][73] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(79, 75, 79) */
		reached[1][75] = 1;
		;
		/* merge: i = (i+1)(79, 76, 79) */
		reached[1][76] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->i;
		((P1 *)_this)->i = (((P1 *)_this)->i+1);
#ifdef VAR_RANGES
		logval("CommsManager:i", ((P1 *)_this)->i);
#endif
		;
		/* merge: .(goto)(0, 80, 79) */
		reached[1][80] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 55: // STATE 76 - problem2.pml:166 - [i = (i+1)] (0:79:1 - 3)
		IfNotBlocked
		reached[1][76] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->i;
		((P1 *)_this)->i = (((P1 *)_this)->i+1);
#ifdef VAR_RANGES
		logval("CommsManager:i", ((P1 *)_this)->i);
#endif
		;
		/* merge: .(goto)(0, 80, 79) */
		reached[1][80] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 56: // STATE 82 - problem2.pml:174 - [(hasFail)] (89:0:2 - 1)
		IfNotBlocked
		reached[1][82] = 1;
		if (!(((int)((P1 *)_this)->hasFail)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: hasFail */  (trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->hasFail;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->hasFail = 0;
		/* merge: i = 0(0, 83, 89) */
		reached[1][83] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)_this)->i;
		((P1 *)_this)->i = 0;
#ifdef VAR_RANGES
		logval("CommsManager:i", ((P1 *)_this)->i);
#endif
		;
		/* merge: .(goto)(0, 90, 89) */
		reached[1][90] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 57: // STATE 84 - problem2.pml:175 - [((i<=(4-1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][84] = 1;
		if (!((((P1 *)_this)->i<=(4-1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 58: // STATE 85 - problem2.pml:176 - [cmCommand[i]!3] (0:0:0 - 1)
		IfNotBlocked
		reached[1][85] = 1;
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
	case 59: // STATE 86 - problem2.pml:175 - [i = (i+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][86] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->i;
		((P1 *)_this)->i = (((P1 *)_this)->i+1);
#ifdef VAR_RANGES
		logval("CommsManager:i", ((P1 *)_this)->i);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 60: // STATE 92 - problem2.pml:178 - [currStatus = 1] (0:174:1 - 3)
		IfNotBlocked
		reached[1][92] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->currStatus;
		((P1 *)_this)->currStatus = 1;
#ifdef VAR_RANGES
		logval("CommsManager:currStatus", ((P1 *)_this)->currStatus);
#endif
		;
		/* merge: .(goto)(0, 105, 174) */
		reached[1][105] = 1;
		;
		/* merge: .(goto)(0, 175, 174) */
		reached[1][175] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 61: // STATE 94 - problem2.pml:180 - [i = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][94] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->i;
		((P1 *)_this)->i = 0;
#ifdef VAR_RANGES
		logval("CommsManager:i", ((P1 *)_this)->i);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 62: // STATE 95 - problem2.pml:180 - [((i<=(4-1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][95] = 1;
		if (!((((P1 *)_this)->i<=(4-1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 63: // STATE 96 - problem2.pml:181 - [cmCommand[i]!3] (0:0:0 - 1)
		IfNotBlocked
		reached[1][96] = 1;
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
	case 64: // STATE 97 - problem2.pml:180 - [i = (i+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][97] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->i;
		((P1 *)_this)->i = (((P1 *)_this)->i+1);
#ifdef VAR_RANGES
		logval("CommsManager:i", ((P1 *)_this)->i);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 65: // STATE 103 - problem2.pml:183 - [currStatus = 2] (0:174:1 - 3)
		IfNotBlocked
		reached[1][103] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->currStatus;
		((P1 *)_this)->currStatus = 2;
#ifdef VAR_RANGES
		logval("CommsManager:currStatus", ((P1 *)_this)->currStatus);
#endif
		;
		/* merge: .(goto)(0, 105, 174) */
		reached[1][105] = 1;
		;
		/* merge: .(goto)(0, 175, 174) */
		reached[1][175] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 66: // STATE 106 - problem2.pml:185 - [((currStatus==2))] (120:0:3 - 1)
		IfNotBlocked
		reached[1][106] = 1;
		if (!((((P1 *)_this)->currStatus==2)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: currStatus */  (trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->currStatus;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->currStatus = 0;
		/* merge: hasFail = 0(120, 107, 120) */
		reached[1][107] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P1 *)_this)->hasFail);
		((P1 *)_this)->hasFail = 0;
#ifdef VAR_RANGES
		logval("CommsManager:hasFail", ((int)((P1 *)_this)->hasFail));
#endif
		;
		/* merge: i = 0(120, 108, 120) */
		reached[1][108] = 1;
		(trpt+1)->bup.ovals[2] = ((P1 *)_this)->i;
		((P1 *)_this)->i = 0;
#ifdef VAR_RANGES
		logval("CommsManager:i", ((P1 *)_this)->i);
#endif
		;
		/* merge: .(goto)(0, 121, 120) */
		reached[1][121] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 67: // STATE 109 - problem2.pml:187 - [((i<=(4-1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][109] = 1;
		if (!((((P1 *)_this)->i<=(4-1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 68: // STATE 110 - problem2.pml:188 - [clientReport?reportStatus,id] (0:0:2 - 1)
		reached[1][110] = 1;
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
	case 69: // STATE 111 - problem2.pml:190 - [((reportStatus==1))] (120:0:3 - 1)
		IfNotBlocked
		reached[1][111] = 1;
		if (!((((P1 *)_this)->reportStatus==1)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: reportStatus */  (trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->reportStatus;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->reportStatus = 0;
		/* merge: hasFail = 1(120, 112, 120) */
		reached[1][112] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P1 *)_this)->hasFail);
		((P1 *)_this)->hasFail = 1;
#ifdef VAR_RANGES
		logval("CommsManager:hasFail", ((int)((P1 *)_this)->hasFail));
#endif
		;
		/* merge: .(goto)(120, 116, 120) */
		reached[1][116] = 1;
		;
		/* merge: i = (i+1)(120, 117, 120) */
		reached[1][117] = 1;
		(trpt+1)->bup.ovals[2] = ((P1 *)_this)->i;
		((P1 *)_this)->i = (((P1 *)_this)->i+1);
#ifdef VAR_RANGES
		logval("CommsManager:i", ((P1 *)_this)->i);
#endif
		;
		/* merge: .(goto)(0, 121, 120) */
		reached[1][121] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 70: // STATE 114 - problem2.pml:191 - [(1)] (120:0:1 - 1)
		IfNotBlocked
		reached[1][114] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(120, 116, 120) */
		reached[1][116] = 1;
		;
		/* merge: i = (i+1)(120, 117, 120) */
		reached[1][117] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->i;
		((P1 *)_this)->i = (((P1 *)_this)->i+1);
#ifdef VAR_RANGES
		logval("CommsManager:i", ((P1 *)_this)->i);
#endif
		;
		/* merge: .(goto)(0, 121, 120) */
		reached[1][121] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 71: // STATE 117 - problem2.pml:187 - [i = (i+1)] (0:120:1 - 3)
		IfNotBlocked
		reached[1][117] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->i;
		((P1 *)_this)->i = (((P1 *)_this)->i+1);
#ifdef VAR_RANGES
		logval("CommsManager:i", ((P1 *)_this)->i);
#endif
		;
		/* merge: .(goto)(0, 121, 120) */
		reached[1][121] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 72: // STATE 123 - problem2.pml:195 - [(hasFail)] (125:0:2 - 1)
		IfNotBlocked
		reached[1][123] = 1;
		if (!(((int)((P1 *)_this)->hasFail)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: hasFail */  (trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->hasFail;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->hasFail = 0;
		/* merge: currStatus = 8(0, 124, 125) */
		reached[1][124] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)_this)->currStatus;
		((P1 *)_this)->currStatus = 8;
#ifdef VAR_RANGES
		logval("CommsManager:currStatus", ((P1 *)_this)->currStatus);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 73: // STATE 125 - problem2.pml:196 - [cmAbleWcp!2] (0:0:0 - 1)
		IfNotBlocked
		reached[1][125] = 1;
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
	case 74: // STATE 127 - problem2.pml:197 - [currStatus = 8] (0:134:2 - 1)
		IfNotBlocked
		reached[1][127] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->currStatus;
		((P1 *)_this)->currStatus = 8;
#ifdef VAR_RANGES
		logval("CommsManager:currStatus", ((P1 *)_this)->currStatus);
#endif
		;
		/* merge: i = 0(134, 128, 134) */
		reached[1][128] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)_this)->i;
		((P1 *)_this)->i = 0;
#ifdef VAR_RANGES
		logval("CommsManager:i", ((P1 *)_this)->i);
#endif
		;
		/* merge: .(goto)(0, 135, 134) */
		reached[1][135] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 75: // STATE 129 - problem2.pml:198 - [((i<=(4-1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][129] = 1;
		if (!((((P1 *)_this)->i<=(4-1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 76: // STATE 130 - problem2.pml:199 - [cmCommand[i]!1] (0:0:0 - 1)
		IfNotBlocked
		reached[1][130] = 1;
		if (q_full(now.cmCommand[ Index(((P1 *)_this)->i, 4) ]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.cmCommand[ Index(((P1 *)_this)->i, 4) ]);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.cmCommand[ Index(((P1 *)_this)->i, 4) ], 0, 1, 0, 1);
		_m = 2; goto P999; /* 0 */
	case 77: // STATE 131 - problem2.pml:198 - [i = (i+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][131] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->i;
		((P1 *)_this)->i = (((P1 *)_this)->i+1);
#ifdef VAR_RANGES
		logval("CommsManager:i", ((P1 *)_this)->i);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 78: // STATE 137 - problem2.pml:201 - [cmAbleWcp!2] (0:0:0 - 3)
		IfNotBlocked
		reached[1][137] = 1;
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
	case 79: // STATE 140 - problem2.pml:203 - [((currStatus==1))] (154:0:3 - 1)
		IfNotBlocked
		reached[1][140] = 1;
		if (!((((P1 *)_this)->currStatus==1)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: currStatus */  (trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->currStatus;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->currStatus = 0;
		/* merge: hasFail = 0(154, 141, 154) */
		reached[1][141] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P1 *)_this)->hasFail);
		((P1 *)_this)->hasFail = 0;
#ifdef VAR_RANGES
		logval("CommsManager:hasFail", ((int)((P1 *)_this)->hasFail));
#endif
		;
		/* merge: i = 0(154, 142, 154) */
		reached[1][142] = 1;
		(trpt+1)->bup.ovals[2] = ((P1 *)_this)->i;
		((P1 *)_this)->i = 0;
#ifdef VAR_RANGES
		logval("CommsManager:i", ((P1 *)_this)->i);
#endif
		;
		/* merge: .(goto)(0, 155, 154) */
		reached[1][155] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 80: // STATE 143 - problem2.pml:205 - [((i<=(4-1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][143] = 1;
		if (!((((P1 *)_this)->i<=(4-1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 81: // STATE 144 - problem2.pml:206 - [clientReport?reportStatus,id] (0:0:2 - 1)
		reached[1][144] = 1;
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
	case 82: // STATE 145 - problem2.pml:208 - [((reportStatus==1))] (154:0:3 - 1)
		IfNotBlocked
		reached[1][145] = 1;
		if (!((((P1 *)_this)->reportStatus==1)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: reportStatus */  (trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->reportStatus;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->reportStatus = 0;
		/* merge: hasFail = 1(154, 146, 154) */
		reached[1][146] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P1 *)_this)->hasFail);
		((P1 *)_this)->hasFail = 1;
#ifdef VAR_RANGES
		logval("CommsManager:hasFail", ((int)((P1 *)_this)->hasFail));
#endif
		;
		/* merge: .(goto)(154, 150, 154) */
		reached[1][150] = 1;
		;
		/* merge: i = (i+1)(154, 151, 154) */
		reached[1][151] = 1;
		(trpt+1)->bup.ovals[2] = ((P1 *)_this)->i;
		((P1 *)_this)->i = (((P1 *)_this)->i+1);
#ifdef VAR_RANGES
		logval("CommsManager:i", ((P1 *)_this)->i);
#endif
		;
		/* merge: .(goto)(0, 155, 154) */
		reached[1][155] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 83: // STATE 148 - problem2.pml:209 - [(1)] (154:0:1 - 1)
		IfNotBlocked
		reached[1][148] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(154, 150, 154) */
		reached[1][150] = 1;
		;
		/* merge: i = (i+1)(154, 151, 154) */
		reached[1][151] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->i;
		((P1 *)_this)->i = (((P1 *)_this)->i+1);
#ifdef VAR_RANGES
		logval("CommsManager:i", ((P1 *)_this)->i);
#endif
		;
		/* merge: .(goto)(0, 155, 154) */
		reached[1][155] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 84: // STATE 151 - problem2.pml:205 - [i = (i+1)] (0:154:1 - 3)
		IfNotBlocked
		reached[1][151] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->i;
		((P1 *)_this)->i = (((P1 *)_this)->i+1);
#ifdef VAR_RANGES
		logval("CommsManager:i", ((P1 *)_this)->i);
#endif
		;
		/* merge: .(goto)(0, 155, 154) */
		reached[1][155] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 85: // STATE 157 - problem2.pml:213 - [(hasFail)] (159:0:2 - 1)
		IfNotBlocked
		reached[1][157] = 1;
		if (!(((int)((P1 *)_this)->hasFail)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: hasFail */  (trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->hasFail;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->hasFail = 0;
		/* merge: currStatus = 8(0, 158, 159) */
		reached[1][158] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)_this)->currStatus;
		((P1 *)_this)->currStatus = 8;
#ifdef VAR_RANGES
		logval("CommsManager:currStatus", ((P1 *)_this)->currStatus);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 86: // STATE 159 - problem2.pml:214 - [cmAbleWcp!2] (0:0:0 - 1)
		IfNotBlocked
		reached[1][159] = 1;
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
	case 87: // STATE 161 - problem2.pml:215 - [currStatus = 8] (0:168:2 - 1)
		IfNotBlocked
		reached[1][161] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->currStatus;
		((P1 *)_this)->currStatus = 8;
#ifdef VAR_RANGES
		logval("CommsManager:currStatus", ((P1 *)_this)->currStatus);
#endif
		;
		/* merge: i = 0(168, 162, 168) */
		reached[1][162] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)_this)->i;
		((P1 *)_this)->i = 0;
#ifdef VAR_RANGES
		logval("CommsManager:i", ((P1 *)_this)->i);
#endif
		;
		/* merge: .(goto)(0, 169, 168) */
		reached[1][169] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 88: // STATE 163 - problem2.pml:216 - [((i<=(4-1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][163] = 1;
		if (!((((P1 *)_this)->i<=(4-1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 89: // STATE 164 - problem2.pml:217 - [cmCommand[i]!1] (0:0:0 - 1)
		IfNotBlocked
		reached[1][164] = 1;
		if (q_full(now.cmCommand[ Index(((P1 *)_this)->i, 4) ]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.cmCommand[ Index(((P1 *)_this)->i, 4) ]);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.cmCommand[ Index(((P1 *)_this)->i, 4) ], 0, 1, 0, 1);
		_m = 2; goto P999; /* 0 */
	case 90: // STATE 165 - problem2.pml:216 - [i = (i+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][165] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->i;
		((P1 *)_this)->i = (((P1 *)_this)->i+1);
#ifdef VAR_RANGES
		logval("CommsManager:i", ((P1 *)_this)->i);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 91: // STATE 171 - problem2.pml:219 - [cmAbleWcp!2] (0:0:0 - 3)
		IfNotBlocked
		reached[1][171] = 1;
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
	case 92: // STATE 177 - problem2.pml:222 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][177] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Client */
	case 93: // STATE 1 - problem2.pml:32 - [(!(connected))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		if (!( !(((int)((P0 *)_this)->connected))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 94: // STATE 2 - problem2.pml:33 - [cmConnectRequest!id] (0:0:0 - 1)
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
	case 95: // STATE 3 - problem2.pml:34 - [cmConnectReply[id]?reply] (0:0:1 - 1)
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
	case 96: // STATE 4 - problem2.pml:36 - [((reply==2))] (110:0:3 - 1)
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
		/* merge: currStatus = 7(110, 5, 110) */
		reached[0][5] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->currStatus;
		((P0 *)_this)->currStatus = 7;
#ifdef VAR_RANGES
		logval("Client:currStatus", ((P0 *)_this)->currStatus);
#endif
		;
		/* merge: connected = 1(110, 6, 110) */
		reached[0][6] = 1;
		(trpt+1)->bup.ovals[2] = ((int)((P0 *)_this)->connected);
		((P0 *)_this)->connected = 1;
#ifdef VAR_RANGES
		logval("Client:connected", ((int)((P0 *)_this)->connected));
#endif
		;
		/* merge: .(goto)(0, 10, 110) */
		reached[0][10] = 1;
		;
		/* merge: .(goto)(0, 111, 110) */
		reached[0][111] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 97: // STATE 11 - problem2.pml:39 - [((currStatus==7))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][11] = 1;
		if (!((((P0 *)_this)->currStatus==7)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 98: // STATE 12 - problem2.pml:40 - [cmCommand[id]?currCommand] (0:0:1 - 1)
		reached[0][12] = 1;
		if (q_len(now.cmCommand[ Index(((P0 *)_this)->id, 4) ]) == 0) continue;

		XX=1;
		(trpt+1)->bup.oval = ((P0 *)_this)->currCommand;
		;
		((P0 *)_this)->currCommand = qrecv(now.cmCommand[ Index(((P0 *)_this)->id, 4) ], XX-1, 0, 1);
#ifdef VAR_RANGES
		logval("Client:currCommand", ((P0 *)_this)->currCommand);
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.cmCommand[ Index(((P0 *)_this)->id, 4) ]);
		sprintf(simtmp, "%d", ((P0 *)_this)->currCommand); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 99: // STATE 13 - problem2.pml:42 - [((currCommand==4))] (110:0:2 - 1)
		IfNotBlocked
		reached[0][13] = 1;
		if (!((((P0 *)_this)->currCommand==4)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: currCommand */  (trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->currCommand;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->currCommand = 0;
		/* merge: currStatus = 6(0, 14, 110) */
		reached[0][14] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->currStatus;
		((P0 *)_this)->currStatus = 6;
#ifdef VAR_RANGES
		logval("Client:currStatus", ((P0 *)_this)->currStatus);
#endif
		;
		/* merge: .(goto)(0, 18, 110) */
		reached[0][18] = 1;
		;
		/* merge: .(goto)(0, 111, 110) */
		reached[0][111] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 100: // STATE 19 - problem2.pml:45 - [((currStatus==6))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][19] = 1;
		if (!((((P0 *)_this)->currStatus==6)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 101: // STATE 20 - problem2.pml:47 - [(getInfoSuccess)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][20] = 1;
		if (!(((int)((P0 *)_this)->getInfoSuccess)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 102: // STATE 21 - problem2.pml:47 - [clientReport!2,id] (0:0:0 - 1)
		IfNotBlocked
		reached[0][21] = 1;
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
	case 103: // STATE 22 - problem2.pml:48 - [cmCommand[id]?currCommand] (0:0:1 - 1)
		reached[0][22] = 1;
		if (q_len(now.cmCommand[ Index(((P0 *)_this)->id, 4) ]) == 0) continue;

		XX=1;
		(trpt+1)->bup.oval = ((P0 *)_this)->currCommand;
		;
		((P0 *)_this)->currCommand = qrecv(now.cmCommand[ Index(((P0 *)_this)->id, 4) ], XX-1, 0, 1);
#ifdef VAR_RANGES
		logval("Client:currCommand", ((P0 *)_this)->currCommand);
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.cmCommand[ Index(((P0 *)_this)->id, 4) ]);
		sprintf(simtmp, "%d", ((P0 *)_this)->currCommand); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 104: // STATE 23 - problem2.pml:50 - [((currCommand==3))] (110:0:2 - 1)
		IfNotBlocked
		reached[0][23] = 1;
		if (!((((P0 *)_this)->currCommand==3)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: currCommand */  (trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->currCommand;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->currCommand = 0;
		/* merge: currStatus = 5(0, 24, 110) */
		reached[0][24] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->currStatus;
		((P0 *)_this)->currStatus = 5;
#ifdef VAR_RANGES
		logval("Client:currStatus", ((P0 *)_this)->currStatus);
#endif
		;
		/* merge: .(goto)(0, 28, 110) */
		reached[0][28] = 1;
		;
		/* merge: .(goto)(0, 34, 110) */
		reached[0][34] = 1;
		;
		/* merge: .(goto)(0, 111, 110) */
		reached[0][111] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 105: // STATE 30 - problem2.pml:53 - [clientReport!1,id] (0:0:0 - 1)
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
	case 106: // STATE 31 - problem2.pml:54 - [currStatus = 8] (0:110:2 - 1)
		IfNotBlocked
		reached[0][31] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->currStatus;
		((P0 *)_this)->currStatus = 8;
#ifdef VAR_RANGES
		logval("Client:currStatus", ((P0 *)_this)->currStatus);
#endif
		;
		/* merge: connected = 0(110, 32, 110) */
		reached[0][32] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P0 *)_this)->connected);
		((P0 *)_this)->connected = 0;
#ifdef VAR_RANGES
		logval("Client:connected", ((int)((P0 *)_this)->connected));
#endif
		;
		/* merge: .(goto)(0, 34, 110) */
		reached[0][34] = 1;
		;
		/* merge: .(goto)(0, 111, 110) */
		reached[0][111] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 107: // STATE 35 - problem2.pml:56 - [((currStatus==5))] (0:0:1 - 1)
		IfNotBlocked
		reached[0][35] = 1;
		if (!((((P0 *)_this)->currStatus==5)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: currStatus */  (trpt+1)->bup.oval = ((P0 *)_this)->currStatus;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->currStatus = 0;
		_m = 3; goto P999; /* 0 */
	case 108: // STATE 36 - problem2.pml:58 - [(useNewInfoSuccess)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][36] = 1;
		if (!(((int)((P0 *)_this)->useNewInfoSuccess)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 109: // STATE 37 - problem2.pml:58 - [clientReport!2,id] (0:0:0 - 1)
		IfNotBlocked
		reached[0][37] = 1;
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
	case 110: // STATE 38 - problem2.pml:59 - [currStatus = 8] (0:0:1 - 1)
		IfNotBlocked
		reached[0][38] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->currStatus;
		((P0 *)_this)->currStatus = 8;
#ifdef VAR_RANGES
		logval("Client:currStatus", ((P0 *)_this)->currStatus);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 111: // STATE 40 - problem2.pml:60 - [clientReport!1,id] (0:0:0 - 1)
		IfNotBlocked
		reached[0][40] = 1;
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
	case 112: // STATE 41 - problem2.pml:61 - [connected = 0] (0:110:2 - 1)
		IfNotBlocked
		reached[0][41] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P0 *)_this)->connected);
		((P0 *)_this)->connected = 0;
#ifdef VAR_RANGES
		logval("Client:connected", ((int)((P0 *)_this)->connected));
#endif
		;
		/* merge: currStatus = 8(110, 42, 110) */
		reached[0][42] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->currStatus;
		((P0 *)_this)->currStatus = 8;
#ifdef VAR_RANGES
		logval("Client:currStatus", ((P0 *)_this)->currStatus);
#endif
		;
		/* merge: .(goto)(0, 44, 110) */
		reached[0][44] = 1;
		;
		/* merge: .(goto)(0, 111, 110) */
		reached[0][111] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 113: // STATE 45 - problem2.pml:63 - [(((nempty(wcpRequest)&&(currStatus==8))&&connected))] (0:0:1 - 1)
		IfNotBlocked
		reached[0][45] = 1;
		if (!((((q_len(now.wcpRequest)>0)&&(((P0 *)_this)->currStatus==8))&&((int)((P0 *)_this)->connected))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: currStatus */  (trpt+1)->bup.oval = ((P0 *)_this)->currStatus;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->currStatus = 0;
		_m = 3; goto P999; /* 0 */
	case 114: // STATE 46 - problem2.pml:64 - [currStatus = 4] (0:0:1 - 1)
		IfNotBlocked
		reached[0][46] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->currStatus;
		((P0 *)_this)->currStatus = 4;
#ifdef VAR_RANGES
		logval("Client:currStatus", ((P0 *)_this)->currStatus);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 115: // STATE 47 - problem2.pml:65 - [(((currStatus==4)&&connected))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][47] = 1;
		if (!(((((P0 *)_this)->currStatus==4)&&((int)((P0 *)_this)->connected))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 116: // STATE 48 - problem2.pml:66 - [cmCommand[id]?currCommand] (0:0:1 - 1)
		reached[0][48] = 1;
		if (q_len(now.cmCommand[ Index(((P0 *)_this)->id, 4) ]) == 0) continue;

		XX=1;
		(trpt+1)->bup.oval = ((P0 *)_this)->currCommand;
		;
		((P0 *)_this)->currCommand = qrecv(now.cmCommand[ Index(((P0 *)_this)->id, 4) ], XX-1, 0, 1);
#ifdef VAR_RANGES
		logval("Client:currCommand", ((P0 *)_this)->currCommand);
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.cmCommand[ Index(((P0 *)_this)->id, 4) ]);
		sprintf(simtmp, "%d", ((P0 *)_this)->currCommand); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 117: // STATE 49 - problem2.pml:68 - [((currCommand==4))] (110:0:2 - 1)
		IfNotBlocked
		reached[0][49] = 1;
		if (!((((P0 *)_this)->currCommand==4)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: currCommand */  (trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->currCommand;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->currCommand = 0;
		/* merge: currStatus = 3(0, 50, 110) */
		reached[0][50] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->currStatus;
		((P0 *)_this)->currStatus = 3;
#ifdef VAR_RANGES
		logval("Client:currStatus", ((P0 *)_this)->currStatus);
#endif
		;
		/* merge: .(goto)(0, 54, 110) */
		reached[0][54] = 1;
		;
		/* merge: .(goto)(0, 111, 110) */
		reached[0][111] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 118: // STATE 55 - problem2.pml:71 - [(((currStatus==3)&&connected))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][55] = 1;
		if (!(((((P0 *)_this)->currStatus==3)&&((int)((P0 *)_this)->connected))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 119: // STATE 56 - problem2.pml:73 - [(getInfoSuccess)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][56] = 1;
		if (!(((int)((P0 *)_this)->getInfoSuccess)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 120: // STATE 57 - problem2.pml:73 - [clientReport!2,id] (0:0:0 - 1)
		IfNotBlocked
		reached[0][57] = 1;
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
	case 121: // STATE 58 - problem2.pml:74 - [cmCommand[id]?currCommand] (0:0:1 - 1)
		reached[0][58] = 1;
		if (q_len(now.cmCommand[ Index(((P0 *)_this)->id, 4) ]) == 0) continue;

		XX=1;
		(trpt+1)->bup.oval = ((P0 *)_this)->currCommand;
		;
		((P0 *)_this)->currCommand = qrecv(now.cmCommand[ Index(((P0 *)_this)->id, 4) ], XX-1, 0, 1);
#ifdef VAR_RANGES
		logval("Client:currCommand", ((P0 *)_this)->currCommand);
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.cmCommand[ Index(((P0 *)_this)->id, 4) ]);
		sprintf(simtmp, "%d", ((P0 *)_this)->currCommand); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 122: // STATE 59 - problem2.pml:76 - [((currCommand==3))] (110:0:2 - 1)
		IfNotBlocked
		reached[0][59] = 1;
		if (!((((P0 *)_this)->currCommand==3)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: currCommand */  (trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->currCommand;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->currCommand = 0;
		/* merge: currStatus = 2(0, 60, 110) */
		reached[0][60] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->currStatus;
		((P0 *)_this)->currStatus = 2;
#ifdef VAR_RANGES
		logval("Client:currStatus", ((P0 *)_this)->currStatus);
#endif
		;
		/* merge: .(goto)(0, 64, 110) */
		reached[0][64] = 1;
		;
		/* merge: .(goto)(0, 75, 110) */
		reached[0][75] = 1;
		;
		/* merge: .(goto)(0, 111, 110) */
		reached[0][111] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 123: // STATE 66 - problem2.pml:79 - [clientReport!1,id] (0:0:0 - 1)
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
	case 124: // STATE 67 - problem2.pml:80 - [cmCommand[id]?currCommand] (0:0:1 - 1)
		reached[0][67] = 1;
		if (q_len(now.cmCommand[ Index(((P0 *)_this)->id, 4) ]) == 0) continue;

		XX=1;
		(trpt+1)->bup.oval = ((P0 *)_this)->currCommand;
		;
		((P0 *)_this)->currCommand = qrecv(now.cmCommand[ Index(((P0 *)_this)->id, 4) ], XX-1, 0, 1);
#ifdef VAR_RANGES
		logval("Client:currCommand", ((P0 *)_this)->currCommand);
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.cmCommand[ Index(((P0 *)_this)->id, 4) ]);
		sprintf(simtmp, "%d", ((P0 *)_this)->currCommand); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 125: // STATE 68 - problem2.pml:82 - [((currCommand==2))] (110:0:2 - 1)
		IfNotBlocked
		reached[0][68] = 1;
		if (!((((P0 *)_this)->currCommand==2)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: currCommand */  (trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->currCommand;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->currCommand = 0;
		/* merge: currStatus = 1(0, 69, 110) */
		reached[0][69] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->currStatus;
		((P0 *)_this)->currStatus = 1;
#ifdef VAR_RANGES
		logval("Client:currStatus", ((P0 *)_this)->currStatus);
#endif
		;
		/* merge: .(goto)(0, 73, 110) */
		reached[0][73] = 1;
		;
		/* merge: .(goto)(0, 75, 110) */
		reached[0][75] = 1;
		;
		/* merge: .(goto)(0, 111, 110) */
		reached[0][111] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 126: // STATE 76 - problem2.pml:86 - [(((currStatus==2)&&connected))] (0:0:1 - 1)
		IfNotBlocked
		reached[0][76] = 1;
		if (!(((((P0 *)_this)->currStatus==2)&&((int)((P0 *)_this)->connected))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: currStatus */  (trpt+1)->bup.oval = ((P0 *)_this)->currStatus;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->currStatus = 0;
		_m = 3; goto P999; /* 0 */
	case 127: // STATE 77 - problem2.pml:88 - [(useNewInfoSuccess)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][77] = 1;
		if (!(((int)((P0 *)_this)->useNewInfoSuccess)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 128: // STATE 78 - problem2.pml:88 - [clientReport!2,id] (0:0:0 - 1)
		IfNotBlocked
		reached[0][78] = 1;
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
	case 129: // STATE 79 - problem2.pml:89 - [currStatus = 8] (0:0:1 - 1)
		IfNotBlocked
		reached[0][79] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->currStatus;
		((P0 *)_this)->currStatus = 8;
#ifdef VAR_RANGES
		logval("Client:currStatus", ((P0 *)_this)->currStatus);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 130: // STATE 81 - problem2.pml:90 - [clientReport!1,id] (0:0:0 - 1)
		IfNotBlocked
		reached[0][81] = 1;
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
	case 131: // STATE 82 - problem2.pml:91 - [connected = 0] (0:86:2 - 1)
		IfNotBlocked
		reached[0][82] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P0 *)_this)->connected);
		((P0 *)_this)->connected = 0;
#ifdef VAR_RANGES
		logval("Client:connected", ((int)((P0 *)_this)->connected));
#endif
		;
		/* merge: currStatus = 8(86, 83, 86) */
		reached[0][83] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->currStatus;
		((P0 *)_this)->currStatus = 8;
#ifdef VAR_RANGES
		logval("Client:currStatus", ((P0 *)_this)->currStatus);
#endif
		;
		/* merge: .(goto)(0, 85, 86) */
		reached[0][85] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 132: // STATE 86 - problem2.pml:93 - [cmCommand[id]?currCommand] (0:0:1 - 3)
		reached[0][86] = 1;
		if (q_len(now.cmCommand[ Index(((P0 *)_this)->id, 4) ]) == 0) continue;

		XX=1;
		(trpt+1)->bup.oval = ((P0 *)_this)->currCommand;
		;
		((P0 *)_this)->currCommand = qrecv(now.cmCommand[ Index(((P0 *)_this)->id, 4) ], XX-1, 0, 1);
#ifdef VAR_RANGES
		logval("Client:currCommand", ((P0 *)_this)->currCommand);
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.cmCommand[ Index(((P0 *)_this)->id, 4) ]);
		sprintf(simtmp, "%d", ((P0 *)_this)->currCommand); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 133: // STATE 87 - problem2.pml:95 - [((currCommand==1))] (110:0:2 - 1)
		IfNotBlocked
		reached[0][87] = 1;
		if (!((((P0 *)_this)->currCommand==1)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: currCommand */  (trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->currCommand;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->currCommand = 0;
		/* merge: connected = 0(0, 88, 110) */
		reached[0][88] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P0 *)_this)->connected);
		((P0 *)_this)->connected = 0;
#ifdef VAR_RANGES
		logval("Client:connected", ((int)((P0 *)_this)->connected));
#endif
		;
		/* merge: .(goto)(0, 92, 110) */
		reached[0][92] = 1;
		;
		/* merge: .(goto)(0, 111, 110) */
		reached[0][111] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 134: // STATE 93 - problem2.pml:98 - [(((currStatus==1)&&connected))] (0:0:1 - 1)
		IfNotBlocked
		reached[0][93] = 1;
		if (!(((((P0 *)_this)->currStatus==1)&&((int)((P0 *)_this)->connected))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: currStatus */  (trpt+1)->bup.oval = ((P0 *)_this)->currStatus;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->currStatus = 0;
		_m = 3; goto P999; /* 0 */
	case 135: // STATE 94 - problem2.pml:100 - [(useOldInfoSuccess)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][94] = 1;
		if (!(((int)((P0 *)_this)->useOldInfoSuccess)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 136: // STATE 95 - problem2.pml:100 - [clientReport!2,id] (0:0:0 - 1)
		IfNotBlocked
		reached[0][95] = 1;
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
	case 137: // STATE 96 - problem2.pml:101 - [currStatus = 8] (0:0:1 - 1)
		IfNotBlocked
		reached[0][96] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->currStatus;
		((P0 *)_this)->currStatus = 8;
#ifdef VAR_RANGES
		logval("Client:currStatus", ((P0 *)_this)->currStatus);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 138: // STATE 98 - problem2.pml:102 - [clientReport!1,id] (0:0:0 - 1)
		IfNotBlocked
		reached[0][98] = 1;
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
	case 139: // STATE 99 - problem2.pml:103 - [connected = 0] (0:103:2 - 1)
		IfNotBlocked
		reached[0][99] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P0 *)_this)->connected);
		((P0 *)_this)->connected = 0;
#ifdef VAR_RANGES
		logval("Client:connected", ((int)((P0 *)_this)->connected));
#endif
		;
		/* merge: currStatus = 8(103, 100, 103) */
		reached[0][100] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->currStatus;
		((P0 *)_this)->currStatus = 8;
#ifdef VAR_RANGES
		logval("Client:currStatus", ((P0 *)_this)->currStatus);
#endif
		;
		/* merge: .(goto)(0, 102, 103) */
		reached[0][102] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 140: // STATE 103 - problem2.pml:105 - [cmCommand[id]?currCommand] (0:0:1 - 3)
		reached[0][103] = 1;
		if (q_len(now.cmCommand[ Index(((P0 *)_this)->id, 4) ]) == 0) continue;

		XX=1;
		(trpt+1)->bup.oval = ((P0 *)_this)->currCommand;
		;
		((P0 *)_this)->currCommand = qrecv(now.cmCommand[ Index(((P0 *)_this)->id, 4) ], XX-1, 0, 1);
#ifdef VAR_RANGES
		logval("Client:currCommand", ((P0 *)_this)->currCommand);
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.cmCommand[ Index(((P0 *)_this)->id, 4) ]);
		sprintf(simtmp, "%d", ((P0 *)_this)->currCommand); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 141: // STATE 104 - problem2.pml:107 - [((currCommand==1))] (110:0:2 - 1)
		IfNotBlocked
		reached[0][104] = 1;
		if (!((((P0 *)_this)->currCommand==1)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: currCommand */  (trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->currCommand;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->currCommand = 0;
		/* merge: connected = 0(0, 105, 110) */
		reached[0][105] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P0 *)_this)->connected);
		((P0 *)_this)->connected = 0;
#ifdef VAR_RANGES
		logval("Client:connected", ((int)((P0 *)_this)->connected));
#endif
		;
		/* merge: .(goto)(0, 109, 110) */
		reached[0][109] = 1;
		;
		/* merge: .(goto)(0, 111, 110) */
		reached[0][111] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 142: // STATE 113 - problem2.pml:111 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][113] = 1;
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


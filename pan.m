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
	case 3: // STATE 1 - problem2.pml:326 - [(run Client(0))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][1] = 1;
		if (!(addproc(II, 1, 0, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 2 - problem2.pml:327 - [(run Client(1))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][2] = 1;
		if (!(addproc(II, 1, 0, 1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 5: // STATE 3 - problem2.pml:328 - [(run Client(2))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][3] = 1;
		if (!(addproc(II, 1, 0, 2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 6: // STATE 4 - problem2.pml:329 - [(run Client(3))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][4] = 1;
		if (!(addproc(II, 1, 0, 3)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 5 - problem2.pml:330 - [(run CommsManager())] (0:0:0 - 1)
		IfNotBlocked
		reached[3][5] = 1;
		if (!(addproc(II, 1, 1, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 6 - problem2.pml:331 - [(run ControlPanel())] (0:0:0 - 1)
		IfNotBlocked
		reached[3][6] = 1;
		if (!(addproc(II, 1, 2, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 9: // STATE 8 - problem2.pml:333 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[3][8] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC ControlPanel */
	case 10: // STATE 1 - problem2.pml:309 - [cmAbleWcp?ability] (0:0:1 - 1)
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
	case 11: // STATE 2 - problem2.pml:311 - [((ability==2))] (16:0:3 - 1)
		IfNotBlocked
		reached[2][2] = 1;
		if (!((((P2 *)_this)->ability==2)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: ability */  (trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P2 *)_this)->ability;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P2 *)_this)->ability = 0;
		/* merge: disabled = 0(16, 3, 16) */
		reached[2][3] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P2 *)_this)->disabled);
		((P2 *)_this)->disabled = 0;
#ifdef VAR_RANGES
		logval("ControlPanel:disabled", ((int)((P2 *)_this)->disabled));
#endif
		;
		/* merge: isUpdating = 0(16, 4, 16) */
		reached[2][4] = 1;
		(trpt+1)->bup.ovals[2] = ((int)((P2 *)_this)->isUpdating);
		((P2 *)_this)->isUpdating = 0;
#ifdef VAR_RANGES
		logval("ControlPanel:isUpdating", ((int)((P2 *)_this)->isUpdating));
#endif
		;
		/* merge: printf('ControlPanel: enabled\\n')(16, 5, 16) */
		reached[2][5] = 1;
		Printf("ControlPanel: enabled\n");
		/* merge: .(goto)(0, 10, 16) */
		reached[2][10] = 1;
		;
		/* merge: .(goto)(0, 17, 16) */
		reached[2][17] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 12: // STATE 7 - problem2.pml:313 - [disabled = 1] (0:16:1 - 1)
		IfNotBlocked
		reached[2][7] = 1;
		(trpt+1)->bup.oval = ((int)((P2 *)_this)->disabled);
		((P2 *)_this)->disabled = 1;
#ifdef VAR_RANGES
		logval("ControlPanel:disabled", ((int)((P2 *)_this)->disabled));
#endif
		;
		/* merge: printf('ControlPanel: disabled\\n')(16, 8, 16) */
		reached[2][8] = 1;
		Printf("ControlPanel: disabled\n");
		/* merge: .(goto)(0, 10, 16) */
		reached[2][10] = 1;
		;
		/* merge: .(goto)(0, 17, 16) */
		reached[2][17] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 13: // STATE 11 - problem2.pml:316 - [((!(disabled)&&!(isUpdating)))] (15:0:3 - 1)
		IfNotBlocked
		reached[2][11] = 1;
		if (!(( !(((int)((P2 *)_this)->disabled))&& !(((int)((P2 *)_this)->isUpdating)))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: isUpdating */  (trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P2 *)_this)->isUpdating;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P2 *)_this)->isUpdating = 0;
		/* merge: printf('ControlPanel: beginning manual update\\n')(15, 12, 15) */
		reached[2][12] = 1;
		Printf("ControlPanel: beginning manual update\n");
		/* merge: isUpdating = 1(15, 13, 15) */
		reached[2][13] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P2 *)_this)->isUpdating);
		((P2 *)_this)->isUpdating = 1;
#ifdef VAR_RANGES
		logval("ControlPanel:isUpdating", ((int)((P2 *)_this)->isUpdating));
#endif
		;
		/* merge: button = 1(15, 14, 15) */
		reached[2][14] = 1;
		(trpt+1)->bup.ovals[2] = ((P2 *)_this)->button;
		((P2 *)_this)->button = 1;
#ifdef VAR_RANGES
		logval("ControlPanel:button", ((P2 *)_this)->button);
#endif
		;
		_m = 3; goto P999; /* 3 */
	case 14: // STATE 15 - problem2.pml:320 - [wcpRequestCm!button] (0:0:0 - 1)
		IfNotBlocked
		reached[2][15] = 1;
		if (q_full(now.wcpRequestCm))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.wcpRequestCm);
		sprintf(simtmp, "%d", ((P2 *)_this)->button); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.wcpRequestCm, 0, ((P2 *)_this)->button, 0, 1);
		_m = 2; goto P999; /* 0 */
	case 15: // STATE 19 - problem2.pml:322 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[2][19] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC CommsManager */
	case 16: // STATE 1 - problem2.pml:141 - [i = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][1] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->i;
		((P1 *)_this)->i = 0;
#ifdef VAR_RANGES
		logval("CommsManager:i", ((P1 *)_this)->i);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 17: // STATE 2 - problem2.pml:141 - [((i<=(4-1)))] (7:0:2 - 1)
		IfNotBlocked
		reached[1][2] = 1;
		if (!((((P1 *)_this)->i<=(4-1))))
			continue;
		/* merge: connectedClients[i] = 1(7, 3, 7) */
		reached[1][3] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P1 *)_this)->connectedClients[ Index(((P1 *)_this)->i, 4) ]);
		((P1 *)_this)->connectedClients[ Index(((P1 *)_this)->i, 4) ] = 1;
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
	case 18: // STATE 10 - problem2.pml:145 - [currStatus = 8] (0:280:3 - 3)
		IfNotBlocked
		reached[1][10] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->currStatus;
		((P1 *)_this)->currStatus = 8;
#ifdef VAR_RANGES
		logval("CommsManager:currStatus", ((P1 *)_this)->currStatus);
#endif
		;
		/* merge: reportStatus = 0(280, 11, 280) */
		reached[1][11] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)_this)->reportStatus;
		((P1 *)_this)->reportStatus = 0;
#ifdef VAR_RANGES
		logval("CommsManager:reportStatus", ((P1 *)_this)->reportStatus);
#endif
		;
		/* merge: button = 0(280, 12, 280) */
		reached[1][12] = 1;
		(trpt+1)->bup.ovals[2] = ((P1 *)_this)->button;
		((P1 *)_this)->button = 0;
#ifdef VAR_RANGES
		logval("CommsManager:button", ((P1 *)_this)->button);
#endif
		;
		/* merge: .(goto)(0, 281, 280) */
		reached[1][281] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 19: // STATE 13 - problem2.pml:149 - [((nempty(cmConnectRequest)&&(currStatus==8)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][13] = 1;
		if (!(((q_len(now.cmConnectRequest)>0)&&(((P1 *)_this)->currStatus==8))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 20: // STATE 14 - problem2.pml:150 - [cmConnectRequest?id] (0:0:1 - 1)
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
	case 21: // STATE 15 - problem2.pml:151 - [printf('CommsManager: connection request received from client %d\\n',(id+1))] (0:25:1 - 1)
		IfNotBlocked
		reached[1][15] = 1;
		Printf("CommsManager: connection request received from client %d\n", (((P1 *)_this)->id+1));
		/* merge: reply = 0(25, 16, 25) */
		reached[1][16] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->reply;
		((P1 *)_this)->reply = 0;
#ifdef VAR_RANGES
		logval("CommsManager:reply", ((P1 *)_this)->reply);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 22: // STATE 17 - problem2.pml:154 - [((currStatus==8))] (20:0:3 - 1)
		IfNotBlocked
		reached[1][17] = 1;
		if (!((((P1 *)_this)->currStatus==8)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: currStatus */  (trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->currStatus;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->currStatus = 0;
		/* merge: reply = 2(20, 18, 20) */
		reached[1][18] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)_this)->reply;
		((P1 *)_this)->reply = 2;
#ifdef VAR_RANGES
		logval("CommsManager:reply", ((P1 *)_this)->reply);
#endif
		;
		/* merge: currStatus = 7(20, 19, 20) */
		reached[1][19] = 1;
		(trpt+1)->bup.ovals[2] = ((P1 *)_this)->currStatus;
		((P1 *)_this)->currStatus = 7;
#ifdef VAR_RANGES
		logval("CommsManager:currStatus", ((P1 *)_this)->currStatus);
#endif
		;
		_m = 3; goto P999; /* 2 */
	case 23: // STATE 20 - problem2.pml:155 - [cmStatus[id]!7] (0:0:0 - 1)
		IfNotBlocked
		reached[1][20] = 1;
		if (q_full(now.cmStatus[ Index(((P1 *)_this)->id, 4) ]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.cmStatus[ Index(((P1 *)_this)->id, 4) ]);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.cmStatus[ Index(((P1 *)_this)->id, 4) ], 0, 7, 0, 1);
		_m = 2; goto P999; /* 0 */
	case 24: // STATE 21 - problem2.pml:156 - [connectedClients[id] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][21] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)_this)->connectedClients[ Index(((P1 *)_this)->id, 4) ]);
		((P1 *)_this)->connectedClients[ Index(((P1 *)_this)->id, 4) ] = 1;
#ifdef VAR_RANGES
		logval("CommsManager:connectedClients[CommsManager:id]", ((int)((P1 *)_this)->connectedClients[ Index(((P1 *)_this)->id, 4) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 25: // STATE 22 - problem2.pml:156 - [cmAbleWcp!1] (0:0:0 - 1)
		IfNotBlocked
		reached[1][22] = 1;
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
	case 26: // STATE 24 - problem2.pml:157 - [reply = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][24] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->reply;
		((P1 *)_this)->reply = 1;
#ifdef VAR_RANGES
		logval("CommsManager:reply", ((P1 *)_this)->reply);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 27: // STATE 27 - problem2.pml:159 - [cmConnectReply[id]!reply] (0:0:0 - 3)
		IfNotBlocked
		reached[1][27] = 1;
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
	case 28: // STATE 28 - problem2.pml:160 - [((currStatus==7))] (30:0:1 - 1)
		IfNotBlocked
		reached[1][28] = 1;
		if (!((((P1 *)_this)->currStatus==7)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: currStatus */  (trpt+1)->bup.oval = ((P1 *)_this)->currStatus;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->currStatus = 0;
		/* merge: printf('CommsManager: pre-initializing\\n')(0, 29, 30) */
		reached[1][29] = 1;
		Printf("CommsManager: pre-initializing\n");
		_m = 3; goto P999; /* 1 */
	case 29: // STATE 30 - problem2.pml:162 - [cmCommand[id]!4] (0:0:0 - 1)
		IfNotBlocked
		reached[1][30] = 1;
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
	case 30: // STATE 31 - problem2.pml:163 - [currStatus = 6] (0:0:1 - 1)
		IfNotBlocked
		reached[1][31] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->currStatus;
		((P1 *)_this)->currStatus = 6;
#ifdef VAR_RANGES
		logval("CommsManager:currStatus", ((P1 *)_this)->currStatus);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 31: // STATE 32 - problem2.pml:163 - [cmStatus[id]!6] (0:0:0 - 1)
		IfNotBlocked
		reached[1][32] = 1;
		if (q_full(now.cmStatus[ Index(((P1 *)_this)->id, 4) ]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.cmStatus[ Index(((P1 *)_this)->id, 4) ]);
		sprintf(simtmp, "%d", 6); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.cmStatus[ Index(((P1 *)_this)->id, 4) ], 0, 6, 0, 1);
		_m = 2; goto P999; /* 0 */
	case 32: // STATE 33 - problem2.pml:164 - [((currStatus==6))] (35:0:1 - 1)
		IfNotBlocked
		reached[1][33] = 1;
		if (!((((P1 *)_this)->currStatus==6)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: currStatus */  (trpt+1)->bup.oval = ((P1 *)_this)->currStatus;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->currStatus = 0;
		/* merge: printf('CommsManager: initializing\\n')(0, 34, 35) */
		reached[1][34] = 1;
		Printf("CommsManager: initializing\n");
		_m = 3; goto P999; /* 1 */
	case 33: // STATE 35 - problem2.pml:166 - [clientReport?reportStatus,id] (0:0:2 - 1)
		reached[1][35] = 1;
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
	case 34: // STATE 36 - problem2.pml:168 - [((reportStatus==2))] (0:0:1 - 1)
		IfNotBlocked
		reached[1][36] = 1;
		if (!((((P1 *)_this)->reportStatus==2)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: reportStatus */  (trpt+1)->bup.oval = ((P1 *)_this)->reportStatus;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->reportStatus = 0;
		_m = 3; goto P999; /* 0 */
	case 35: // STATE 37 - problem2.pml:168 - [cmCommand[id]!3] (0:0:0 - 1)
		IfNotBlocked
		reached[1][37] = 1;
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
	case 36: // STATE 38 - problem2.pml:169 - [currStatus = 5] (0:0:1 - 1)
		IfNotBlocked
		reached[1][38] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->currStatus;
		((P1 *)_this)->currStatus = 5;
#ifdef VAR_RANGES
		logval("CommsManager:currStatus", ((P1 *)_this)->currStatus);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 37: // STATE 39 - problem2.pml:169 - [cmStatus[id]!5] (0:0:0 - 1)
		IfNotBlocked
		reached[1][39] = 1;
		if (q_full(now.cmStatus[ Index(((P1 *)_this)->id, 4) ]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.cmStatus[ Index(((P1 *)_this)->id, 4) ]);
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.cmStatus[ Index(((P1 *)_this)->id, 4) ], 0, 5, 0, 1);
		_m = 2; goto P999; /* 0 */
	case 38: // STATE 40 - problem2.pml:170 - [((reportStatus==1))] (43:0:3 - 1)
		IfNotBlocked
		reached[1][40] = 1;
		if (!((((P1 *)_this)->reportStatus==1)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: reportStatus */  (trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->reportStatus;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->reportStatus = 0;
		/* merge: connectedClients[id] = 0(43, 41, 43) */
		reached[1][41] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P1 *)_this)->connectedClients[ Index(((P1 *)_this)->id, 4) ]);
		((P1 *)_this)->connectedClients[ Index(((P1 *)_this)->id, 4) ] = 0;
#ifdef VAR_RANGES
		logval("CommsManager:connectedClients[CommsManager:id]", ((int)((P1 *)_this)->connectedClients[ Index(((P1 *)_this)->id, 4) ]));
#endif
		;
		/* merge: currStatus = 8(43, 42, 43) */
		reached[1][42] = 1;
		(trpt+1)->bup.ovals[2] = ((P1 *)_this)->currStatus;
		((P1 *)_this)->currStatus = 8;
#ifdef VAR_RANGES
		logval("CommsManager:currStatus", ((P1 *)_this)->currStatus);
#endif
		;
		_m = 3; goto P999; /* 2 */
	case 39: // STATE 43 - problem2.pml:171 - [cmStatus[id]!8] (0:0:0 - 1)
		IfNotBlocked
		reached[1][43] = 1;
		if (q_full(now.cmStatus[ Index(((P1 *)_this)->id, 4) ]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.cmStatus[ Index(((P1 *)_this)->id, 4) ]);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.cmStatus[ Index(((P1 *)_this)->id, 4) ], 0, 8, 0, 1);
		_m = 2; goto P999; /* 0 */
	case 40: // STATE 46 - problem2.pml:173 - [((currStatus==5))] (48:0:1 - 1)
		IfNotBlocked
		reached[1][46] = 1;
		if (!((((P1 *)_this)->currStatus==5)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: currStatus */  (trpt+1)->bup.oval = ((P1 *)_this)->currStatus;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->currStatus = 0;
		/* merge: printf('CommsManager: post-initializing\\n')(0, 47, 48) */
		reached[1][47] = 1;
		Printf("CommsManager: post-initializing\n");
		_m = 3; goto P999; /* 1 */
	case 41: // STATE 48 - problem2.pml:175 - [clientReport?reportStatus,id] (0:0:2 - 1)
		reached[1][48] = 1;
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
	case 42: // STATE 49 - problem2.pml:177 - [((reportStatus==2))] (51:0:2 - 1)
		IfNotBlocked
		reached[1][49] = 1;
		if (!((((P1 *)_this)->reportStatus==2)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: reportStatus */  (trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->reportStatus;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->reportStatus = 0;
		/* merge: currStatus = 8(0, 50, 51) */
		reached[1][50] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)_this)->currStatus;
		((P1 *)_this)->currStatus = 8;
#ifdef VAR_RANGES
		logval("CommsManager:currStatus", ((P1 *)_this)->currStatus);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 43: // STATE 51 - problem2.pml:177 - [cmStatus[id]!8] (0:0:0 - 1)
		IfNotBlocked
		reached[1][51] = 1;
		if (q_full(now.cmStatus[ Index(((P1 *)_this)->id, 4) ]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.cmStatus[ Index(((P1 *)_this)->id, 4) ]);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.cmStatus[ Index(((P1 *)_this)->id, 4) ], 0, 8, 0, 1);
		_m = 2; goto P999; /* 0 */
	case 44: // STATE 52 - problem2.pml:178 - [cmAbleWcp!2] (0:0:0 - 1)
		IfNotBlocked
		reached[1][52] = 1;
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
	case 45: // STATE 53 - problem2.pml:179 - [((reportStatus==1))] (56:0:3 - 1)
		IfNotBlocked
		reached[1][53] = 1;
		if (!((((P1 *)_this)->reportStatus==1)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: reportStatus */  (trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->reportStatus;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->reportStatus = 0;
		/* merge: connectedClients[id] = 0(56, 54, 56) */
		reached[1][54] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P1 *)_this)->connectedClients[ Index(((P1 *)_this)->id, 4) ]);
		((P1 *)_this)->connectedClients[ Index(((P1 *)_this)->id, 4) ] = 0;
#ifdef VAR_RANGES
		logval("CommsManager:connectedClients[CommsManager:id]", ((int)((P1 *)_this)->connectedClients[ Index(((P1 *)_this)->id, 4) ]));
#endif
		;
		/* merge: currStatus = 8(56, 55, 56) */
		reached[1][55] = 1;
		(trpt+1)->bup.ovals[2] = ((P1 *)_this)->currStatus;
		((P1 *)_this)->currStatus = 8;
#ifdef VAR_RANGES
		logval("CommsManager:currStatus", ((P1 *)_this)->currStatus);
#endif
		;
		_m = 3; goto P999; /* 2 */
	case 46: // STATE 56 - problem2.pml:180 - [cmStatus[id]!8] (0:0:0 - 1)
		IfNotBlocked
		reached[1][56] = 1;
		if (q_full(now.cmStatus[ Index(((P1 *)_this)->id, 4) ]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.cmStatus[ Index(((P1 *)_this)->id, 4) ]);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.cmStatus[ Index(((P1 *)_this)->id, 4) ], 0, 8, 0, 1);
		_m = 2; goto P999; /* 0 */
	case 47: // STATE 57 - problem2.pml:181 - [cmAbleWcp!2] (0:0:0 - 1)
		IfNotBlocked
		reached[1][57] = 1;
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
	case 48: // STATE 60 - problem2.pml:184 - [((nempty(wcpRequestCm)&&(currStatus==8)))] (0:0:1 - 1)
		IfNotBlocked
		reached[1][60] = 1;
		if (!(((q_len(now.wcpRequestCm)>0)&&(((P1 *)_this)->currStatus==8))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: currStatus */  (trpt+1)->bup.oval = ((P1 *)_this)->currStatus;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->currStatus = 0;
		_m = 3; goto P999; /* 0 */
	case 49: // STATE 61 - problem2.pml:185 - [wcpRequestCm?button] (0:0:1 - 1)
		reached[1][61] = 1;
		if (q_len(now.wcpRequestCm) == 0) continue;

		XX=1;
		(trpt+1)->bup.oval = ((P1 *)_this)->button;
		;
		((P1 *)_this)->button = qrecv(now.wcpRequestCm, XX-1, 0, 1);
#ifdef VAR_RANGES
		logval("CommsManager:button", ((P1 *)_this)->button);
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.wcpRequestCm);
		sprintf(simtmp, "%d", ((P1 *)_this)->button); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 50: // STATE 62 - problem2.pml:186 - [printf('CommsManager: manual update request received\\n')] (0:75:1 - 1)
		IfNotBlocked
		reached[1][62] = 1;
		Printf("CommsManager: manual update request received\n");
		/* merge: i = 0(75, 63, 75) */
		reached[1][63] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->i;
		((P1 *)_this)->i = 0;
#ifdef VAR_RANGES
		logval("CommsManager:i", ((P1 *)_this)->i);
#endif
		;
		/* merge: .(goto)(0, 76, 75) */
		reached[1][76] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 51: // STATE 64 - problem2.pml:187 - [((i<=(4-1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][64] = 1;
		if (!((((P1 *)_this)->i<=(4-1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 52: // STATE 65 - problem2.pml:189 - [(connectedClients[i])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][65] = 1;
		if (!(((int)((P1 *)_this)->connectedClients[ Index(((P1 *)_this)->i, 4) ])))
			continue;
		_m = 3; goto P999; /* 0 */
	case 53: // STATE 66 - problem2.pml:189 - [wcpRequestClient[i]!button] (0:0:0 - 1)
		IfNotBlocked
		reached[1][66] = 1;
		if (q_full(now.wcpRequestClient[ Index(((P1 *)_this)->i, 4) ]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.wcpRequestClient[ Index(((P1 *)_this)->i, 4) ]);
		sprintf(simtmp, "%d", ((P1 *)_this)->button); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.wcpRequestClient[ Index(((P1 *)_this)->i, 4) ], 0, ((P1 *)_this)->button, 0, 1);
		_m = 2; goto P999; /* 0 */
	case 54: // STATE 67 - problem2.pml:189 - [cmStatus[i]!4] (0:0:0 - 1)
		IfNotBlocked
		reached[1][67] = 1;
		if (q_full(now.cmStatus[ Index(((P1 *)_this)->i, 4) ]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.cmStatus[ Index(((P1 *)_this)->i, 4) ]);
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.cmStatus[ Index(((P1 *)_this)->i, 4) ], 0, 4, 0, 1);
		_m = 2; goto P999; /* 0 */
	case 55: // STATE 69 - problem2.pml:190 - [(1)] (75:0:1 - 1)
		IfNotBlocked
		reached[1][69] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(75, 71, 75) */
		reached[1][71] = 1;
		;
		/* merge: i = (i+1)(75, 72, 75) */
		reached[1][72] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->i;
		((P1 *)_this)->i = (((P1 *)_this)->i+1);
#ifdef VAR_RANGES
		logval("CommsManager:i", ((P1 *)_this)->i);
#endif
		;
		/* merge: .(goto)(0, 76, 75) */
		reached[1][76] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 56: // STATE 72 - problem2.pml:187 - [i = (i+1)] (0:75:1 - 3)
		IfNotBlocked
		reached[1][72] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->i;
		((P1 *)_this)->i = (((P1 *)_this)->i+1);
#ifdef VAR_RANGES
		logval("CommsManager:i", ((P1 *)_this)->i);
#endif
		;
		/* merge: .(goto)(0, 76, 75) */
		reached[1][76] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 57: // STATE 78 - problem2.pml:193 - [currStatus = 4] (0:79:1 - 3)
		IfNotBlocked
		reached[1][78] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->currStatus;
		((P1 *)_this)->currStatus = 4;
#ifdef VAR_RANGES
		logval("CommsManager:currStatus", ((P1 *)_this)->currStatus);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 58: // STATE 79 - problem2.pml:194 - [cmAbleWcp!1] (0:0:0 - 1)
		IfNotBlocked
		reached[1][79] = 1;
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
	case 59: // STATE 80 - problem2.pml:195 - [((currStatus==4))] (94:0:2 - 1)
		IfNotBlocked
		reached[1][80] = 1;
		if (!((((P1 *)_this)->currStatus==4)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: currStatus */  (trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->currStatus;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->currStatus = 0;
		/* merge: printf('CommsManager: pre-updating\\n')(94, 81, 94) */
		reached[1][81] = 1;
		Printf("CommsManager: pre-updating\n");
		/* merge: i = 0(94, 82, 94) */
		reached[1][82] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)_this)->i;
		((P1 *)_this)->i = 0;
#ifdef VAR_RANGES
		logval("CommsManager:i", ((P1 *)_this)->i);
#endif
		;
		/* merge: .(goto)(0, 95, 94) */
		reached[1][95] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 60: // STATE 83 - problem2.pml:197 - [((i<=(4-1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][83] = 1;
		if (!((((P1 *)_this)->i<=(4-1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 61: // STATE 84 - problem2.pml:199 - [(connectedClients[i])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][84] = 1;
		if (!(((int)((P1 *)_this)->connectedClients[ Index(((P1 *)_this)->i, 4) ])))
			continue;
		_m = 3; goto P999; /* 0 */
	case 62: // STATE 85 - problem2.pml:199 - [cmCommand[i]!4] (0:0:0 - 1)
		IfNotBlocked
		reached[1][85] = 1;
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
	case 63: // STATE 86 - problem2.pml:199 - [cmStatus[i]!3] (0:0:0 - 1)
		IfNotBlocked
		reached[1][86] = 1;
		if (q_full(now.cmStatus[ Index(((P1 *)_this)->i, 4) ]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.cmStatus[ Index(((P1 *)_this)->i, 4) ]);
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.cmStatus[ Index(((P1 *)_this)->i, 4) ], 0, 3, 0, 1);
		_m = 2; goto P999; /* 0 */
	case 64: // STATE 88 - problem2.pml:200 - [(1)] (94:0:1 - 1)
		IfNotBlocked
		reached[1][88] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(94, 90, 94) */
		reached[1][90] = 1;
		;
		/* merge: i = (i+1)(94, 91, 94) */
		reached[1][91] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->i;
		((P1 *)_this)->i = (((P1 *)_this)->i+1);
#ifdef VAR_RANGES
		logval("CommsManager:i", ((P1 *)_this)->i);
#endif
		;
		/* merge: .(goto)(0, 95, 94) */
		reached[1][95] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 65: // STATE 91 - problem2.pml:197 - [i = (i+1)] (0:94:1 - 3)
		IfNotBlocked
		reached[1][91] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->i;
		((P1 *)_this)->i = (((P1 *)_this)->i+1);
#ifdef VAR_RANGES
		logval("CommsManager:i", ((P1 *)_this)->i);
#endif
		;
		/* merge: .(goto)(0, 95, 94) */
		reached[1][95] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 66: // STATE 97 - problem2.pml:203 - [currStatus = 3] (0:280:1 - 3)
		IfNotBlocked
		reached[1][97] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->currStatus;
		((P1 *)_this)->currStatus = 3;
#ifdef VAR_RANGES
		logval("CommsManager:currStatus", ((P1 *)_this)->currStatus);
#endif
		;
		/* merge: .(goto)(0, 281, 280) */
		reached[1][281] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 67: // STATE 98 - problem2.pml:204 - [((currStatus==3))] (119:0:3 - 1)
		IfNotBlocked
		reached[1][98] = 1;
		if (!((((P1 *)_this)->currStatus==3)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: currStatus */  (trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->currStatus;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->currStatus = 0;
		/* merge: printf('CommsManager: updating\\n')(119, 99, 119) */
		reached[1][99] = 1;
		Printf("CommsManager: updating\n");
		/* merge: hasFail = 0(119, 100, 119) */
		reached[1][100] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P1 *)_this)->hasFail);
		((P1 *)_this)->hasFail = 0;
#ifdef VAR_RANGES
		logval("CommsManager:hasFail", ((int)((P1 *)_this)->hasFail));
#endif
		;
		/* merge: i = 0(119, 101, 119) */
		reached[1][101] = 1;
		(trpt+1)->bup.ovals[2] = ((P1 *)_this)->i;
		((P1 *)_this)->i = 0;
#ifdef VAR_RANGES
		logval("CommsManager:i", ((P1 *)_this)->i);
#endif
		;
		/* merge: .(goto)(0, 120, 119) */
		reached[1][120] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 68: // STATE 102 - problem2.pml:207 - [((i<=(4-1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][102] = 1;
		if (!((((P1 *)_this)->i<=(4-1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 69: // STATE 103 - problem2.pml:209 - [(connectedClients[i])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][103] = 1;
		if (!(((int)((P1 *)_this)->connectedClients[ Index(((P1 *)_this)->i, 4) ])))
			continue;
		_m = 3; goto P999; /* 0 */
	case 70: // STATE 104 - problem2.pml:209 - [clientReport?reportStatus,id] (0:0:2 - 1)
		reached[1][104] = 1;
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
	case 71: // STATE 105 - problem2.pml:211 - [((reportStatus==1))] (119:0:3 - 1)
		IfNotBlocked
		reached[1][105] = 1;
		if (!((((P1 *)_this)->reportStatus==1)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: reportStatus */  (trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->reportStatus;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->reportStatus = 0;
		/* merge: hasFail = 1(119, 106, 119) */
		reached[1][106] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P1 *)_this)->hasFail);
		((P1 *)_this)->hasFail = 1;
#ifdef VAR_RANGES
		logval("CommsManager:hasFail", ((int)((P1 *)_this)->hasFail));
#endif
		;
		/* merge: printf('CommsManager: update failed by Client %d\\n',(i+1))(119, 107, 119) */
		reached[1][107] = 1;
		Printf("CommsManager: update failed by Client %d\n", (((P1 *)_this)->i+1));
		/* merge: .(goto)(119, 111, 119) */
		reached[1][111] = 1;
		;
		/* merge: .(goto)(119, 115, 119) */
		reached[1][115] = 1;
		;
		/* merge: i = (i+1)(119, 116, 119) */
		reached[1][116] = 1;
		(trpt+1)->bup.ovals[2] = ((P1 *)_this)->i;
		((P1 *)_this)->i = (((P1 *)_this)->i+1);
#ifdef VAR_RANGES
		logval("CommsManager:i", ((P1 *)_this)->i);
#endif
		;
		/* merge: .(goto)(0, 120, 119) */
		reached[1][120] = 1;
		;
		_m = 3; goto P999; /* 6 */
	case 72: // STATE 109 - problem2.pml:213 - [(1)] (119:0:1 - 1)
		IfNotBlocked
		reached[1][109] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(119, 111, 119) */
		reached[1][111] = 1;
		;
		/* merge: .(goto)(119, 115, 119) */
		reached[1][115] = 1;
		;
		/* merge: i = (i+1)(119, 116, 119) */
		reached[1][116] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->i;
		((P1 *)_this)->i = (((P1 *)_this)->i+1);
#ifdef VAR_RANGES
		logval("CommsManager:i", ((P1 *)_this)->i);
#endif
		;
		/* merge: .(goto)(0, 120, 119) */
		reached[1][120] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 73: // STATE 113 - problem2.pml:215 - [(1)] (119:0:1 - 1)
		IfNotBlocked
		reached[1][113] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(119, 115, 119) */
		reached[1][115] = 1;
		;
		/* merge: i = (i+1)(119, 116, 119) */
		reached[1][116] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->i;
		((P1 *)_this)->i = (((P1 *)_this)->i+1);
#ifdef VAR_RANGES
		logval("CommsManager:i", ((P1 *)_this)->i);
#endif
		;
		/* merge: .(goto)(0, 120, 119) */
		reached[1][120] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 74: // STATE 116 - problem2.pml:207 - [i = (i+1)] (0:119:1 - 5)
		IfNotBlocked
		reached[1][116] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->i;
		((P1 *)_this)->i = (((P1 *)_this)->i+1);
#ifdef VAR_RANGES
		logval("CommsManager:i", ((P1 *)_this)->i);
#endif
		;
		/* merge: .(goto)(0, 120, 119) */
		reached[1][120] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 75: // STATE 122 - problem2.pml:219 - [(hasFail)] (135:0:2 - 1)
		IfNotBlocked
		reached[1][122] = 1;
		if (!(((int)((P1 *)_this)->hasFail)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: hasFail */  (trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->hasFail;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->hasFail = 0;
		/* merge: i = 0(0, 123, 135) */
		reached[1][123] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)_this)->i;
		((P1 *)_this)->i = 0;
#ifdef VAR_RANGES
		logval("CommsManager:i", ((P1 *)_this)->i);
#endif
		;
		/* merge: .(goto)(0, 136, 135) */
		reached[1][136] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 76: // STATE 124 - problem2.pml:220 - [((i<=(4-1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][124] = 1;
		if (!((((P1 *)_this)->i<=(4-1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 77: // STATE 125 - problem2.pml:222 - [(connectedClients[i])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][125] = 1;
		if (!(((int)((P1 *)_this)->connectedClients[ Index(((P1 *)_this)->i, 4) ])))
			continue;
		_m = 3; goto P999; /* 0 */
	case 78: // STATE 126 - problem2.pml:222 - [cmCommand[i]!2] (0:0:0 - 1)
		IfNotBlocked
		reached[1][126] = 1;
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
	case 79: // STATE 127 - problem2.pml:222 - [cmStatus[i]!1] (0:0:0 - 1)
		IfNotBlocked
		reached[1][127] = 1;
		if (q_full(now.cmStatus[ Index(((P1 *)_this)->i, 4) ]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.cmStatus[ Index(((P1 *)_this)->i, 4) ]);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.cmStatus[ Index(((P1 *)_this)->i, 4) ], 0, 1, 0, 1);
		_m = 2; goto P999; /* 0 */
	case 80: // STATE 129 - problem2.pml:223 - [(1)] (135:0:1 - 1)
		IfNotBlocked
		reached[1][129] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(135, 131, 135) */
		reached[1][131] = 1;
		;
		/* merge: i = (i+1)(135, 132, 135) */
		reached[1][132] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->i;
		((P1 *)_this)->i = (((P1 *)_this)->i+1);
#ifdef VAR_RANGES
		logval("CommsManager:i", ((P1 *)_this)->i);
#endif
		;
		/* merge: .(goto)(0, 136, 135) */
		reached[1][136] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 81: // STATE 132 - problem2.pml:220 - [i = (i+1)] (0:135:1 - 3)
		IfNotBlocked
		reached[1][132] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->i;
		((P1 *)_this)->i = (((P1 *)_this)->i+1);
#ifdef VAR_RANGES
		logval("CommsManager:i", ((P1 *)_this)->i);
#endif
		;
		/* merge: .(goto)(0, 136, 135) */
		reached[1][136] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 82: // STATE 138 - problem2.pml:226 - [currStatus = 1] (0:280:1 - 3)
		IfNotBlocked
		reached[1][138] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->currStatus;
		((P1 *)_this)->currStatus = 1;
#ifdef VAR_RANGES
		logval("CommsManager:currStatus", ((P1 *)_this)->currStatus);
#endif
		;
		/* merge: .(goto)(0, 157, 280) */
		reached[1][157] = 1;
		;
		/* merge: .(goto)(0, 281, 280) */
		reached[1][281] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 83: // STATE 140 - problem2.pml:228 - [i = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][140] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->i;
		((P1 *)_this)->i = 0;
#ifdef VAR_RANGES
		logval("CommsManager:i", ((P1 *)_this)->i);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 84: // STATE 141 - problem2.pml:228 - [((i<=(4-1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][141] = 1;
		if (!((((P1 *)_this)->i<=(4-1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 85: // STATE 142 - problem2.pml:230 - [(connectedClients[i])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][142] = 1;
		if (!(((int)((P1 *)_this)->connectedClients[ Index(((P1 *)_this)->i, 4) ])))
			continue;
		_m = 3; goto P999; /* 0 */
	case 86: // STATE 143 - problem2.pml:230 - [cmCommand[i]!3] (0:0:0 - 1)
		IfNotBlocked
		reached[1][143] = 1;
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
	case 87: // STATE 144 - problem2.pml:230 - [cmStatus[i]!2] (0:0:0 - 1)
		IfNotBlocked
		reached[1][144] = 1;
		if (q_full(now.cmStatus[ Index(((P1 *)_this)->i, 4) ]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.cmStatus[ Index(((P1 *)_this)->i, 4) ]);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.cmStatus[ Index(((P1 *)_this)->i, 4) ], 0, 2, 0, 1);
		_m = 2; goto P999; /* 0 */
	case 88: // STATE 146 - problem2.pml:231 - [(1)] (152:0:1 - 1)
		IfNotBlocked
		reached[1][146] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(152, 148, 152) */
		reached[1][148] = 1;
		;
		/* merge: i = (i+1)(152, 149, 152) */
		reached[1][149] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->i;
		((P1 *)_this)->i = (((P1 *)_this)->i+1);
#ifdef VAR_RANGES
		logval("CommsManager:i", ((P1 *)_this)->i);
#endif
		;
		/* merge: .(goto)(0, 153, 152) */
		reached[1][153] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 89: // STATE 149 - problem2.pml:228 - [i = (i+1)] (0:152:1 - 3)
		IfNotBlocked
		reached[1][149] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->i;
		((P1 *)_this)->i = (((P1 *)_this)->i+1);
#ifdef VAR_RANGES
		logval("CommsManager:i", ((P1 *)_this)->i);
#endif
		;
		/* merge: .(goto)(0, 153, 152) */
		reached[1][153] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 90: // STATE 155 - problem2.pml:234 - [currStatus = 2] (0:280:1 - 3)
		IfNotBlocked
		reached[1][155] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->currStatus;
		((P1 *)_this)->currStatus = 2;
#ifdef VAR_RANGES
		logval("CommsManager:currStatus", ((P1 *)_this)->currStatus);
#endif
		;
		/* merge: .(goto)(0, 157, 280) */
		reached[1][157] = 1;
		;
		/* merge: .(goto)(0, 281, 280) */
		reached[1][281] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 91: // STATE 158 - problem2.pml:236 - [((currStatus==2))] (179:0:3 - 1)
		IfNotBlocked
		reached[1][158] = 1;
		if (!((((P1 *)_this)->currStatus==2)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: currStatus */  (trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->currStatus;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->currStatus = 0;
		/* merge: printf('CommsManager: post-updating\\n')(179, 159, 179) */
		reached[1][159] = 1;
		Printf("CommsManager: post-updating\n");
		/* merge: hasFail = 0(179, 160, 179) */
		reached[1][160] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P1 *)_this)->hasFail);
		((P1 *)_this)->hasFail = 0;
#ifdef VAR_RANGES
		logval("CommsManager:hasFail", ((int)((P1 *)_this)->hasFail));
#endif
		;
		/* merge: i = 0(179, 161, 179) */
		reached[1][161] = 1;
		(trpt+1)->bup.ovals[2] = ((P1 *)_this)->i;
		((P1 *)_this)->i = 0;
#ifdef VAR_RANGES
		logval("CommsManager:i", ((P1 *)_this)->i);
#endif
		;
		/* merge: .(goto)(0, 180, 179) */
		reached[1][180] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 92: // STATE 162 - problem2.pml:239 - [((i<=(4-1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][162] = 1;
		if (!((((P1 *)_this)->i<=(4-1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 93: // STATE 163 - problem2.pml:241 - [(connectedClients[i])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][163] = 1;
		if (!(((int)((P1 *)_this)->connectedClients[ Index(((P1 *)_this)->i, 4) ])))
			continue;
		_m = 3; goto P999; /* 0 */
	case 94: // STATE 164 - problem2.pml:241 - [clientReport?reportStatus,id] (0:0:2 - 1)
		reached[1][164] = 1;
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
	case 95: // STATE 165 - problem2.pml:243 - [((reportStatus==1))] (179:0:3 - 1)
		IfNotBlocked
		reached[1][165] = 1;
		if (!((((P1 *)_this)->reportStatus==1)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: reportStatus */  (trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->reportStatus;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->reportStatus = 0;
		/* merge: hasFail = 1(179, 166, 179) */
		reached[1][166] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P1 *)_this)->hasFail);
		((P1 *)_this)->hasFail = 1;
#ifdef VAR_RANGES
		logval("CommsManager:hasFail", ((int)((P1 *)_this)->hasFail));
#endif
		;
		/* merge: printf('CommsManager: post-update failed by Client %d\\n',(i+1))(179, 167, 179) */
		reached[1][167] = 1;
		Printf("CommsManager: post-update failed by Client %d\n", (((P1 *)_this)->i+1));
		/* merge: .(goto)(179, 171, 179) */
		reached[1][171] = 1;
		;
		/* merge: .(goto)(179, 175, 179) */
		reached[1][175] = 1;
		;
		/* merge: i = (i+1)(179, 176, 179) */
		reached[1][176] = 1;
		(trpt+1)->bup.ovals[2] = ((P1 *)_this)->i;
		((P1 *)_this)->i = (((P1 *)_this)->i+1);
#ifdef VAR_RANGES
		logval("CommsManager:i", ((P1 *)_this)->i);
#endif
		;
		/* merge: .(goto)(0, 180, 179) */
		reached[1][180] = 1;
		;
		_m = 3; goto P999; /* 6 */
	case 96: // STATE 169 - problem2.pml:245 - [(1)] (179:0:1 - 1)
		IfNotBlocked
		reached[1][169] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(179, 171, 179) */
		reached[1][171] = 1;
		;
		/* merge: .(goto)(179, 175, 179) */
		reached[1][175] = 1;
		;
		/* merge: i = (i+1)(179, 176, 179) */
		reached[1][176] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->i;
		((P1 *)_this)->i = (((P1 *)_this)->i+1);
#ifdef VAR_RANGES
		logval("CommsManager:i", ((P1 *)_this)->i);
#endif
		;
		/* merge: .(goto)(0, 180, 179) */
		reached[1][180] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 97: // STATE 173 - problem2.pml:247 - [(1)] (179:0:1 - 1)
		IfNotBlocked
		reached[1][173] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(179, 175, 179) */
		reached[1][175] = 1;
		;
		/* merge: i = (i+1)(179, 176, 179) */
		reached[1][176] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->i;
		((P1 *)_this)->i = (((P1 *)_this)->i+1);
#ifdef VAR_RANGES
		logval("CommsManager:i", ((P1 *)_this)->i);
#endif
		;
		/* merge: .(goto)(0, 180, 179) */
		reached[1][180] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 98: // STATE 176 - problem2.pml:239 - [i = (i+1)] (0:179:1 - 5)
		IfNotBlocked
		reached[1][176] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->i;
		((P1 *)_this)->i = (((P1 *)_this)->i+1);
#ifdef VAR_RANGES
		logval("CommsManager:i", ((P1 *)_this)->i);
#endif
		;
		/* merge: .(goto)(0, 180, 179) */
		reached[1][180] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 99: // STATE 182 - problem2.pml:251 - [(hasFail)] (196:0:3 - 1)
		IfNotBlocked
		reached[1][182] = 1;
		if (!(((int)((P1 *)_this)->hasFail)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: hasFail */  (trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->hasFail;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->hasFail = 0;
		/* merge: currStatus = 8(196, 183, 196) */
		reached[1][183] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)_this)->currStatus;
		((P1 *)_this)->currStatus = 8;
#ifdef VAR_RANGES
		logval("CommsManager:currStatus", ((P1 *)_this)->currStatus);
#endif
		;
		/* merge: i = 0(196, 184, 196) */
		reached[1][184] = 1;
		(trpt+1)->bup.ovals[2] = ((P1 *)_this)->i;
		((P1 *)_this)->i = 0;
#ifdef VAR_RANGES
		logval("CommsManager:i", ((P1 *)_this)->i);
#endif
		;
		/* merge: .(goto)(0, 197, 196) */
		reached[1][197] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 100: // STATE 185 - problem2.pml:252 - [((i<=(4-1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][185] = 1;
		if (!((((P1 *)_this)->i<=(4-1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 101: // STATE 186 - problem2.pml:254 - [(connectedClients[i])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][186] = 1;
		if (!(((int)((P1 *)_this)->connectedClients[ Index(((P1 *)_this)->i, 4) ])))
			continue;
		_m = 3; goto P999; /* 0 */
	case 102: // STATE 187 - problem2.pml:254 - [cmStatus[i]!8] (0:0:0 - 1)
		IfNotBlocked
		reached[1][187] = 1;
		if (q_full(now.cmStatus[ Index(((P1 *)_this)->i, 4) ]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.cmStatus[ Index(((P1 *)_this)->i, 4) ]);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.cmStatus[ Index(((P1 *)_this)->i, 4) ], 0, 8, 0, 1);
		_m = 2; goto P999; /* 0 */
	case 103: // STATE 188 - problem2.pml:254 - [cmCommand[i]!1] (0:0:0 - 1)
		IfNotBlocked
		reached[1][188] = 1;
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
	case 104: // STATE 190 - problem2.pml:255 - [(1)] (196:0:1 - 1)
		IfNotBlocked
		reached[1][190] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(196, 192, 196) */
		reached[1][192] = 1;
		;
		/* merge: i = (i+1)(196, 193, 196) */
		reached[1][193] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->i;
		((P1 *)_this)->i = (((P1 *)_this)->i+1);
#ifdef VAR_RANGES
		logval("CommsManager:i", ((P1 *)_this)->i);
#endif
		;
		/* merge: .(goto)(0, 197, 196) */
		reached[1][197] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 105: // STATE 193 - problem2.pml:252 - [i = (i+1)] (0:196:1 - 3)
		IfNotBlocked
		reached[1][193] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->i;
		((P1 *)_this)->i = (((P1 *)_this)->i+1);
#ifdef VAR_RANGES
		logval("CommsManager:i", ((P1 *)_this)->i);
#endif
		;
		/* merge: .(goto)(0, 197, 196) */
		reached[1][197] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 106: // STATE 199 - problem2.pml:258 - [cmAbleWcp!2] (0:0:0 - 3)
		IfNotBlocked
		reached[1][199] = 1;
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
	case 107: // STATE 201 - problem2.pml:259 - [currStatus = 8] (0:213:2 - 1)
		IfNotBlocked
		reached[1][201] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->currStatus;
		((P1 *)_this)->currStatus = 8;
#ifdef VAR_RANGES
		logval("CommsManager:currStatus", ((P1 *)_this)->currStatus);
#endif
		;
		/* merge: i = 0(213, 202, 213) */
		reached[1][202] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)_this)->i;
		((P1 *)_this)->i = 0;
#ifdef VAR_RANGES
		logval("CommsManager:i", ((P1 *)_this)->i);
#endif
		;
		/* merge: .(goto)(0, 214, 213) */
		reached[1][214] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 108: // STATE 203 - problem2.pml:260 - [((i<=(4-1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][203] = 1;
		if (!((((P1 *)_this)->i<=(4-1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 109: // STATE 204 - problem2.pml:262 - [(connectedClients[i])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][204] = 1;
		if (!(((int)((P1 *)_this)->connectedClients[ Index(((P1 *)_this)->i, 4) ])))
			continue;
		_m = 3; goto P999; /* 0 */
	case 110: // STATE 205 - problem2.pml:262 - [cmStatus[i]!8] (0:0:0 - 1)
		IfNotBlocked
		reached[1][205] = 1;
		if (q_full(now.cmStatus[ Index(((P1 *)_this)->i, 4) ]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.cmStatus[ Index(((P1 *)_this)->i, 4) ]);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.cmStatus[ Index(((P1 *)_this)->i, 4) ], 0, 8, 0, 1);
		_m = 2; goto P999; /* 0 */
	case 111: // STATE 207 - problem2.pml:263 - [(1)] (213:0:1 - 1)
		IfNotBlocked
		reached[1][207] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(213, 209, 213) */
		reached[1][209] = 1;
		;
		/* merge: i = (i+1)(213, 210, 213) */
		reached[1][210] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->i;
		((P1 *)_this)->i = (((P1 *)_this)->i+1);
#ifdef VAR_RANGES
		logval("CommsManager:i", ((P1 *)_this)->i);
#endif
		;
		/* merge: .(goto)(0, 214, 213) */
		reached[1][214] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 112: // STATE 210 - problem2.pml:260 - [i = (i+1)] (0:213:1 - 3)
		IfNotBlocked
		reached[1][210] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->i;
		((P1 *)_this)->i = (((P1 *)_this)->i+1);
#ifdef VAR_RANGES
		logval("CommsManager:i", ((P1 *)_this)->i);
#endif
		;
		/* merge: .(goto)(0, 214, 213) */
		reached[1][214] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 113: // STATE 216 - problem2.pml:266 - [cmAbleWcp!2] (0:0:0 - 3)
		IfNotBlocked
		reached[1][216] = 1;
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
	case 114: // STATE 219 - problem2.pml:268 - [((currStatus==1))] (240:0:3 - 1)
		IfNotBlocked
		reached[1][219] = 1;
		if (!((((P1 *)_this)->currStatus==1)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: currStatus */  (trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->currStatus;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->currStatus = 0;
		/* merge: printf('CommsManager: post-reverting\\n')(240, 220, 240) */
		reached[1][220] = 1;
		Printf("CommsManager: post-reverting\n");
		/* merge: hasFail = 0(240, 221, 240) */
		reached[1][221] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P1 *)_this)->hasFail);
		((P1 *)_this)->hasFail = 0;
#ifdef VAR_RANGES
		logval("CommsManager:hasFail", ((int)((P1 *)_this)->hasFail));
#endif
		;
		/* merge: i = 0(240, 222, 240) */
		reached[1][222] = 1;
		(trpt+1)->bup.ovals[2] = ((P1 *)_this)->i;
		((P1 *)_this)->i = 0;
#ifdef VAR_RANGES
		logval("CommsManager:i", ((P1 *)_this)->i);
#endif
		;
		/* merge: .(goto)(0, 241, 240) */
		reached[1][241] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 115: // STATE 223 - problem2.pml:271 - [((i<=(4-1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][223] = 1;
		if (!((((P1 *)_this)->i<=(4-1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 116: // STATE 224 - problem2.pml:273 - [(connectedClients[i])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][224] = 1;
		if (!(((int)((P1 *)_this)->connectedClients[ Index(((P1 *)_this)->i, 4) ])))
			continue;
		_m = 3; goto P999; /* 0 */
	case 117: // STATE 225 - problem2.pml:273 - [clientReport?reportStatus,id] (0:0:2 - 1)
		reached[1][225] = 1;
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
	case 118: // STATE 226 - problem2.pml:275 - [((reportStatus==1))] (240:0:3 - 1)
		IfNotBlocked
		reached[1][226] = 1;
		if (!((((P1 *)_this)->reportStatus==1)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: reportStatus */  (trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->reportStatus;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->reportStatus = 0;
		/* merge: hasFail = 1(240, 227, 240) */
		reached[1][227] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P1 *)_this)->hasFail);
		((P1 *)_this)->hasFail = 1;
#ifdef VAR_RANGES
		logval("CommsManager:hasFail", ((int)((P1 *)_this)->hasFail));
#endif
		;
		/* merge: printf('CommsManager: post-revert failed by Client %d\\n',(i+1))(240, 228, 240) */
		reached[1][228] = 1;
		Printf("CommsManager: post-revert failed by Client %d\n", (((P1 *)_this)->i+1));
		/* merge: .(goto)(240, 232, 240) */
		reached[1][232] = 1;
		;
		/* merge: .(goto)(240, 236, 240) */
		reached[1][236] = 1;
		;
		/* merge: i = (i+1)(240, 237, 240) */
		reached[1][237] = 1;
		(trpt+1)->bup.ovals[2] = ((P1 *)_this)->i;
		((P1 *)_this)->i = (((P1 *)_this)->i+1);
#ifdef VAR_RANGES
		logval("CommsManager:i", ((P1 *)_this)->i);
#endif
		;
		/* merge: .(goto)(0, 241, 240) */
		reached[1][241] = 1;
		;
		_m = 3; goto P999; /* 6 */
	case 119: // STATE 230 - problem2.pml:277 - [(1)] (240:0:1 - 1)
		IfNotBlocked
		reached[1][230] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(240, 232, 240) */
		reached[1][232] = 1;
		;
		/* merge: .(goto)(240, 236, 240) */
		reached[1][236] = 1;
		;
		/* merge: i = (i+1)(240, 237, 240) */
		reached[1][237] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->i;
		((P1 *)_this)->i = (((P1 *)_this)->i+1);
#ifdef VAR_RANGES
		logval("CommsManager:i", ((P1 *)_this)->i);
#endif
		;
		/* merge: .(goto)(0, 241, 240) */
		reached[1][241] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 120: // STATE 234 - problem2.pml:279 - [(1)] (240:0:1 - 1)
		IfNotBlocked
		reached[1][234] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(240, 236, 240) */
		reached[1][236] = 1;
		;
		/* merge: i = (i+1)(240, 237, 240) */
		reached[1][237] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->i;
		((P1 *)_this)->i = (((P1 *)_this)->i+1);
#ifdef VAR_RANGES
		logval("CommsManager:i", ((P1 *)_this)->i);
#endif
		;
		/* merge: .(goto)(0, 241, 240) */
		reached[1][241] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 121: // STATE 237 - problem2.pml:271 - [i = (i+1)] (0:240:1 - 5)
		IfNotBlocked
		reached[1][237] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->i;
		((P1 *)_this)->i = (((P1 *)_this)->i+1);
#ifdef VAR_RANGES
		logval("CommsManager:i", ((P1 *)_this)->i);
#endif
		;
		/* merge: .(goto)(0, 241, 240) */
		reached[1][241] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 122: // STATE 243 - problem2.pml:283 - [(hasFail)] (257:0:3 - 1)
		IfNotBlocked
		reached[1][243] = 1;
		if (!(((int)((P1 *)_this)->hasFail)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: hasFail */  (trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->hasFail;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->hasFail = 0;
		/* merge: currStatus = 8(257, 244, 257) */
		reached[1][244] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)_this)->currStatus;
		((P1 *)_this)->currStatus = 8;
#ifdef VAR_RANGES
		logval("CommsManager:currStatus", ((P1 *)_this)->currStatus);
#endif
		;
		/* merge: i = 0(257, 245, 257) */
		reached[1][245] = 1;
		(trpt+1)->bup.ovals[2] = ((P1 *)_this)->i;
		((P1 *)_this)->i = 0;
#ifdef VAR_RANGES
		logval("CommsManager:i", ((P1 *)_this)->i);
#endif
		;
		/* merge: .(goto)(0, 258, 257) */
		reached[1][258] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 123: // STATE 246 - problem2.pml:284 - [((i<=(4-1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][246] = 1;
		if (!((((P1 *)_this)->i<=(4-1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 124: // STATE 247 - problem2.pml:286 - [(connectedClients[i])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][247] = 1;
		if (!(((int)((P1 *)_this)->connectedClients[ Index(((P1 *)_this)->i, 4) ])))
			continue;
		_m = 3; goto P999; /* 0 */
	case 125: // STATE 248 - problem2.pml:286 - [cmStatus[i]!8] (0:0:0 - 1)
		IfNotBlocked
		reached[1][248] = 1;
		if (q_full(now.cmStatus[ Index(((P1 *)_this)->i, 4) ]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.cmStatus[ Index(((P1 *)_this)->i, 4) ]);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.cmStatus[ Index(((P1 *)_this)->i, 4) ], 0, 8, 0, 1);
		_m = 2; goto P999; /* 0 */
	case 126: // STATE 249 - problem2.pml:286 - [cmCommand[i]!1] (0:0:0 - 1)
		IfNotBlocked
		reached[1][249] = 1;
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
	case 127: // STATE 251 - problem2.pml:287 - [(1)] (257:0:1 - 1)
		IfNotBlocked
		reached[1][251] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(257, 253, 257) */
		reached[1][253] = 1;
		;
		/* merge: i = (i+1)(257, 254, 257) */
		reached[1][254] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->i;
		((P1 *)_this)->i = (((P1 *)_this)->i+1);
#ifdef VAR_RANGES
		logval("CommsManager:i", ((P1 *)_this)->i);
#endif
		;
		/* merge: .(goto)(0, 258, 257) */
		reached[1][258] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 128: // STATE 254 - problem2.pml:284 - [i = (i+1)] (0:257:1 - 3)
		IfNotBlocked
		reached[1][254] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->i;
		((P1 *)_this)->i = (((P1 *)_this)->i+1);
#ifdef VAR_RANGES
		logval("CommsManager:i", ((P1 *)_this)->i);
#endif
		;
		/* merge: .(goto)(0, 258, 257) */
		reached[1][258] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 129: // STATE 260 - problem2.pml:290 - [cmAbleWcp!2] (0:0:0 - 3)
		IfNotBlocked
		reached[1][260] = 1;
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
	case 130: // STATE 262 - problem2.pml:291 - [currStatus = 8] (0:274:2 - 1)
		IfNotBlocked
		reached[1][262] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->currStatus;
		((P1 *)_this)->currStatus = 8;
#ifdef VAR_RANGES
		logval("CommsManager:currStatus", ((P1 *)_this)->currStatus);
#endif
		;
		/* merge: i = 0(274, 263, 274) */
		reached[1][263] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)_this)->i;
		((P1 *)_this)->i = 0;
#ifdef VAR_RANGES
		logval("CommsManager:i", ((P1 *)_this)->i);
#endif
		;
		/* merge: .(goto)(0, 275, 274) */
		reached[1][275] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 131: // STATE 264 - problem2.pml:292 - [((i<=(4-1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][264] = 1;
		if (!((((P1 *)_this)->i<=(4-1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 132: // STATE 265 - problem2.pml:294 - [(connectedClients[i])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][265] = 1;
		if (!(((int)((P1 *)_this)->connectedClients[ Index(((P1 *)_this)->i, 4) ])))
			continue;
		_m = 3; goto P999; /* 0 */
	case 133: // STATE 266 - problem2.pml:294 - [cmStatus[i]!8] (0:0:0 - 1)
		IfNotBlocked
		reached[1][266] = 1;
		if (q_full(now.cmStatus[ Index(((P1 *)_this)->i, 4) ]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.cmStatus[ Index(((P1 *)_this)->i, 4) ]);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.cmStatus[ Index(((P1 *)_this)->i, 4) ], 0, 8, 0, 1);
		_m = 2; goto P999; /* 0 */
	case 134: // STATE 268 - problem2.pml:295 - [(1)] (274:0:1 - 1)
		IfNotBlocked
		reached[1][268] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(274, 270, 274) */
		reached[1][270] = 1;
		;
		/* merge: i = (i+1)(274, 271, 274) */
		reached[1][271] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->i;
		((P1 *)_this)->i = (((P1 *)_this)->i+1);
#ifdef VAR_RANGES
		logval("CommsManager:i", ((P1 *)_this)->i);
#endif
		;
		/* merge: .(goto)(0, 275, 274) */
		reached[1][275] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 135: // STATE 271 - problem2.pml:292 - [i = (i+1)] (0:274:1 - 3)
		IfNotBlocked
		reached[1][271] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->i;
		((P1 *)_this)->i = (((P1 *)_this)->i+1);
#ifdef VAR_RANGES
		logval("CommsManager:i", ((P1 *)_this)->i);
#endif
		;
		/* merge: .(goto)(0, 275, 274) */
		reached[1][275] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 136: // STATE 277 - problem2.pml:298 - [cmAbleWcp!2] (0:0:0 - 3)
		IfNotBlocked
		reached[1][277] = 1;
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
	case 137: // STATE 283 - problem2.pml:301 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][283] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Client */
	case 138: // STATE 1 - problem2.pml:34 - [((!(connected)&&(currStatus==8)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		if (!(( !(((int)((P0 *)_this)->connected))&&(((P0 *)_this)->currStatus==8))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 139: // STATE 2 - problem2.pml:35 - [cmConnectRequest!id] (0:0:0 - 1)
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
	case 140: // STATE 3 - problem2.pml:36 - [printf('Client %d: requesting connection\\n',(id+1))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][3] = 1;
		Printf("Client %d: requesting connection\n", (((P0 *)_this)->id+1));
		_m = 3; goto P999; /* 0 */
	case 141: // STATE 4 - problem2.pml:37 - [cmConnectReply[id]?reply] (0:0:1 - 1)
		reached[0][4] = 1;
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
	case 142: // STATE 5 - problem2.pml:39 - [((reply==2))] (0:0:1 - 1)
		IfNotBlocked
		reached[0][5] = 1;
		if (!((((P0 *)_this)->reply==2)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: reply */  (trpt+1)->bup.oval = ((P0 *)_this)->reply;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->reply = 0;
		_m = 3; goto P999; /* 0 */
	case 143: // STATE 6 - problem2.pml:39 - [cmStatus[id]?currStatus] (0:0:1 - 1)
		reached[0][6] = 1;
		if (q_len(now.cmStatus[ Index(((P0 *)_this)->id, 4) ]) == 0) continue;

		XX=1;
		(trpt+1)->bup.oval = ((P0 *)_this)->currStatus;
		;
		((P0 *)_this)->currStatus = qrecv(now.cmStatus[ Index(((P0 *)_this)->id, 4) ], XX-1, 0, 1);
#ifdef VAR_RANGES
		logval("Client:currStatus", ((P0 *)_this)->currStatus);
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.cmStatus[ Index(((P0 *)_this)->id, 4) ]);
		sprintf(simtmp, "%d", ((P0 *)_this)->currStatus); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 144: // STATE 7 - problem2.pml:39 - [connected = 1] (0:130:1 - 1)
		IfNotBlocked
		reached[0][7] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)_this)->connected);
		((P0 *)_this)->connected = 1;
#ifdef VAR_RANGES
		logval("Client:connected", ((int)((P0 *)_this)->connected));
#endif
		;
		/* merge: printf('Client %d: connection request accepted\\n',(id+1))(130, 8, 130) */
		reached[0][8] = 1;
		Printf("Client %d: connection request accepted\n", (((P0 *)_this)->id+1));
		/* merge: .(goto)(0, 13, 130) */
		reached[0][13] = 1;
		;
		/* merge: .(goto)(0, 131, 130) */
		reached[0][131] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 145: // STATE 10 - problem2.pml:41 - [(1)] (130:0:0 - 1)
		IfNotBlocked
		reached[0][10] = 1;
		if (!(1))
			continue;
		/* merge: printf('Client %d: connection request rejected\\n',(id+1))(0, 11, 130) */
		reached[0][11] = 1;
		Printf("Client %d: connection request rejected\n", (((P0 *)_this)->id+1));
		/* merge: .(goto)(0, 13, 130) */
		reached[0][13] = 1;
		;
		/* merge: .(goto)(0, 131, 130) */
		reached[0][131] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 146: // STATE 14 - problem2.pml:44 - [((currStatus==7))] (16:0:0 - 1)
		IfNotBlocked
		reached[0][14] = 1;
		if (!((((P0 *)_this)->currStatus==7)))
			continue;
		/* merge: printf('Client %d: pre-initializing\\n',(id+1))(0, 15, 16) */
		reached[0][15] = 1;
		Printf("Client %d: pre-initializing\n", (((P0 *)_this)->id+1));
		_m = 3; goto P999; /* 1 */
	case 147: // STATE 16 - problem2.pml:46 - [cmCommand[id]?currCommand] (0:0:1 - 1)
		reached[0][16] = 1;
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
	case 148: // STATE 17 - problem2.pml:48 - [((currCommand==4))] (0:0:1 - 1)
		IfNotBlocked
		reached[0][17] = 1;
		if (!((((P0 *)_this)->currCommand==4)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: currCommand */  (trpt+1)->bup.oval = ((P0 *)_this)->currCommand;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->currCommand = 0;
		_m = 3; goto P999; /* 0 */
	case 149: // STATE 18 - problem2.pml:48 - [cmStatus[id]?currStatus] (0:0:1 - 1)
		reached[0][18] = 1;
		if (q_len(now.cmStatus[ Index(((P0 *)_this)->id, 4) ]) == 0) continue;

		XX=1;
		(trpt+1)->bup.oval = ((P0 *)_this)->currStatus;
		;
		((P0 *)_this)->currStatus = qrecv(now.cmStatus[ Index(((P0 *)_this)->id, 4) ], XX-1, 0, 1);
#ifdef VAR_RANGES
		logval("Client:currStatus", ((P0 *)_this)->currStatus);
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.cmStatus[ Index(((P0 *)_this)->id, 4) ]);
		sprintf(simtmp, "%d", ((P0 *)_this)->currStatus); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 150: // STATE 19 - problem2.pml:49 - [printf('Client %d: getting new info\\n',(id+1))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][19] = 1;
		Printf("Client %d: getting new info\n", (((P0 *)_this)->id+1));
		_m = 3; goto P999; /* 0 */
	case 151: // STATE 24 - problem2.pml:52 - [((currStatus==6))] (41:0:0 - 1)
		IfNotBlocked
		reached[0][24] = 1;
		if (!((((P0 *)_this)->currStatus==6)))
			continue;
		/* merge: printf('Client %d: initializing\\n',(id+1))(0, 25, 41) */
		reached[0][25] = 1;
		Printf("Client %d: initializing\n", (((P0 *)_this)->id+1));
		_m = 3; goto P999; /* 1 */
	case 152: // STATE 26 - problem2.pml:55 - [(getInfoSuccess)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][26] = 1;
		if (!(((int)((P0 *)_this)->getInfoSuccess)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 153: // STATE 27 - problem2.pml:55 - [clientReport!2,id] (0:0:0 - 1)
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
	case 154: // STATE 28 - problem2.pml:56 - [cmCommand[id]?currCommand] (0:0:1 - 1)
		reached[0][28] = 1;
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
	case 155: // STATE 29 - problem2.pml:58 - [((currCommand==3))] (0:0:1 - 1)
		IfNotBlocked
		reached[0][29] = 1;
		if (!((((P0 *)_this)->currCommand==3)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: currCommand */  (trpt+1)->bup.oval = ((P0 *)_this)->currCommand;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->currCommand = 0;
		_m = 3; goto P999; /* 0 */
	case 156: // STATE 30 - problem2.pml:58 - [cmStatus[id]?currStatus] (0:0:1 - 1)
		reached[0][30] = 1;
		if (q_len(now.cmStatus[ Index(((P0 *)_this)->id, 4) ]) == 0) continue;

		XX=1;
		(trpt+1)->bup.oval = ((P0 *)_this)->currStatus;
		;
		((P0 *)_this)->currStatus = qrecv(now.cmStatus[ Index(((P0 *)_this)->id, 4) ], XX-1, 0, 1);
#ifdef VAR_RANGES
		logval("Client:currStatus", ((P0 *)_this)->currStatus);
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.cmStatus[ Index(((P0 *)_this)->id, 4) ]);
		sprintf(simtmp, "%d", ((P0 *)_this)->currStatus); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 157: // STATE 31 - problem2.pml:59 - [printf('Client %d: using new info\\n',(id+1))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][31] = 1;
		Printf("Client %d: using new info\n", (((P0 *)_this)->id+1));
		_m = 3; goto P999; /* 0 */
	case 158: // STATE 37 - problem2.pml:62 - [clientReport!1,id] (0:0:0 - 1)
		IfNotBlocked
		reached[0][37] = 1;
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
	case 159: // STATE 38 - problem2.pml:63 - [cmStatus[id]?currStatus] (0:0:1 - 1)
		reached[0][38] = 1;
		if (q_len(now.cmStatus[ Index(((P0 *)_this)->id, 4) ]) == 0) continue;

		XX=1;
		(trpt+1)->bup.oval = ((P0 *)_this)->currStatus;
		;
		((P0 *)_this)->currStatus = qrecv(now.cmStatus[ Index(((P0 *)_this)->id, 4) ], XX-1, 0, 1);
#ifdef VAR_RANGES
		logval("Client:currStatus", ((P0 *)_this)->currStatus);
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.cmStatus[ Index(((P0 *)_this)->id, 4) ]);
		sprintf(simtmp, "%d", ((P0 *)_this)->currStatus); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 160: // STATE 39 - problem2.pml:63 - [connected = 0] (0:130:1 - 1)
		IfNotBlocked
		reached[0][39] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)_this)->connected);
		((P0 *)_this)->connected = 0;
#ifdef VAR_RANGES
		logval("Client:connected", ((int)((P0 *)_this)->connected));
#endif
		;
		/* merge: printf('Client %d: initialization failed. disconnected\\n',(id+1))(130, 40, 130) */
		reached[0][40] = 1;
		Printf("Client %d: initialization failed. disconnected\n", (((P0 *)_this)->id+1));
		/* merge: .(goto)(0, 42, 130) */
		reached[0][42] = 1;
		;
		/* merge: .(goto)(0, 131, 130) */
		reached[0][131] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 161: // STATE 43 - problem2.pml:66 - [((currStatus==5))] (53:0:1 - 1)
		IfNotBlocked
		reached[0][43] = 1;
		if (!((((P0 *)_this)->currStatus==5)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: currStatus */  (trpt+1)->bup.oval = ((P0 *)_this)->currStatus;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->currStatus = 0;
		/* merge: printf('Client %d: post-initializing\\n',(id+1))(0, 44, 53) */
		reached[0][44] = 1;
		Printf("Client %d: post-initializing\n", (((P0 *)_this)->id+1));
		_m = 3; goto P999; /* 1 */
	case 162: // STATE 45 - problem2.pml:69 - [(useNewInfoSuccess)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][45] = 1;
		if (!(((int)((P0 *)_this)->useNewInfoSuccess)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 163: // STATE 46 - problem2.pml:69 - [clientReport!2,id] (0:0:0 - 1)
		IfNotBlocked
		reached[0][46] = 1;
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
	case 164: // STATE 47 - problem2.pml:70 - [cmStatus[id]?currStatus] (0:0:1 - 1)
		reached[0][47] = 1;
		if (q_len(now.cmStatus[ Index(((P0 *)_this)->id, 4) ]) == 0) continue;

		XX=1;
		(trpt+1)->bup.oval = ((P0 *)_this)->currStatus;
		;
		((P0 *)_this)->currStatus = qrecv(now.cmStatus[ Index(((P0 *)_this)->id, 4) ], XX-1, 0, 1);
#ifdef VAR_RANGES
		logval("Client:currStatus", ((P0 *)_this)->currStatus);
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.cmStatus[ Index(((P0 *)_this)->id, 4) ]);
		sprintf(simtmp, "%d", ((P0 *)_this)->currStatus); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 165: // STATE 49 - problem2.pml:71 - [clientReport!1,id] (0:0:0 - 1)
		IfNotBlocked
		reached[0][49] = 1;
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
	case 166: // STATE 50 - problem2.pml:72 - [connected = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][50] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)_this)->connected);
		((P0 *)_this)->connected = 0;
#ifdef VAR_RANGES
		logval("Client:connected", ((int)((P0 *)_this)->connected));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 167: // STATE 51 - problem2.pml:72 - [cmStatus[id]?currStatus] (0:0:1 - 1)
		reached[0][51] = 1;
		if (q_len(now.cmStatus[ Index(((P0 *)_this)->id, 4) ]) == 0) continue;

		XX=1;
		(trpt+1)->bup.oval = ((P0 *)_this)->currStatus;
		;
		((P0 *)_this)->currStatus = qrecv(now.cmStatus[ Index(((P0 *)_this)->id, 4) ], XX-1, 0, 1);
#ifdef VAR_RANGES
		logval("Client:currStatus", ((P0 *)_this)->currStatus);
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.cmStatus[ Index(((P0 *)_this)->id, 4) ]);
		sprintf(simtmp, "%d", ((P0 *)_this)->currStatus); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 168: // STATE 52 - problem2.pml:73 - [printf('Client %d: post-initialization failed. disconnected\\n',(id+1))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][52] = 1;
		Printf("Client %d: post-initialization failed. disconnected\n", (((P0 *)_this)->id+1));
		_m = 3; goto P999; /* 0 */
	case 169: // STATE 55 - problem2.pml:76 - [(((nempty(wcpRequestClient[id])&&(currStatus==8))&&connected))] (0:0:1 - 1)
		IfNotBlocked
		reached[0][55] = 1;
		if (!((((q_len(now.wcpRequestClient[ Index(((P0 *)_this)->id, 4) ])>0)&&(((P0 *)_this)->currStatus==8))&&((int)((P0 *)_this)->connected))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: currStatus */  (trpt+1)->bup.oval = ((P0 *)_this)->currStatus;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->currStatus = 0;
		_m = 3; goto P999; /* 0 */
	case 170: // STATE 56 - problem2.pml:77 - [printf('Client %d: manual update request received\\n',(id+1))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][56] = 1;
		Printf("Client %d: manual update request received\n", (((P0 *)_this)->id+1));
		_m = 3; goto P999; /* 0 */
	case 171: // STATE 57 - problem2.pml:78 - [cmStatus[id]?currStatus] (0:0:1 - 1)
		reached[0][57] = 1;
		if (q_len(now.cmStatus[ Index(((P0 *)_this)->id, 4) ]) == 0) continue;

		XX=1;
		(trpt+1)->bup.oval = ((P0 *)_this)->currStatus;
		;
		((P0 *)_this)->currStatus = qrecv(now.cmStatus[ Index(((P0 *)_this)->id, 4) ], XX-1, 0, 1);
#ifdef VAR_RANGES
		logval("Client:currStatus", ((P0 *)_this)->currStatus);
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.cmStatus[ Index(((P0 *)_this)->id, 4) ]);
		sprintf(simtmp, "%d", ((P0 *)_this)->currStatus); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 172: // STATE 58 - problem2.pml:79 - [(((currStatus==4)&&connected))] (60:0:0 - 1)
		IfNotBlocked
		reached[0][58] = 1;
		if (!(((((P0 *)_this)->currStatus==4)&&((int)((P0 *)_this)->connected))))
			continue;
		/* merge: printf('Client %d: pre-updating\\n',(id+1))(0, 59, 60) */
		reached[0][59] = 1;
		Printf("Client %d: pre-updating\n", (((P0 *)_this)->id+1));
		_m = 3; goto P999; /* 1 */
	case 173: // STATE 60 - problem2.pml:81 - [cmCommand[id]?currCommand] (0:0:1 - 1)
		reached[0][60] = 1;
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
	case 174: // STATE 61 - problem2.pml:83 - [((currCommand==4))] (0:0:1 - 1)
		IfNotBlocked
		reached[0][61] = 1;
		if (!((((P0 *)_this)->currCommand==4)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: currCommand */  (trpt+1)->bup.oval = ((P0 *)_this)->currCommand;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->currCommand = 0;
		_m = 3; goto P999; /* 0 */
	case 175: // STATE 62 - problem2.pml:83 - [cmStatus[id]?currStatus] (0:0:1 - 1)
		reached[0][62] = 1;
		if (q_len(now.cmStatus[ Index(((P0 *)_this)->id, 4) ]) == 0) continue;

		XX=1;
		(trpt+1)->bup.oval = ((P0 *)_this)->currStatus;
		;
		((P0 *)_this)->currStatus = qrecv(now.cmStatus[ Index(((P0 *)_this)->id, 4) ], XX-1, 0, 1);
#ifdef VAR_RANGES
		logval("Client:currStatus", ((P0 *)_this)->currStatus);
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.cmStatus[ Index(((P0 *)_this)->id, 4) ]);
		sprintf(simtmp, "%d", ((P0 *)_this)->currStatus); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 176: // STATE 63 - problem2.pml:84 - [printf('Client %d: getting new info\\n',(id+1))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][63] = 1;
		Printf("Client %d: getting new info\n", (((P0 *)_this)->id+1));
		_m = 3; goto P999; /* 0 */
	case 177: // STATE 68 - problem2.pml:87 - [(((currStatus==3)&&connected))] (90:0:0 - 1)
		IfNotBlocked
		reached[0][68] = 1;
		if (!(((((P0 *)_this)->currStatus==3)&&((int)((P0 *)_this)->connected))))
			continue;
		/* merge: printf('Client %d: updating\\n',(id+1))(0, 69, 90) */
		reached[0][69] = 1;
		Printf("Client %d: updating\n", (((P0 *)_this)->id+1));
		_m = 3; goto P999; /* 1 */
	case 178: // STATE 70 - problem2.pml:90 - [(getInfoSuccess)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][70] = 1;
		if (!(((int)((P0 *)_this)->getInfoSuccess)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 179: // STATE 71 - problem2.pml:90 - [clientReport!2,id] (0:0:0 - 1)
		IfNotBlocked
		reached[0][71] = 1;
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
	case 180: // STATE 72 - problem2.pml:91 - [cmCommand[id]?currCommand] (0:0:1 - 1)
		reached[0][72] = 1;
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
	case 181: // STATE 73 - problem2.pml:93 - [((currCommand==3))] (0:0:1 - 1)
		IfNotBlocked
		reached[0][73] = 1;
		if (!((((P0 *)_this)->currCommand==3)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: currCommand */  (trpt+1)->bup.oval = ((P0 *)_this)->currCommand;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->currCommand = 0;
		_m = 3; goto P999; /* 0 */
	case 182: // STATE 74 - problem2.pml:93 - [cmStatus[id]?currStatus] (0:0:1 - 1)
		reached[0][74] = 1;
		if (q_len(now.cmStatus[ Index(((P0 *)_this)->id, 4) ]) == 0) continue;

		XX=1;
		(trpt+1)->bup.oval = ((P0 *)_this)->currStatus;
		;
		((P0 *)_this)->currStatus = qrecv(now.cmStatus[ Index(((P0 *)_this)->id, 4) ], XX-1, 0, 1);
#ifdef VAR_RANGES
		logval("Client:currStatus", ((P0 *)_this)->currStatus);
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.cmStatus[ Index(((P0 *)_this)->id, 4) ]);
		sprintf(simtmp, "%d", ((P0 *)_this)->currStatus); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 183: // STATE 75 - problem2.pml:94 - [printf('Client %d: using new info\\n',(id+1))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][75] = 1;
		Printf("Client %d: using new info\n", (((P0 *)_this)->id+1));
		_m = 3; goto P999; /* 0 */
	case 184: // STATE 81 - problem2.pml:97 - [clientReport!1,id] (0:0:0 - 1)
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
	case 185: // STATE 82 - problem2.pml:98 - [cmCommand[id]?currCommand] (0:0:1 - 1)
		reached[0][82] = 1;
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
	case 186: // STATE 83 - problem2.pml:100 - [((currCommand==2))] (0:0:1 - 1)
		IfNotBlocked
		reached[0][83] = 1;
		if (!((((P0 *)_this)->currCommand==2)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: currCommand */  (trpt+1)->bup.oval = ((P0 *)_this)->currCommand;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->currCommand = 0;
		_m = 3; goto P999; /* 0 */
	case 187: // STATE 84 - problem2.pml:100 - [cmStatus[id]?currStatus] (0:0:1 - 1)
		reached[0][84] = 1;
		if (q_len(now.cmStatus[ Index(((P0 *)_this)->id, 4) ]) == 0) continue;

		XX=1;
		(trpt+1)->bup.oval = ((P0 *)_this)->currStatus;
		;
		((P0 *)_this)->currStatus = qrecv(now.cmStatus[ Index(((P0 *)_this)->id, 4) ], XX-1, 0, 1);
#ifdef VAR_RANGES
		logval("Client:currStatus", ((P0 *)_this)->currStatus);
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.cmStatus[ Index(((P0 *)_this)->id, 4) ]);
		sprintf(simtmp, "%d", ((P0 *)_this)->currStatus); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 188: // STATE 85 - problem2.pml:101 - [printf('Client %d: using old info\\n',(id+1))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][85] = 1;
		Printf("Client %d: using old info\n", (((P0 *)_this)->id+1));
		_m = 3; goto P999; /* 0 */
	case 189: // STATE 92 - problem2.pml:105 - [(((currStatus==2)&&connected))] (101:0:1 - 1)
		IfNotBlocked
		reached[0][92] = 1;
		if (!(((((P0 *)_this)->currStatus==2)&&((int)((P0 *)_this)->connected))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: currStatus */  (trpt+1)->bup.oval = ((P0 *)_this)->currStatus;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->currStatus = 0;
		/* merge: printf('Client %d: post-updating\\n',(id+1))(0, 93, 101) */
		reached[0][93] = 1;
		Printf("Client %d: post-updating\n", (((P0 *)_this)->id+1));
		_m = 3; goto P999; /* 1 */
	case 190: // STATE 94 - problem2.pml:108 - [(useNewInfoSuccess)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][94] = 1;
		if (!(((int)((P0 *)_this)->useNewInfoSuccess)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 191: // STATE 95 - problem2.pml:108 - [clientReport!2,id] (0:0:0 - 1)
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
	case 192: // STATE 96 - problem2.pml:109 - [cmStatus[id]?currStatus] (0:0:1 - 1)
		reached[0][96] = 1;
		if (q_len(now.cmStatus[ Index(((P0 *)_this)->id, 4) ]) == 0) continue;

		XX=1;
		(trpt+1)->bup.oval = ((P0 *)_this)->currStatus;
		;
		((P0 *)_this)->currStatus = qrecv(now.cmStatus[ Index(((P0 *)_this)->id, 4) ], XX-1, 0, 1);
#ifdef VAR_RANGES
		logval("Client:currStatus", ((P0 *)_this)->currStatus);
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.cmStatus[ Index(((P0 *)_this)->id, 4) ]);
		sprintf(simtmp, "%d", ((P0 *)_this)->currStatus); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 193: // STATE 98 - problem2.pml:110 - [clientReport!1,id] (0:0:0 - 1)
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
	case 194: // STATE 99 - problem2.pml:111 - [connected = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][99] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)_this)->connected);
		((P0 *)_this)->connected = 0;
#ifdef VAR_RANGES
		logval("Client:connected", ((int)((P0 *)_this)->connected));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 195: // STATE 100 - problem2.pml:111 - [cmStatus[id]?currStatus] (0:0:1 - 1)
		reached[0][100] = 1;
		if (q_len(now.cmStatus[ Index(((P0 *)_this)->id, 4) ]) == 0) continue;

		XX=1;
		(trpt+1)->bup.oval = ((P0 *)_this)->currStatus;
		;
		((P0 *)_this)->currStatus = qrecv(now.cmStatus[ Index(((P0 *)_this)->id, 4) ], XX-1, 0, 1);
#ifdef VAR_RANGES
		logval("Client:currStatus", ((P0 *)_this)->currStatus);
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.cmStatus[ Index(((P0 *)_this)->id, 4) ]);
		sprintf(simtmp, "%d", ((P0 *)_this)->currStatus); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 196: // STATE 103 - problem2.pml:113 - [cmCommand[id]?currCommand] (0:0:1 - 3)
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
	case 197: // STATE 104 - problem2.pml:115 - [((currCommand==1))] (130:0:2 - 1)
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
		/* merge: connected = 0(130, 105, 130) */
		reached[0][105] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P0 *)_this)->connected);
		((P0 *)_this)->connected = 0;
#ifdef VAR_RANGES
		logval("Client:connected", ((int)((P0 *)_this)->connected));
#endif
		;
		/* merge: printf('Client %d: update failed. disconnected\\n',(id+1))(130, 106, 130) */
		reached[0][106] = 1;
		Printf("Client %d: update failed. disconnected\n", (((P0 *)_this)->id+1));
		/* merge: .(goto)(0, 110, 130) */
		reached[0][110] = 1;
		;
		/* merge: .(goto)(0, 131, 130) */
		reached[0][131] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 198: // STATE 111 - problem2.pml:119 - [(((currStatus==1)&&connected))] (120:0:1 - 1)
		IfNotBlocked
		reached[0][111] = 1;
		if (!(((((P0 *)_this)->currStatus==1)&&((int)((P0 *)_this)->connected))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: currStatus */  (trpt+1)->bup.oval = ((P0 *)_this)->currStatus;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->currStatus = 0;
		/* merge: printf('Client %d: post-reverting\\n',(id+1))(0, 112, 120) */
		reached[0][112] = 1;
		Printf("Client %d: post-reverting\n", (((P0 *)_this)->id+1));
		_m = 3; goto P999; /* 1 */
	case 199: // STATE 113 - problem2.pml:122 - [(useOldInfoSuccess)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][113] = 1;
		if (!(((int)((P0 *)_this)->useOldInfoSuccess)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 200: // STATE 114 - problem2.pml:122 - [clientReport!2,id] (0:0:0 - 1)
		IfNotBlocked
		reached[0][114] = 1;
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
	case 201: // STATE 115 - problem2.pml:123 - [cmStatus[id]?currStatus] (0:0:1 - 1)
		reached[0][115] = 1;
		if (q_len(now.cmStatus[ Index(((P0 *)_this)->id, 4) ]) == 0) continue;

		XX=1;
		(trpt+1)->bup.oval = ((P0 *)_this)->currStatus;
		;
		((P0 *)_this)->currStatus = qrecv(now.cmStatus[ Index(((P0 *)_this)->id, 4) ], XX-1, 0, 1);
#ifdef VAR_RANGES
		logval("Client:currStatus", ((P0 *)_this)->currStatus);
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.cmStatus[ Index(((P0 *)_this)->id, 4) ]);
		sprintf(simtmp, "%d", ((P0 *)_this)->currStatus); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 202: // STATE 117 - problem2.pml:124 - [clientReport!1,id] (0:0:0 - 1)
		IfNotBlocked
		reached[0][117] = 1;
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
	case 203: // STATE 118 - problem2.pml:125 - [connected = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][118] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)_this)->connected);
		((P0 *)_this)->connected = 0;
#ifdef VAR_RANGES
		logval("Client:connected", ((int)((P0 *)_this)->connected));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 204: // STATE 119 - problem2.pml:125 - [cmStatus[id]?currStatus] (0:0:1 - 1)
		reached[0][119] = 1;
		if (q_len(now.cmStatus[ Index(((P0 *)_this)->id, 4) ]) == 0) continue;

		XX=1;
		(trpt+1)->bup.oval = ((P0 *)_this)->currStatus;
		;
		((P0 *)_this)->currStatus = qrecv(now.cmStatus[ Index(((P0 *)_this)->id, 4) ], XX-1, 0, 1);
#ifdef VAR_RANGES
		logval("Client:currStatus", ((P0 *)_this)->currStatus);
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.cmStatus[ Index(((P0 *)_this)->id, 4) ]);
		sprintf(simtmp, "%d", ((P0 *)_this)->currStatus); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 205: // STATE 122 - problem2.pml:127 - [cmCommand[id]?currCommand] (0:0:1 - 3)
		reached[0][122] = 1;
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
	case 206: // STATE 123 - problem2.pml:129 - [((currCommand==1))] (130:0:2 - 1)
		IfNotBlocked
		reached[0][123] = 1;
		if (!((((P0 *)_this)->currCommand==1)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: currCommand */  (trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->currCommand;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->currCommand = 0;
		/* merge: connected = 0(130, 124, 130) */
		reached[0][124] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P0 *)_this)->connected);
		((P0 *)_this)->connected = 0;
#ifdef VAR_RANGES
		logval("Client:connected", ((int)((P0 *)_this)->connected));
#endif
		;
		/* merge: printf('Client %d: revert failed. disconnected\\n',(id+1))(130, 125, 130) */
		reached[0][125] = 1;
		Printf("Client %d: revert failed. disconnected\n", (((P0 *)_this)->id+1));
		/* merge: .(goto)(0, 129, 130) */
		reached[0][129] = 1;
		;
		/* merge: .(goto)(0, 131, 130) */
		reached[0][131] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 207: // STATE 133 - problem2.pml:134 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][133] = 1;
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


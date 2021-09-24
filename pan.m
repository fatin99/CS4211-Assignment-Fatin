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
	case 3: // STATE 1 - problem1.pml:228 - [(run Shuttle(4,2,1,0))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][1] = 1;
		if (!(addproc(II, 1, 0, 4, 2, 1, 0, 0, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 2 - problem1.pml:229 - [(run Shuttle(2,4,1,1))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][2] = 1;
		if (!(addproc(II, 1, 0, 2, 4, 1, 1, 0, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 5: // STATE 3 - problem1.pml:230 - [(run Shuttle(5,1,2,2))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][3] = 1;
		if (!(addproc(II, 1, 0, 5, 1, 2, 2, 0, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 6: // STATE 4 - problem1.pml:231 - [(run Shuttle(3,3,3,3))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][4] = 1;
		if (!(addproc(II, 1, 0, 3, 3, 3, 3, 0, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 5 - problem1.pml:232 - [(run RailwayNetwork())] (0:0:0 - 1)
		IfNotBlocked
		reached[3][5] = 1;
		if (!(addproc(II, 1, 1, 0, 0, 0, 0, 0, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 6 - problem1.pml:233 - [] (0:14:6 - 1)
		IfNotBlocked
		reached[3][6] = 1;
		;
		/* merge: first.start = 1(14, 7, 14) */
		reached[3][7] = 1;
		(trpt+1)->bup.ovals = grab_ints(6);
		(trpt+1)->bup.ovals[0] = ((P3 *)_this)->_10_8_first.start;
		((P3 *)_this)->_10_8_first.start = 1;
#ifdef VAR_RANGES
		logval(":init::first.start", ((P3 *)_this)->_10_8_first.start);
#endif
		;
		/* merge: first.end = 3(14, 8, 14) */
		reached[3][8] = 1;
		(trpt+1)->bup.ovals[1] = ((P3 *)_this)->_10_8_first.end;
		((P3 *)_this)->_10_8_first.end = 3;
#ifdef VAR_RANGES
		logval(":init::first.end", ((P3 *)_this)->_10_8_first.end);
#endif
		;
		/* merge: first.size = 4(14, 9, 14) */
		reached[3][9] = 1;
		(trpt+1)->bup.ovals[2] = ((P3 *)_this)->_10_8_first.size;
		((P3 *)_this)->_10_8_first.size = 4;
#ifdef VAR_RANGES
		logval(":init::first.size", ((P3 *)_this)->_10_8_first.size);
#endif
		;
		/* merge: (14, 10, 14) */
		reached[3][10] = 1;
		;
		/* merge: second.start = 2(14, 11, 14) */
		reached[3][11] = 1;
		(trpt+1)->bup.ovals[3] = ((P3 *)_this)->_10_8_second.start;
		((P3 *)_this)->_10_8_second.start = 2;
#ifdef VAR_RANGES
		logval(":init::second.start", ((P3 *)_this)->_10_8_second.start);
#endif
		;
		/* merge: second.end = 3(14, 12, 14) */
		reached[3][12] = 1;
		(trpt+1)->bup.ovals[4] = ((P3 *)_this)->_10_8_second.end;
		((P3 *)_this)->_10_8_second.end = 3;
#ifdef VAR_RANGES
		logval(":init::second.end", ((P3 *)_this)->_10_8_second.end);
#endif
		;
		/* merge: second.size = 2(14, 13, 14) */
		reached[3][13] = 1;
		(trpt+1)->bup.ovals[5] = ((P3 *)_this)->_10_8_second.size;
		((P3 *)_this)->_10_8_second.size = 2;
#ifdef VAR_RANGES
		logval(":init::second.size", ((P3 *)_this)->_10_8_second.size);
#endif
		;
		_m = 3; goto P999; /* 7 */
	case 9: // STATE 14 - problem1.pml:235 - [(run ShuttleManagementSystem(first.start,first.end,first.size,second.start,second.end,second.size))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][14] = 1;
		if (!(addproc(II, 1, 2, ((P3 *)_this)->_10_8_first.start, ((P3 *)_this)->_10_8_first.end, ((P3 *)_this)->_10_8_first.size, ((P3 *)_this)->_10_8_second.start, ((P3 *)_this)->_10_8_second.end, ((P3 *)_this)->_10_8_second.size)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 10: // STATE 16 - problem1.pml:237 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[3][16] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC ShuttleManagementSystem */
	case 11: // STATE 1 - problem1.pml:190 - [orders[0].start = first.start] (0:67:13 - 1)
		IfNotBlocked
		reached[2][1] = 1;
		(trpt+1)->bup.ovals = grab_ints(13);
		(trpt+1)->bup.ovals[0] = ((P2 *)_this)->orders[0].start;
		((P2 *)_this)->orders[0].start = ((P2 *)_this)->first.start;
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:orders[0].start", ((P2 *)_this)->orders[0].start);
#endif
		;
		/* merge: orders[0].end = first.end(67, 2, 67) */
		reached[2][2] = 1;
		(trpt+1)->bup.ovals[1] = ((P2 *)_this)->orders[0].end;
		((P2 *)_this)->orders[0].end = ((P2 *)_this)->first.end;
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:orders[0].end", ((P2 *)_this)->orders[0].end);
#endif
		;
		/* merge: orders[0].size = first.size(67, 3, 67) */
		reached[2][3] = 1;
		(trpt+1)->bup.ovals[2] = ((P2 *)_this)->orders[0].size;
		((P2 *)_this)->orders[0].size = ((P2 *)_this)->first.size;
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:orders[0].size", ((P2 *)_this)->orders[0].size);
#endif
		;
		/* merge: orders[1].start = first.start(67, 4, 67) */
		reached[2][4] = 1;
		(trpt+1)->bup.ovals[3] = ((P2 *)_this)->orders[1].start;
		((P2 *)_this)->orders[1].start = ((P2 *)_this)->first.start;
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:orders[1].start", ((P2 *)_this)->orders[1].start);
#endif
		;
		/* merge: orders[1].end = first.end(67, 5, 67) */
		reached[2][5] = 1;
		(trpt+1)->bup.ovals[4] = ((P2 *)_this)->orders[1].end;
		((P2 *)_this)->orders[1].end = ((P2 *)_this)->first.end;
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:orders[1].end", ((P2 *)_this)->orders[1].end);
#endif
		;
		/* merge: orders[1].size = first.size(67, 6, 67) */
		reached[2][6] = 1;
		(trpt+1)->bup.ovals[5] = ((P2 *)_this)->orders[1].size;
		((P2 *)_this)->orders[1].size = ((P2 *)_this)->first.size;
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:orders[1].size", ((P2 *)_this)->orders[1].size);
#endif
		;
		/* merge: i = 0(67, 7, 67) */
		reached[2][7] = 1;
		(trpt+1)->bup.ovals[6] = ((P2 *)_this)->i;
		((P2 *)_this)->i = 0;
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:i", ((P2 *)_this)->i);
#endif
		;
		/* merge: j = 0(67, 8, 67) */
		reached[2][8] = 1;
		(trpt+1)->bup.ovals[7] = ((P2 *)_this)->j;
		((P2 *)_this)->j = 0;
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:j", ((P2 *)_this)->j);
#endif
		;
		/* merge: (67, 9, 67) */
		reached[2][9] = 1;
		;
		/* merge: (67, 10, 67) */
		reached[2][10] = 1;
		;
		/* merge: min_charge = 100(67, 11, 67) */
		reached[2][11] = 1;
		(trpt+1)->bup.ovals[8] = ((P2 *)_this)->min_charge;
		((P2 *)_this)->min_charge = 100;
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:min_charge", ((P2 *)_this)->min_charge);
#endif
		;
		/* merge: offer_id = 0(67, 12, 67) */
		reached[2][12] = 1;
		(trpt+1)->bup.ovals[9] = ((P2 *)_this)->offer_id;
		((P2 *)_this)->offer_id = 0;
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:offer_id", ((P2 *)_this)->offer_id);
#endif
		;
		/* merge: shuttle_id = 0(67, 13, 67) */
		reached[2][13] = 1;
		(trpt+1)->bup.ovals[10] = ((P2 *)_this)->shuttle_id;
		((P2 *)_this)->shuttle_id = 0;
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:shuttle_id", ((P2 *)_this)->shuttle_id);
#endif
		;
		/* merge: shuttle_charge = 0(67, 14, 67) */
		reached[2][14] = 1;
		(trpt+1)->bup.ovals[11] = ((P2 *)_this)->shuttle_charge;
		((P2 *)_this)->shuttle_charge = 0;
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:shuttle_charge", ((P2 *)_this)->shuttle_charge);
#endif
		;
		/* merge: j = 0(67, 15, 67) */
		reached[2][15] = 1;
		(trpt+1)->bup.ovals[12] = ((P2 *)_this)->j;
		((P2 *)_this)->j = 0;
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:j", ((P2 *)_this)->j);
#endif
		;
		/* merge: .(goto)(0, 68, 67) */
		reached[2][68] = 1;
		;
		_m = 3; goto P999; /* 15 */
	case 12: // STATE 16 - problem1.pml:200 - [((j<=(2-1)))] (27:0:4 - 1)
		IfNotBlocked
		reached[2][16] = 1;
		if (!((((P2 *)_this)->j<=(2-1))))
			continue;
		/* merge: printf('[Management System]: Broadcasting New Order\\n')(27, 17, 27) */
		reached[2][17] = 1;
		Printf("[Management System]: Broadcasting New Order\n");
		/* merge: current.start = orders[j].start(27, 18, 27) */
		reached[2][18] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((P2 *)_this)->current.start;
		((P2 *)_this)->current.start = ((P2 *)_this)->orders[ Index(((P2 *)_this)->j, 2) ].start;
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:current.start", ((P2 *)_this)->current.start);
#endif
		;
		/* merge: current.end = orders[j].end(27, 19, 27) */
		reached[2][19] = 1;
		(trpt+1)->bup.ovals[1] = ((P2 *)_this)->current.end;
		((P2 *)_this)->current.end = ((P2 *)_this)->orders[ Index(((P2 *)_this)->j, 2) ].end;
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:current.end", ((P2 *)_this)->current.end);
#endif
		;
		/* merge: current.size = orders[j].size(27, 20, 27) */
		reached[2][20] = 1;
		(trpt+1)->bup.ovals[2] = ((P2 *)_this)->current.size;
		((P2 *)_this)->current.size = ((P2 *)_this)->orders[ Index(((P2 *)_this)->j, 2) ].size;
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:current.size", ((P2 *)_this)->current.size);
#endif
		;
		/* merge: i = 0(27, 21, 27) */
		reached[2][21] = 1;
		(trpt+1)->bup.ovals[3] = ((P2 *)_this)->i;
		((P2 *)_this)->i = 0;
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:i", ((P2 *)_this)->i);
#endif
		;
		/* merge: .(goto)(0, 28, 27) */
		reached[2][28] = 1;
		;
		_m = 3; goto P999; /* 6 */
	case 13: // STATE 22 - problem1.pml:203 - [((i<=(4-1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][22] = 1;
		if (!((((P2 *)_this)->i<=(4-1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 14: // STATE 23 - problem1.pml:204 - [managementTOshuttle[i]!current.start,current.end,current.size] (0:0:0 - 1)
		IfNotBlocked
		reached[2][23] = 1;
		if (q_full(now.managementTOshuttle[ Index(((P2 *)_this)->i, 4) ]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.managementTOshuttle[ Index(((P2 *)_this)->i, 4) ]);
		sprintf(simtmp, "%d", ((P2 *)_this)->current.start); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P2 *)_this)->current.end); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P2 *)_this)->current.size); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.managementTOshuttle[ Index(((P2 *)_this)->i, 4) ], 0, ((P2 *)_this)->current.start, ((P2 *)_this)->current.end, ((P2 *)_this)->current.size, 3);
		_m = 2; goto P999; /* 0 */
	case 15: // STATE 24 - problem1.pml:203 - [i = (i+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[2][24] = 1;
		(trpt+1)->bup.oval = ((P2 *)_this)->i;
		((P2 *)_this)->i = (((P2 *)_this)->i+1);
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:i", ((P2 *)_this)->i);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 16: // STATE 30 - problem1.pml:206 - [i = 0] (0:45:2 - 3)
		IfNotBlocked
		reached[2][30] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P2 *)_this)->i;
		((P2 *)_this)->i = 0;
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:i", ((P2 *)_this)->i);
#endif
		;
		/* merge: printf('[Management System]: Waiting for replies\\n')(45, 31, 45) */
		reached[2][31] = 1;
		Printf("[Management System]: Waiting for replies\n");
		/* merge: i = 0(45, 32, 45) */
		reached[2][32] = 1;
		(trpt+1)->bup.ovals[1] = ((P2 *)_this)->i;
		((P2 *)_this)->i = 0;
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:i", ((P2 *)_this)->i);
#endif
		;
		/* merge: .(goto)(0, 46, 45) */
		reached[2][46] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 17: // STATE 33 - problem1.pml:208 - [((i<=(4-1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][33] = 1;
		if (!((((P2 *)_this)->i<=(4-1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 18: // STATE 34 - problem1.pml:209 - [shuttleTOmanagement?shuttle_charge,shuttle_id] (0:0:2 - 1)
		reached[2][34] = 1;
		if (q_len(now.shuttleTOmanagement) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P2 *)_this)->shuttle_charge;
		(trpt+1)->bup.ovals[1] = ((P2 *)_this)->shuttle_id;
		;
		((P2 *)_this)->shuttle_charge = qrecv(now.shuttleTOmanagement, XX-1, 0, 0);
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:shuttle_charge", ((P2 *)_this)->shuttle_charge);
#endif
		;
		((P2 *)_this)->shuttle_id = qrecv(now.shuttleTOmanagement, XX-1, 1, 1);
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:shuttle_id", ((P2 *)_this)->shuttle_id);
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.shuttleTOmanagement);
		sprintf(simtmp, "%d", ((P2 *)_this)->shuttle_charge); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P2 *)_this)->shuttle_id); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 19: // STATE 35 - problem1.pml:211 - [(((shuttle_charge<min_charge)&&(shuttle_charge!=0)))] (45:0:4 - 1)
		IfNotBlocked
		reached[2][35] = 1;
		if (!(((((P2 *)_this)->shuttle_charge<((P2 *)_this)->min_charge)&&(((P2 *)_this)->shuttle_charge!=0))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: min_charge */  (trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((P2 *)_this)->min_charge;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P2 *)_this)->min_charge = 0;
		/* merge: min_charge = shuttle_charge(45, 36, 45) */
		reached[2][36] = 1;
		(trpt+1)->bup.ovals[1] = ((P2 *)_this)->min_charge;
		((P2 *)_this)->min_charge = ((P2 *)_this)->shuttle_charge;
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:min_charge", ((P2 *)_this)->min_charge);
#endif
		;
		/* merge: offer_id = shuttle_id(45, 37, 45) */
		reached[2][37] = 1;
		(trpt+1)->bup.ovals[2] = ((P2 *)_this)->offer_id;
		((P2 *)_this)->offer_id = ((P2 *)_this)->shuttle_id;
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:offer_id", ((P2 *)_this)->offer_id);
#endif
		;
		/* merge: .(goto)(45, 41, 45) */
		reached[2][41] = 1;
		;
		/* merge: i = (i+1)(45, 42, 45) */
		reached[2][42] = 1;
		(trpt+1)->bup.ovals[3] = ((P2 *)_this)->i;
		((P2 *)_this)->i = (((P2 *)_this)->i+1);
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:i", ((P2 *)_this)->i);
#endif
		;
		/* merge: .(goto)(0, 46, 45) */
		reached[2][46] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 20: // STATE 39 - problem1.pml:212 - [(1)] (45:0:1 - 1)
		IfNotBlocked
		reached[2][39] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(45, 41, 45) */
		reached[2][41] = 1;
		;
		/* merge: i = (i+1)(45, 42, 45) */
		reached[2][42] = 1;
		(trpt+1)->bup.oval = ((P2 *)_this)->i;
		((P2 *)_this)->i = (((P2 *)_this)->i+1);
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:i", ((P2 *)_this)->i);
#endif
		;
		/* merge: .(goto)(0, 46, 45) */
		reached[2][46] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 21: // STATE 42 - problem1.pml:208 - [i = (i+1)] (0:45:1 - 3)
		IfNotBlocked
		reached[2][42] = 1;
		(trpt+1)->bup.oval = ((P2 *)_this)->i;
		((P2 *)_this)->i = (((P2 *)_this)->i+1);
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:i", ((P2 *)_this)->i);
#endif
		;
		/* merge: .(goto)(0, 46, 45) */
		reached[2][46] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 22: // STATE 48 - problem1.pml:215 - [i = 0] (0:61:2 - 3)
		IfNotBlocked
		reached[2][48] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P2 *)_this)->i;
		((P2 *)_this)->i = 0;
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:i", ((P2 *)_this)->i);
#endif
		;
		/* merge: printf('[Management System]: New Order assigned to Shuttle %d\\n',offer_id)(61, 49, 61) */
		reached[2][49] = 1;
		Printf("[Management System]: New Order assigned to Shuttle %d\n", ((P2 *)_this)->offer_id);
		/* merge: i = 0(61, 50, 61) */
		reached[2][50] = 1;
		(trpt+1)->bup.ovals[1] = ((P2 *)_this)->i;
		((P2 *)_this)->i = 0;
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:i", ((P2 *)_this)->i);
#endif
		;
		/* merge: .(goto)(0, 62, 61) */
		reached[2][62] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 23: // STATE 51 - problem1.pml:217 - [((i<=(4-1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][51] = 1;
		if (!((((P2 *)_this)->i<=(4-1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 24: // STATE 52 - problem1.pml:219 - [((i==offer_id))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][52] = 1;
		if (!((((P2 *)_this)->i==((P2 *)_this)->offer_id)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 25: // STATE 53 - problem1.pml:219 - [managementTOshuttle[i]!current.start,current.end,current.size] (0:0:0 - 1)
		IfNotBlocked
		reached[2][53] = 1;
		if (q_full(now.managementTOshuttle[ Index(((P2 *)_this)->i, 4) ]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.managementTOshuttle[ Index(((P2 *)_this)->i, 4) ]);
		sprintf(simtmp, "%d", ((P2 *)_this)->current.start); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P2 *)_this)->current.end); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P2 *)_this)->current.size); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.managementTOshuttle[ Index(((P2 *)_this)->i, 4) ], 0, ((P2 *)_this)->current.start, ((P2 *)_this)->current.end, ((P2 *)_this)->current.size, 3);
		_m = 2; goto P999; /* 0 */
	case 26: // STATE 55 - problem1.pml:220 - [managementTOshuttle[i]!reject.start,reject.end,reject.size] (0:0:0 - 1)
		IfNotBlocked
		reached[2][55] = 1;
		if (q_full(now.managementTOshuttle[ Index(((P2 *)_this)->i, 4) ]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.managementTOshuttle[ Index(((P2 *)_this)->i, 4) ]);
		sprintf(simtmp, "%d", ((P2 *)_this)->reject.start); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P2 *)_this)->reject.end); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P2 *)_this)->reject.size); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.managementTOshuttle[ Index(((P2 *)_this)->i, 4) ], 0, ((P2 *)_this)->reject.start, ((P2 *)_this)->reject.end, ((P2 *)_this)->reject.size, 3);
		_m = 2; goto P999; /* 0 */
	case 27: // STATE 58 - problem1.pml:217 - [i = (i+1)] (0:61:1 - 3)
		IfNotBlocked
		reached[2][58] = 1;
		(trpt+1)->bup.oval = ((P2 *)_this)->i;
		((P2 *)_this)->i = (((P2 *)_this)->i+1);
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:i", ((P2 *)_this)->i);
#endif
		;
		/* merge: .(goto)(0, 62, 61) */
		reached[2][62] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 28: // STATE 64 - problem1.pml:200 - [j = (j+1)] (0:67:1 - 3)
		IfNotBlocked
		reached[2][64] = 1;
		(trpt+1)->bup.oval = ((P2 *)_this)->j;
		((P2 *)_this)->j = (((P2 *)_this)->j+1);
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:j", ((P2 *)_this)->j);
#endif
		;
		/* merge: .(goto)(0, 68, 67) */
		reached[2][68] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 29: // STATE 70 - problem1.pml:224 - [-end-] (0:0:0 - 3)
		IfNotBlocked
		reached[2][70] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC RailwayNetwork */
	case 30: // STATE 1 - problem1.pml:171 - [(nempty(shuttleTOrailway))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][1] = 1;
		if (!((q_len(now.shuttleTOrailway)>0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 31: // STATE 2 - problem1.pml:172 - [shuttleTOrailway?req.track,req.direction,req.shuttle_id] (0:0:3 - 1)
		reached[1][2] = 1;
		if (q_len(now.shuttleTOrailway) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->req.track;
		(trpt+1)->bup.ovals[1] = ((P1 *)_this)->req.direction;
		(trpt+1)->bup.ovals[2] = ((P1 *)_this)->req.shuttle_id;
		;
		((P1 *)_this)->req.track = qrecv(now.shuttleTOrailway, XX-1, 0, 0);
#ifdef VAR_RANGES
		logval("RailwayNetwork:req.track", ((P1 *)_this)->req.track);
#endif
		;
		((P1 *)_this)->req.direction = qrecv(now.shuttleTOrailway, XX-1, 1, 0);
#ifdef VAR_RANGES
		logval("RailwayNetwork:req.direction", ((P1 *)_this)->req.direction);
#endif
		;
		((P1 *)_this)->req.shuttle_id = qrecv(now.shuttleTOrailway, XX-1, 2, 1);
#ifdef VAR_RANGES
		logval("RailwayNetwork:req.shuttle_id", ((P1 *)_this)->req.shuttle_id);
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.shuttleTOrailway);
		sprintf(simtmp, "%d", ((P1 *)_this)->req.track); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P1 *)_this)->req.direction); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P1 *)_this)->req.shuttle_id); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 32: // STATE 3 - problem1.pml:174 - [((req.direction==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][3] = 1;
		if (!((((P1 *)_this)->req.direction==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 33: // STATE 4 - problem1.pml:176 - [(!(track_clockwise[req.track]))] (6:0:1 - 1)
		IfNotBlocked
		reached[1][4] = 1;
		if (!( !(((int)now.track_clockwise[ Index(((P1 *)_this)->req.track, 4) ]))))
			continue;
		/* merge: track_clockwise[req.track] = 1(0, 5, 6) */
		reached[1][5] = 1;
		(trpt+1)->bup.oval = ((int)now.track_clockwise[ Index(((P1 *)_this)->req.track, 4) ]);
		now.track_clockwise[ Index(((P1 *)_this)->req.track, 4) ] = 1;
#ifdef VAR_RANGES
		logval("track_clockwise[RailwayNetwork:req.track]", ((int)now.track_clockwise[ Index(((P1 *)_this)->req.track, 4) ]));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 34: // STATE 6 - problem1.pml:176 - [railwayTOshuttle[req.shuttle_id]!1] (0:0:0 - 1)
		IfNotBlocked
		reached[1][6] = 1;
		if (q_full(now.railwayTOshuttle[ Index(((P1 *)_this)->req.shuttle_id, 4) ]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.railwayTOshuttle[ Index(((P1 *)_this)->req.shuttle_id, 4) ]);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.railwayTOshuttle[ Index(((P1 *)_this)->req.shuttle_id, 4) ], 0, 1, 0, 0, 1);
		_m = 2; goto P999; /* 0 */
	case 35: // STATE 9 - problem1.pml:177 - [railwayTOshuttle[shuttle_id]!0] (0:0:0 - 1)
		IfNotBlocked
		reached[1][9] = 1;
		if (q_full(now.railwayTOshuttle[ Index(((P1 *)_this)->shuttle_id, 4) ]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.railwayTOshuttle[ Index(((P1 *)_this)->shuttle_id, 4) ]);
		sprintf(simtmp, "%d", 0); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.railwayTOshuttle[ Index(((P1 *)_this)->shuttle_id, 4) ], 0, 0, 0, 0, 1);
		_m = 2; goto P999; /* 0 */
	case 36: // STATE 12 - problem1.pml:179 - [((req.direction==-(1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][12] = 1;
		if (!((((P1 *)_this)->req.direction== -(1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 37: // STATE 13 - problem1.pml:181 - [(!(track_anti_clockwise[req.track]))] (15:0:1 - 1)
		IfNotBlocked
		reached[1][13] = 1;
		if (!( !(((int)now.track_anti_clockwise[ Index(((P1 *)_this)->req.track, 4) ]))))
			continue;
		/* merge: track_anti_clockwise[req.track] = 1(0, 14, 15) */
		reached[1][14] = 1;
		(trpt+1)->bup.oval = ((int)now.track_anti_clockwise[ Index(((P1 *)_this)->req.track, 4) ]);
		now.track_anti_clockwise[ Index(((P1 *)_this)->req.track, 4) ] = 1;
#ifdef VAR_RANGES
		logval("track_anti_clockwise[RailwayNetwork:req.track]", ((int)now.track_anti_clockwise[ Index(((P1 *)_this)->req.track, 4) ]));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 38: // STATE 15 - problem1.pml:181 - [railwayTOshuttle[req.shuttle_id]!1] (0:0:0 - 1)
		IfNotBlocked
		reached[1][15] = 1;
		if (q_full(now.railwayTOshuttle[ Index(((P1 *)_this)->req.shuttle_id, 4) ]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.railwayTOshuttle[ Index(((P1 *)_this)->req.shuttle_id, 4) ]);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.railwayTOshuttle[ Index(((P1 *)_this)->req.shuttle_id, 4) ], 0, 1, 0, 0, 1);
		_m = 2; goto P999; /* 0 */
	case 39: // STATE 18 - problem1.pml:182 - [railwayTOshuttle[shuttle_id]!0] (0:0:0 - 1)
		IfNotBlocked
		reached[1][18] = 1;
		if (q_full(now.railwayTOshuttle[ Index(((P1 *)_this)->shuttle_id, 4) ]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.railwayTOshuttle[ Index(((P1 *)_this)->shuttle_id, 4) ]);
		sprintf(simtmp, "%d", 0); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.railwayTOshuttle[ Index(((P1 *)_this)->shuttle_id, 4) ], 0, 0, 0, 0, 1);
		_m = 2; goto P999; /* 0 */
	case 40: // STATE 26 - problem1.pml:186 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][26] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Shuttle */
	case 41: // STATE 1 - problem1.pml:157 - [track_req.shuttle_id = id] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->track_req.shuttle_id;
		((P0 *)_this)->track_req.shuttle_id = ((P0 *)_this)->id;
#ifdef VAR_RANGES
		logval("Shuttle:track_req.shuttle_id", ((P0 *)_this)->track_req.shuttle_id);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 42: // STATE 2 - problem1.pml:160 - [managementTOshuttle[id]?recieve_order.start,recieve_order.end,recieve_order.size] (0:0:3 - 1)
		reached[0][2] = 1;
		if (q_len(now.managementTOshuttle[ Index(((P0 *)_this)->id, 4) ]) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->recieve_order.start;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->recieve_order.end;
		(trpt+1)->bup.ovals[2] = ((P0 *)_this)->recieve_order.size;
		;
		((P0 *)_this)->recieve_order.start = qrecv(now.managementTOshuttle[ Index(((P0 *)_this)->id, 4) ], XX-1, 0, 0);
#ifdef VAR_RANGES
		logval("Shuttle:recieve_order.start", ((P0 *)_this)->recieve_order.start);
#endif
		;
		((P0 *)_this)->recieve_order.end = qrecv(now.managementTOshuttle[ Index(((P0 *)_this)->id, 4) ], XX-1, 1, 0);
#ifdef VAR_RANGES
		logval("Shuttle:recieve_order.end", ((P0 *)_this)->recieve_order.end);
#endif
		;
		((P0 *)_this)->recieve_order.size = qrecv(now.managementTOshuttle[ Index(((P0 *)_this)->id, 4) ], XX-1, 2, 1);
#ifdef VAR_RANGES
		logval("Shuttle:recieve_order.size", ((P0 *)_this)->recieve_order.size);
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.managementTOshuttle[ Index(((P0 *)_this)->id, 4) ]);
		sprintf(simtmp, "%d", ((P0 *)_this)->recieve_order.start); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->recieve_order.end); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->recieve_order.size); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 43: // STATE 3 - problem1.pml:52 - [temp_station = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][3] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->_7_2_temp_station;
		((P0 *)_this)->_7_2_temp_station = 0;
#ifdef VAR_RANGES
		logval("Shuttle:temp_station", ((P0 *)_this)->_7_2_temp_station);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 44: // STATE 4 - problem1.pml:53 - [(isMoving)] (13:0:1 - 1)
		IfNotBlocked
		reached[0][4] = 1;
		if (!(((int)((P0 *)_this)->isMoving)))
			continue;
		/* merge: temp_station = next_station(0, 5, 13) */
		reached[0][5] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->_7_2_temp_station;
		((P0 *)_this)->_7_2_temp_station = ((P0 *)_this)->next_station;
#ifdef VAR_RANGES
		logval("Shuttle:temp_station", ((P0 *)_this)->_7_2_temp_station);
#endif
		;
		/* merge: .(goto)(0, 9, 13) */
		reached[0][9] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 45: // STATE 7 - problem1.pml:54 - [temp_station = current_station] (0:0:1 - 1)
		IfNotBlocked
		reached[0][7] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->_7_2_temp_station;
		((P0 *)_this)->_7_2_temp_station = ((P0 *)_this)->current_station;
#ifdef VAR_RANGES
		logval("Shuttle:temp_station", ((P0 *)_this)->_7_2_temp_station);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 46: // STATE 10 - problem1.pml:38 - [distance_a = ( ((temp_station>recieve_order.start)) -> ((temp_station-recieve_order.start)) : ((recieve_order.start-temp_station)) )] (0:18:3 - 1)
		IfNotBlocked
		reached[0][10] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->_7_2_1_distance_a;
		((P0 *)_this)->_7_2_1_distance_a = ( ((((P0 *)_this)->_7_2_temp_station>((P0 *)_this)->recieve_order.start)) ? ((((P0 *)_this)->_7_2_temp_station-((P0 *)_this)->recieve_order.start)) : ((((P0 *)_this)->recieve_order.start-((P0 *)_this)->_7_2_temp_station)) );
#ifdef VAR_RANGES
		logval("Shuttle:distance_a", ((P0 *)_this)->_7_2_1_distance_a);
#endif
		;
		/* merge: distance_b = ((4-( ((temp_station>recieve_order.start)) -> (temp_station) : (recieve_order.start) ))+( ((temp_station<recieve_order.start)) -> (temp_station) : (recieve_order.start) ))(18, 11, 18) */
		reached[0][11] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->_7_2_1_distance_b;
		((P0 *)_this)->_7_2_1_distance_b = ((4-( ((((P0 *)_this)->_7_2_temp_station>((P0 *)_this)->recieve_order.start)) ? (((P0 *)_this)->_7_2_temp_station) : (((P0 *)_this)->recieve_order.start) ))+( ((((P0 *)_this)->_7_2_temp_station<((P0 *)_this)->recieve_order.start)) ? (((P0 *)_this)->_7_2_temp_station) : (((P0 *)_this)->recieve_order.start) ));
#ifdef VAR_RANGES
		logval("Shuttle:distance_b", ((P0 *)_this)->_7_2_1_distance_b);
#endif
		;
		/* merge: station_distance = ( ((distance_a<distance_b)) -> (distance_a) : (distance_b) )(18, 12, 18) */
		reached[0][12] = 1;
		(trpt+1)->bup.ovals[2] = ((P0 *)_this)->station_distance;
		((P0 *)_this)->station_distance = ( ((((P0 *)_this)->_7_2_1_distance_a<((P0 *)_this)->_7_2_1_distance_b)) ? (((P0 *)_this)->_7_2_1_distance_a) : (((P0 *)_this)->_7_2_1_distance_b) );
#ifdef VAR_RANGES
		logval("Shuttle:station_distance", ((P0 *)_this)->station_distance);
#endif
		;
		_m = 3; goto P999; /* 2 */
	case 47: // STATE 14 - problem1.pml:60 - [((((current_cap+recieve_order.size)<=max_cap)&&(station_distance<=2)))] (0:0:1 - 1)
		IfNotBlocked
		reached[0][14] = 1;
		if (!((((((P0 *)_this)->current_cap+((P0 *)_this)->recieve_order.size)<=((P0 *)_this)->max_cap)&&(((P0 *)_this)->station_distance<=2))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: station_distance */  (trpt+1)->bup.oval = ((P0 *)_this)->station_distance;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->station_distance = 0;
		_m = 3; goto P999; /* 0 */
	case 48: // STATE 15 - problem1.pml:60 - [shuttleTOmanagement!charge,id] (0:0:0 - 1)
		IfNotBlocked
		reached[0][15] = 1;
		if (q_full(now.shuttleTOmanagement))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.shuttleTOmanagement);
		sprintf(simtmp, "%d", ((P0 *)_this)->charge); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->id); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.shuttleTOmanagement, 0, ((P0 *)_this)->charge, ((P0 *)_this)->id, 0, 2);
		_m = 2; goto P999; /* 0 */
	case 49: // STATE 17 - problem1.pml:61 - [shuttleTOmanagement!0,id] (0:0:0 - 1)
		IfNotBlocked
		reached[0][17] = 1;
		if (q_full(now.shuttleTOmanagement))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.shuttleTOmanagement);
		sprintf(simtmp, "%d", 0); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->id); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.shuttleTOmanagement, 0, 0, ((P0 *)_this)->id, 0, 2);
		_m = 2; goto P999; /* 0 */
	case 50: // STATE 20 - problem1.pml:64 - [managementTOshuttle[id]?recieve_order.start,recieve_order.end,recieve_order.size] (0:0:3 - 3)
		reached[0][20] = 1;
		if (q_len(now.managementTOshuttle[ Index(((P0 *)_this)->id, 4) ]) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->recieve_order.start;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->recieve_order.end;
		(trpt+1)->bup.ovals[2] = ((P0 *)_this)->recieve_order.size;
		;
		((P0 *)_this)->recieve_order.start = qrecv(now.managementTOshuttle[ Index(((P0 *)_this)->id, 4) ], XX-1, 0, 0);
#ifdef VAR_RANGES
		logval("Shuttle:recieve_order.start", ((P0 *)_this)->recieve_order.start);
#endif
		;
		((P0 *)_this)->recieve_order.end = qrecv(now.managementTOshuttle[ Index(((P0 *)_this)->id, 4) ], XX-1, 1, 0);
#ifdef VAR_RANGES
		logval("Shuttle:recieve_order.end", ((P0 *)_this)->recieve_order.end);
#endif
		;
		((P0 *)_this)->recieve_order.size = qrecv(now.managementTOshuttle[ Index(((P0 *)_this)->id, 4) ], XX-1, 2, 1);
#ifdef VAR_RANGES
		logval("Shuttle:recieve_order.size", ((P0 *)_this)->recieve_order.size);
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.managementTOshuttle[ Index(((P0 *)_this)->id, 4) ]);
		sprintf(simtmp, "%d", ((P0 *)_this)->recieve_order.start); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->recieve_order.end); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->recieve_order.size); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 51: // STATE 21 - problem1.pml:67 - [((recieve_order.size!=0))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][21] = 1;
		if (!((((P0 *)_this)->recieve_order.size!=0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 52: // STATE 22 - problem1.pml:67 - [order_queue!recieve_order.start,recieve_order.end,recieve_order.size] (0:0:0 - 1)
		IfNotBlocked
		reached[0][22] = 1;
		if (q_full(((P0 *)_this)->order_queue))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", ((P0 *)_this)->order_queue);
		sprintf(simtmp, "%d", ((P0 *)_this)->recieve_order.start); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->recieve_order.end); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->recieve_order.size); strcat(simvals, simtmp);		}
#endif
		
		qsend(((P0 *)_this)->order_queue, 0, ((P0 *)_this)->recieve_order.start, ((P0 *)_this)->recieve_order.end, ((P0 *)_this)->recieve_order.size, 3);
		_m = 2; goto P999; /* 0 */
	case 53: // STATE 28 - problem1.pml:161 - [((isMoving||!(isFree)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][28] = 1;
		if (!((((int)((P0 *)_this)->isMoving)|| !(((int)((P0 *)_this)->isFree)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 54: // STATE 29 - problem1.pml:85 - [((((current_station==destination)&&(destination==current_order.end))&&!(isMoving)))] (94:0:4 - 1)
		IfNotBlocked
		reached[0][29] = 1;
		if (!((((((P0 *)_this)->current_station==((P0 *)_this)->destination)&&(((P0 *)_this)->destination==((P0 *)_this)->current_order.end))&& !(((int)((P0 *)_this)->isMoving)))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: isMoving */  (trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->isMoving;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->isMoving = 0;
		/* merge: current_cap = (current_cap-current_order.size)(94, 30, 94) */
		reached[0][30] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->current_cap;
		((P0 *)_this)->current_cap = (((P0 *)_this)->current_cap-((P0 *)_this)->current_order.size);
#ifdef VAR_RANGES
		logval("Shuttle:current_cap", ((P0 *)_this)->current_cap);
#endif
		;
		/* merge: isFree = 1(94, 31, 94) */
		reached[0][31] = 1;
		(trpt+1)->bup.ovals[2] = ((int)((P0 *)_this)->isFree);
		((P0 *)_this)->isFree = 1;
#ifdef VAR_RANGES
		logval("Shuttle:isFree", ((int)((P0 *)_this)->isFree));
#endif
		;
		/* merge: isMoving = 0(94, 32, 94) */
		reached[0][32] = 1;
		(trpt+1)->bup.ovals[3] = ((int)((P0 *)_this)->isMoving);
		((P0 *)_this)->isMoving = 0;
#ifdef VAR_RANGES
		logval("Shuttle:isMoving", ((int)((P0 *)_this)->isMoving));
#endif
		;
		/* merge: printf('[Shuttle %d] Unloading %d passengers at station %d \\n',id,current_order.size,current_order.end)(94, 33, 94) */
		reached[0][33] = 1;
		Printf("[Shuttle %d] Unloading %d passengers at station %d \n", ((P0 *)_this)->id, ((P0 *)_this)->current_order.size, ((P0 *)_this)->current_order.end);
		/* merge: goto L2(0, 34, 94) */
		reached[0][34] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 55: // STATE 35 - problem1.pml:91 - [((((current_station==destination)&&(destination==current_order.start))&&!(isMoving)))] (43:0:3 - 1)
		IfNotBlocked
		reached[0][35] = 1;
		if (!((((((P0 *)_this)->current_station==((P0 *)_this)->destination)&&(((P0 *)_this)->destination==((P0 *)_this)->current_order.start))&& !(((int)((P0 *)_this)->isMoving)))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: destination */  (trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->destination;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->destination = 0;
		if (TstOnly) return 1; /* TT */
		/* dead 1: isMoving */  (trpt+1)->bup.ovals[1] = ((P0 *)_this)->isMoving;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->isMoving = 0;
		/* merge: destination = current_order.end(0, 36, 43) */
		reached[0][36] = 1;
		(trpt+1)->bup.ovals[2] = ((P0 *)_this)->destination;
		((P0 *)_this)->destination = ((P0 *)_this)->current_order.end;
#ifdef VAR_RANGES
		logval("Shuttle:destination", ((P0 *)_this)->destination);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 56: // STATE 37 - problem1.pml:44 - [((((current_station+(4/2))%4)>=destination))] (95:0:5 - 1)
		IfNotBlocked
		reached[0][37] = 1;
		if (!((((((P0 *)_this)->current_station+(4/2))%4)>=((P0 *)_this)->destination)))
			continue;
		/* merge: direction = 1(95, 38, 95) */
		reached[0][38] = 1;
		(trpt+1)->bup.ovals = grab_ints(5);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->direction;
		((P0 *)_this)->direction = 1;
#ifdef VAR_RANGES
		logval("Shuttle:direction", ((P0 *)_this)->direction);
#endif
		;
		/* merge: .(goto)(95, 42, 95) */
		reached[0][42] = 1;
		;
		/* merge: current_cap = (current_cap+current_order.size)(95, 44, 95) */
		reached[0][44] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->current_cap;
		((P0 *)_this)->current_cap = (((P0 *)_this)->current_cap+((P0 *)_this)->current_order.size);
#ifdef VAR_RANGES
		logval("Shuttle:current_cap", ((P0 *)_this)->current_cap);
#endif
		;
		/* merge: isFree = 0(95, 45, 95) */
		reached[0][45] = 1;
		(trpt+1)->bup.ovals[2] = ((int)((P0 *)_this)->isFree);
		((P0 *)_this)->isFree = 0;
#ifdef VAR_RANGES
		logval("Shuttle:isFree", ((int)((P0 *)_this)->isFree));
#endif
		;
		/* merge: isMoving = 0(95, 46, 95) */
		reached[0][46] = 1;
		(trpt+1)->bup.ovals[3] = ((int)((P0 *)_this)->isMoving);
		((P0 *)_this)->isMoving = 0;
#ifdef VAR_RANGES
		logval("Shuttle:isMoving", ((int)((P0 *)_this)->isMoving));
#endif
		;
		/* merge: track_distance = 1(95, 47, 95) */
		reached[0][47] = 1;
		(trpt+1)->bup.ovals[4] = ((P0 *)_this)->track_distance;
		((P0 *)_this)->track_distance = 1;
#ifdef VAR_RANGES
		logval("Shuttle:track_distance", ((P0 *)_this)->track_distance);
#endif
		;
		/* merge: printf('[Shuttle %d] Loading %d passengers from station %d \\n',id,current_order.size,current_order.start)(95, 48, 95) */
		reached[0][48] = 1;
		Printf("[Shuttle %d] Loading %d passengers from station %d \n", ((P0 *)_this)->id, ((P0 *)_this)->current_order.size, ((P0 *)_this)->current_order.start);
		/* merge: goto L1(0, 49, 95) */
		reached[0][49] = 1;
		;
		_m = 3; goto P999; /* 8 */
	case 57: // STATE 40 - problem1.pml:45 - [direction = -(1)] (0:95:5 - 1)
		IfNotBlocked
		reached[0][40] = 1;
		(trpt+1)->bup.ovals = grab_ints(5);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->direction;
		((P0 *)_this)->direction =  -(1);
#ifdef VAR_RANGES
		logval("Shuttle:direction", ((P0 *)_this)->direction);
#endif
		;
		/* merge: .(goto)(95, 42, 95) */
		reached[0][42] = 1;
		;
		/* merge: current_cap = (current_cap+current_order.size)(95, 44, 95) */
		reached[0][44] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->current_cap;
		((P0 *)_this)->current_cap = (((P0 *)_this)->current_cap+((P0 *)_this)->current_order.size);
#ifdef VAR_RANGES
		logval("Shuttle:current_cap", ((P0 *)_this)->current_cap);
#endif
		;
		/* merge: isFree = 0(95, 45, 95) */
		reached[0][45] = 1;
		(trpt+1)->bup.ovals[2] = ((int)((P0 *)_this)->isFree);
		((P0 *)_this)->isFree = 0;
#ifdef VAR_RANGES
		logval("Shuttle:isFree", ((int)((P0 *)_this)->isFree));
#endif
		;
		/* merge: isMoving = 0(95, 46, 95) */
		reached[0][46] = 1;
		(trpt+1)->bup.ovals[3] = ((int)((P0 *)_this)->isMoving);
		((P0 *)_this)->isMoving = 0;
#ifdef VAR_RANGES
		logval("Shuttle:isMoving", ((int)((P0 *)_this)->isMoving));
#endif
		;
		/* merge: track_distance = 1(95, 47, 95) */
		reached[0][47] = 1;
		(trpt+1)->bup.ovals[4] = ((P0 *)_this)->track_distance;
		((P0 *)_this)->track_distance = 1;
#ifdef VAR_RANGES
		logval("Shuttle:track_distance", ((P0 *)_this)->track_distance);
#endif
		;
		/* merge: printf('[Shuttle %d] Loading %d passengers from station %d \\n',id,current_order.size,current_order.start)(95, 48, 95) */
		reached[0][48] = 1;
		Printf("[Shuttle %d] Loading %d passengers from station %d \n", ((P0 *)_this)->id, ((P0 *)_this)->current_order.size, ((P0 *)_this)->current_order.start);
		/* merge: goto L1(0, 49, 95) */
		reached[0][49] = 1;
		;
		_m = 3; goto P999; /* 7 */
	case 58: // STATE 44 - problem1.pml:94 - [current_cap = (current_cap+current_order.size)] (0:95:4 - 3)
		IfNotBlocked
		reached[0][44] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->current_cap;
		((P0 *)_this)->current_cap = (((P0 *)_this)->current_cap+((P0 *)_this)->current_order.size);
#ifdef VAR_RANGES
		logval("Shuttle:current_cap", ((P0 *)_this)->current_cap);
#endif
		;
		/* merge: isFree = 0(95, 45, 95) */
		reached[0][45] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P0 *)_this)->isFree);
		((P0 *)_this)->isFree = 0;
#ifdef VAR_RANGES
		logval("Shuttle:isFree", ((int)((P0 *)_this)->isFree));
#endif
		;
		/* merge: isMoving = 0(95, 46, 95) */
		reached[0][46] = 1;
		(trpt+1)->bup.ovals[2] = ((int)((P0 *)_this)->isMoving);
		((P0 *)_this)->isMoving = 0;
#ifdef VAR_RANGES
		logval("Shuttle:isMoving", ((int)((P0 *)_this)->isMoving));
#endif
		;
		/* merge: track_distance = 1(95, 47, 95) */
		reached[0][47] = 1;
		(trpt+1)->bup.ovals[3] = ((P0 *)_this)->track_distance;
		((P0 *)_this)->track_distance = 1;
#ifdef VAR_RANGES
		logval("Shuttle:track_distance", ((P0 *)_this)->track_distance);
#endif
		;
		/* merge: printf('[Shuttle %d] Loading %d passengers from station %d \\n',id,current_order.size,current_order.start)(95, 48, 95) */
		reached[0][48] = 1;
		Printf("[Shuttle %d] Loading %d passengers from station %d \n", ((P0 *)_this)->id, ((P0 *)_this)->current_order.size, ((P0 *)_this)->current_order.start);
		/* merge: goto L1(0, 49, 95) */
		reached[0][49] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 59: // STATE 54 - problem1.pml:104 - [(!(isMoving))] (0:0:1 - 1)
		IfNotBlocked
		reached[0][54] = 1;
		if (!( !(((int)((P0 *)_this)->isMoving))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: isMoving */  (trpt+1)->bup.oval = ((P0 *)_this)->isMoving;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->isMoving = 0;
		_m = 3; goto P999; /* 0 */
	case 60: // STATE 55 - problem1.pml:106 - [((direction==1))] (66:0:2 - 1)
		IfNotBlocked
		reached[0][55] = 1;
		if (!((((P0 *)_this)->direction==1)))
			continue;
		/* merge: next_station = ((current_station+1)%4)(66, 56, 66) */
		reached[0][56] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->next_station;
		((P0 *)_this)->next_station = ((((P0 *)_this)->current_station+1)%4);
#ifdef VAR_RANGES
		logval("Shuttle:next_station", ((P0 *)_this)->next_station);
#endif
		;
		/* merge: .(goto)(66, 60, 66) */
		reached[0][60] = 1;
		;
		/* merge: track_req.direction = direction(66, 61, 66) */
		reached[0][61] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->track_req.direction;
		((P0 *)_this)->track_req.direction = ((P0 *)_this)->direction;
#ifdef VAR_RANGES
		logval("Shuttle:track_req.direction", ((P0 *)_this)->track_req.direction);
#endif
		;
		_m = 3; goto P999; /* 3 */
	case 61: // STATE 57 - problem1.pml:107 - [((direction==-(1)))] (66:0:2 - 1)
		IfNotBlocked
		reached[0][57] = 1;
		if (!((((P0 *)_this)->direction== -(1))))
			continue;
		/* merge: next_station = (((current_station-1)+4)%4)(66, 58, 66) */
		reached[0][58] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->next_station;
		((P0 *)_this)->next_station = (((((P0 *)_this)->current_station-1)+4)%4);
#ifdef VAR_RANGES
		logval("Shuttle:next_station", ((P0 *)_this)->next_station);
#endif
		;
		/* merge: .(goto)(66, 60, 66) */
		reached[0][60] = 1;
		;
		/* merge: track_req.direction = direction(66, 61, 66) */
		reached[0][61] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->track_req.direction;
		((P0 *)_this)->track_req.direction = ((P0 *)_this)->direction;
#ifdef VAR_RANGES
		logval("Shuttle:track_req.direction", ((P0 *)_this)->track_req.direction);
#endif
		;
		_m = 3; goto P999; /* 3 */
	case 62: // STATE 61 - problem1.pml:110 - [track_req.direction = direction] (0:66:1 - 3)
		IfNotBlocked
		reached[0][61] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->track_req.direction;
		((P0 *)_this)->track_req.direction = ((P0 *)_this)->direction;
#ifdef VAR_RANGES
		logval("Shuttle:track_req.direction", ((P0 *)_this)->track_req.direction);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 63: // STATE 62 - problem1.pml:112 - [((current_station==(4-1)))] (79:0:2 - 1)
		IfNotBlocked
		reached[0][62] = 1;
		if (!((((P0 *)_this)->current_station==(4-1))))
			continue;
		/* merge: track_req.track = current_station(79, 63, 79) */
		reached[0][63] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->track_req.track;
		((P0 *)_this)->track_req.track = ((P0 *)_this)->current_station;
#ifdef VAR_RANGES
		logval("Shuttle:track_req.track", ((P0 *)_this)->track_req.track);
#endif
		;
		/* merge: .(goto)(79, 67, 79) */
		reached[0][67] = 1;
		;
		/* merge: got_track = 0(79, 68, 79) */
		reached[0][68] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P0 *)_this)->_7_3_got_track);
		((P0 *)_this)->_7_3_got_track = 0;
#ifdef VAR_RANGES
		logval("Shuttle:got_track", ((int)((P0 *)_this)->_7_3_got_track));
#endif
		;
		/* merge: .(goto)(0, 80, 79) */
		reached[0][80] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 64: // STATE 65 - problem1.pml:113 - [track_req.track = ( ((current_station<next_station)) -> (current_station) : (next_station) )] (0:79:2 - 1)
		IfNotBlocked
		reached[0][65] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->track_req.track;
		((P0 *)_this)->track_req.track = ( ((((P0 *)_this)->current_station<((P0 *)_this)->next_station)) ? (((P0 *)_this)->current_station) : (((P0 *)_this)->next_station) );
#ifdef VAR_RANGES
		logval("Shuttle:track_req.track", ((P0 *)_this)->track_req.track);
#endif
		;
		/* merge: .(goto)(79, 67, 79) */
		reached[0][67] = 1;
		;
		/* merge: got_track = 0(79, 68, 79) */
		reached[0][68] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P0 *)_this)->_7_3_got_track);
		((P0 *)_this)->_7_3_got_track = 0;
#ifdef VAR_RANGES
		logval("Shuttle:got_track", ((int)((P0 *)_this)->_7_3_got_track));
#endif
		;
		/* merge: .(goto)(0, 80, 79) */
		reached[0][80] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 65: // STATE 68 - problem1.pml:118 - [got_track = 0] (0:79:1 - 3)
		IfNotBlocked
		reached[0][68] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)_this)->_7_3_got_track);
		((P0 *)_this)->_7_3_got_track = 0;
#ifdef VAR_RANGES
		logval("Shuttle:got_track", ((int)((P0 *)_this)->_7_3_got_track));
#endif
		;
		/* merge: .(goto)(0, 80, 79) */
		reached[0][80] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 66: // STATE 69 - problem1.pml:119 - [shuttleTOrailway!track_req.track,track_req.direction,track_req.shuttle_id] (0:0:0 - 1)
		IfNotBlocked
		reached[0][69] = 1;
		if (q_full(now.shuttleTOrailway))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.shuttleTOrailway);
		sprintf(simtmp, "%d", ((P0 *)_this)->track_req.track); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->track_req.direction); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->track_req.shuttle_id); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.shuttleTOrailway, 0, ((P0 *)_this)->track_req.track, ((P0 *)_this)->track_req.direction, ((P0 *)_this)->track_req.shuttle_id, 3);
		_m = 2; goto P999; /* 0 */
	case 67: // STATE 70 - problem1.pml:120 - [railwayTOshuttle[id]?got_track] (0:0:1 - 1)
		reached[0][70] = 1;
		if (q_len(now.railwayTOshuttle[ Index(((P0 *)_this)->id, 4) ]) == 0) continue;

		XX=1;
		(trpt+1)->bup.oval = ((int)((P0 *)_this)->_7_3_got_track);
		;
		((P0 *)_this)->_7_3_got_track = qrecv(now.railwayTOshuttle[ Index(((P0 *)_this)->id, 4) ], XX-1, 0, 1);
#ifdef VAR_RANGES
		logval("Shuttle:got_track", ((int)((P0 *)_this)->_7_3_got_track));
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.railwayTOshuttle[ Index(((P0 *)_this)->id, 4) ]);
		sprintf(simtmp, "%d", ((int)((P0 *)_this)->_7_3_got_track)); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 68: // STATE 71 - problem1.pml:122 - [(got_track)] (111:0:3 - 1)
		IfNotBlocked
		reached[0][71] = 1;
		if (!(((int)((P0 *)_this)->_7_3_got_track)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: _7_3_got_track */  (trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->_7_3_got_track;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->_7_3_got_track = 0;
		/* merge: track_distance = 1(111, 72, 111) */
		reached[0][72] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->track_distance;
		((P0 *)_this)->track_distance = 1;
#ifdef VAR_RANGES
		logval("Shuttle:track_distance", ((P0 *)_this)->track_distance);
#endif
		;
		/* merge: isMoving = 1(111, 73, 111) */
		reached[0][73] = 1;
		(trpt+1)->bup.ovals[2] = ((int)((P0 *)_this)->isMoving);
		((P0 *)_this)->isMoving = 1;
#ifdef VAR_RANGES
		logval("Shuttle:isMoving", ((int)((P0 *)_this)->isMoving));
#endif
		;
		/* merge: goto :b1(0, 74, 111) */
		reached[0][74] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 69: // STATE 82 - problem1.pml:127 - [((isMoving&&(track_distance>0)))] (111:0:1 - 1)
		IfNotBlocked
		reached[0][82] = 1;
		if (!((((int)((P0 *)_this)->isMoving)&&(((P0 *)_this)->track_distance>0))))
			continue;
		/* merge: track_distance = (track_distance-1)(111, 83, 111) */
		reached[0][83] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->track_distance;
		((P0 *)_this)->track_distance = (((P0 *)_this)->track_distance-1);
#ifdef VAR_RANGES
		logval("Shuttle:track_distance", ((P0 *)_this)->track_distance);
#endif
		;
		/* merge: printf('[Shuttle %d] Moving from station %d to station %d\\n',id,current_station,next_station)(111, 84, 111) */
		reached[0][84] = 1;
		Printf("[Shuttle %d] Moving from station %d to station %d\n", ((P0 *)_this)->id, ((P0 *)_this)->current_station, ((P0 *)_this)->next_station);
		/* merge: .(goto)(0, 96, 111) */
		reached[0][96] = 1;
		;
		/* merge: .(goto)(0, 112, 111) */
		reached[0][112] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 70: // STATE 85 - problem1.pml:130 - [((isMoving&&(track_distance==0)))] (91:0:2 - 1)
		IfNotBlocked
		reached[0][85] = 1;
		if (!((((int)((P0 *)_this)->isMoving)&&(((P0 *)_this)->track_distance==0))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: isMoving */  (trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->isMoving;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->isMoving = 0;
		/* merge: current_station = next_station(0, 86, 91) */
		reached[0][86] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->current_station;
		((P0 *)_this)->current_station = ((P0 *)_this)->next_station;
#ifdef VAR_RANGES
		logval("Shuttle:current_station", ((P0 *)_this)->current_station);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 71: // STATE 87 - problem1.pml:133 - [((direction==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][87] = 1;
		if (!((((P0 *)_this)->direction==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 72: // STATE 88 - problem1.pml:133 - [track_clockwise[track_req.track] = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][88] = 1;
		(trpt+1)->bup.oval = ((int)now.track_clockwise[ Index(((P0 *)_this)->track_req.track, 4) ]);
		now.track_clockwise[ Index(((P0 *)_this)->track_req.track, 4) ] = 0;
#ifdef VAR_RANGES
		logval("track_clockwise[Shuttle:track_req.track]", ((int)now.track_clockwise[ Index(((P0 *)_this)->track_req.track, 4) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 73: // STATE 89 - problem1.pml:134 - [((direction==-(1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][89] = 1;
		if (!((((P0 *)_this)->direction== -(1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 74: // STATE 90 - problem1.pml:134 - [track_anti_clockwise[track_req.track] = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][90] = 1;
		(trpt+1)->bup.oval = ((int)now.track_anti_clockwise[ Index(((P0 *)_this)->track_req.track, 4) ]);
		now.track_anti_clockwise[ Index(((P0 *)_this)->track_req.track, 4) ] = 0;
#ifdef VAR_RANGES
		logval("track_anti_clockwise[Shuttle:track_req.track]", ((int)now.track_anti_clockwise[ Index(((P0 *)_this)->track_req.track, 4) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 75: // STATE 93 - problem1.pml:136 - [isMoving = 0] (0:94:1 - 3)
		IfNotBlocked
		reached[0][93] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)_this)->isMoving);
		((P0 *)_this)->isMoving = 0;
#ifdef VAR_RANGES
		logval("Shuttle:isMoving", ((int)((P0 *)_this)->isMoving));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 76: // STATE 98 - problem1.pml:162 - [((isFree&&nempty(order_queue)))] (0:0:1 - 1)
		IfNotBlocked
		reached[0][98] = 1;
		if (!((((int)((P0 *)_this)->isFree)&&(q_len(((P0 *)_this)->order_queue)>0))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: isFree */  (trpt+1)->bup.oval = ((P0 *)_this)->isFree;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->isFree = 0;
		_m = 3; goto P999; /* 0 */
	case 77: // STATE 99 - problem1.pml:74 - [order_queue?current_order.start,current_order.end,current_order.size] (0:0:3 - 1)
		reached[0][99] = 1;
		if (q_len(((P0 *)_this)->order_queue) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->current_order.start;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->current_order.end;
		(trpt+1)->bup.ovals[2] = ((P0 *)_this)->current_order.size;
		;
		((P0 *)_this)->current_order.start = qrecv(((P0 *)_this)->order_queue, XX-1, 0, 0);
#ifdef VAR_RANGES
		logval("Shuttle:current_order.start", ((P0 *)_this)->current_order.start);
#endif
		;
		((P0 *)_this)->current_order.end = qrecv(((P0 *)_this)->order_queue, XX-1, 1, 0);
#ifdef VAR_RANGES
		logval("Shuttle:current_order.end", ((P0 *)_this)->current_order.end);
#endif
		;
		((P0 *)_this)->current_order.size = qrecv(((P0 *)_this)->order_queue, XX-1, 2, 1);
#ifdef VAR_RANGES
		logval("Shuttle:current_order.size", ((P0 *)_this)->current_order.size);
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", ((P0 *)_this)->order_queue);
		sprintf(simtmp, "%d", ((P0 *)_this)->current_order.start); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->current_order.end); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->current_order.size); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 78: // STATE 100 - problem1.pml:75 - [isFree = 0] (0:109:2 - 1)
		IfNotBlocked
		reached[0][100] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P0 *)_this)->isFree);
		((P0 *)_this)->isFree = 0;
#ifdef VAR_RANGES
		logval("Shuttle:isFree", ((int)((P0 *)_this)->isFree));
#endif
		;
		/* merge: destination = current_order.start(109, 101, 109) */
		reached[0][101] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->destination;
		((P0 *)_this)->destination = ((P0 *)_this)->current_order.start;
#ifdef VAR_RANGES
		logval("Shuttle:destination", ((P0 *)_this)->destination);
#endif
		;
		/* merge: printf('[Shuttle %d] Starting new order from station %d to station %d\\n',id,current_order.start,current_order.end)(109, 102, 109) */
		reached[0][102] = 1;
		Printf("[Shuttle %d] Starting new order from station %d to station %d\n", ((P0 *)_this)->id, ((P0 *)_this)->current_order.start, ((P0 *)_this)->current_order.end);
		_m = 3; goto P999; /* 2 */
	case 79: // STATE 103 - problem1.pml:44 - [((((current_station+(4/2))%4)>=destination))] (111:0:1 - 1)
		IfNotBlocked
		reached[0][103] = 1;
		if (!((((((P0 *)_this)->current_station+(4/2))%4)>=((P0 *)_this)->destination)))
			continue;
		/* merge: direction = 1(0, 104, 111) */
		reached[0][104] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->direction;
		((P0 *)_this)->direction = 1;
#ifdef VAR_RANGES
		logval("Shuttle:direction", ((P0 *)_this)->direction);
#endif
		;
		/* merge: .(goto)(0, 108, 111) */
		reached[0][108] = 1;
		;
		/* merge: .(goto)(0, 112, 111) */
		reached[0][112] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 80: // STATE 106 - problem1.pml:45 - [direction = -(1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][106] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->direction;
		((P0 *)_this)->direction =  -(1);
#ifdef VAR_RANGES
		logval("Shuttle:direction", ((P0 *)_this)->direction);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 81: // STATE 114 - problem1.pml:164 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][114] = 1;
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


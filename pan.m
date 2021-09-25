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
	case 3: // STATE 1 - problem1-retry.pml:91 - [(run Shuttle(4,2,1,0))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][1] = 1;
		if (!(addproc(II, 1, 1, 4, 2, 1, 0, 0, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 2 - problem1-retry.pml:92 - [(run Shuttle(2,4,1,1))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][2] = 1;
		if (!(addproc(II, 1, 1, 2, 4, 1, 1, 0, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 5: // STATE 3 - problem1-retry.pml:93 - [(run Shuttle(5,1,2,2))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][3] = 1;
		if (!(addproc(II, 1, 1, 5, 1, 2, 2, 0, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 6: // STATE 4 - problem1-retry.pml:94 - [(run Shuttle(3,3,3,3))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][4] = 1;
		if (!(addproc(II, 1, 1, 3, 3, 3, 3, 0, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 5 - problem1-retry.pml:95 - [] (0:13:6 - 1)
		IfNotBlocked
		reached[2][5] = 1;
		;
		/* merge: first.size = 4(13, 6, 13) */
		reached[2][6] = 1;
		(trpt+1)->bup.ovals = grab_ints(6);
		(trpt+1)->bup.ovals[0] = ((P2 *)_this)->_7_3_first.size;
		((P2 *)_this)->_7_3_first.size = 4;
#ifdef VAR_RANGES
		logval(":init::first.size", ((P2 *)_this)->_7_3_first.size);
#endif
		;
		/* merge: first.start = 1(13, 7, 13) */
		reached[2][7] = 1;
		(trpt+1)->bup.ovals[1] = ((P2 *)_this)->_7_3_first.start;
		((P2 *)_this)->_7_3_first.start = 1;
#ifdef VAR_RANGES
		logval(":init::first.start", ((P2 *)_this)->_7_3_first.start);
#endif
		;
		/* merge: first.end = 3(13, 8, 13) */
		reached[2][8] = 1;
		(trpt+1)->bup.ovals[2] = ((P2 *)_this)->_7_3_first.end;
		((P2 *)_this)->_7_3_first.end = 3;
#ifdef VAR_RANGES
		logval(":init::first.end", ((P2 *)_this)->_7_3_first.end);
#endif
		;
		/* merge: (13, 9, 13) */
		reached[2][9] = 1;
		;
		/* merge: second.size = 2(13, 10, 13) */
		reached[2][10] = 1;
		(trpt+1)->bup.ovals[3] = ((P2 *)_this)->_7_3_second.size;
		((P2 *)_this)->_7_3_second.size = 2;
#ifdef VAR_RANGES
		logval(":init::second.size", ((P2 *)_this)->_7_3_second.size);
#endif
		;
		/* merge: second.start = 2(13, 11, 13) */
		reached[2][11] = 1;
		(trpt+1)->bup.ovals[4] = ((P2 *)_this)->_7_3_second.start;
		((P2 *)_this)->_7_3_second.start = 2;
#ifdef VAR_RANGES
		logval(":init::second.start", ((P2 *)_this)->_7_3_second.start);
#endif
		;
		/* merge: second.end = 3(13, 12, 13) */
		reached[2][12] = 1;
		(trpt+1)->bup.ovals[5] = ((P2 *)_this)->_7_3_second.end;
		((P2 *)_this)->_7_3_second.end = 3;
#ifdef VAR_RANGES
		logval(":init::second.end", ((P2 *)_this)->_7_3_second.end);
#endif
		;
		_m = 3; goto P999; /* 7 */
	case 8: // STATE 13 - problem1-retry.pml:97 - [(run ShuttleManagementSystem(first.start,first.end,first.size,second.start,second.end,second.size))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][13] = 1;
		if (!(addproc(II, 1, 0, ((P2 *)_this)->_7_3_first.start, ((P2 *)_this)->_7_3_first.end, ((P2 *)_this)->_7_3_first.size, ((P2 *)_this)->_7_3_second.start, ((P2 *)_this)->_7_3_second.end, ((P2 *)_this)->_7_3_second.size)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 9: // STATE 15 - problem1-retry.pml:99 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[2][15] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Shuttle */
	case 10: // STATE 1 - problem1-retry.pml:58 - [managementToShuttle[id]?order.start,order.end,order.size] (0:0:3 - 1)
		reached[1][1] = 1;
		if (q_len(now.managementToShuttle[ Index(((P1 *)_this)->id, 4) ]) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->order.start;
		(trpt+1)->bup.ovals[1] = ((P1 *)_this)->order.end;
		(trpt+1)->bup.ovals[2] = ((P1 *)_this)->order.size;
		;
		((P1 *)_this)->order.start = qrecv(now.managementToShuttle[ Index(((P1 *)_this)->id, 4) ], XX-1, 0, 0);
#ifdef VAR_RANGES
		logval("Shuttle:order.start", ((P1 *)_this)->order.start);
#endif
		;
		((P1 *)_this)->order.end = qrecv(now.managementToShuttle[ Index(((P1 *)_this)->id, 4) ], XX-1, 1, 0);
#ifdef VAR_RANGES
		logval("Shuttle:order.end", ((P1 *)_this)->order.end);
#endif
		;
		((P1 *)_this)->order.size = qrecv(now.managementToShuttle[ Index(((P1 *)_this)->id, 4) ], XX-1, 2, 1);
#ifdef VAR_RANGES
		logval("Shuttle:order.size", ((P1 *)_this)->order.size);
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.managementToShuttle[ Index(((P1 *)_this)->id, 4) ]);
		sprintf(simtmp, "%d", ((P1 *)_this)->order.start); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P1 *)_this)->order.end); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P1 *)_this)->order.size); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 11: // STATE 2 - problem1-retry.pml:60 - [currentPosition = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][2] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->currentPosition;
		((P1 *)_this)->currentPosition = 0;
#ifdef VAR_RANGES
		logval("Shuttle:currentPosition", ((P1 *)_this)->currentPosition);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 12: // STATE 3 - problem1-retry.pml:61 - [(onTrack)] (14:0:2 - 1)
		IfNotBlocked
		reached[1][3] = 1;
		if (!(((int)((P1 *)_this)->onTrack)))
			continue;
		/* merge: currentPosition = nextStation(14, 4, 14) */
		reached[1][4] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->currentPosition;
		((P1 *)_this)->currentPosition = ((P1 *)_this)->nextStation;
#ifdef VAR_RANGES
		logval("Shuttle:currentPosition", ((P1 *)_this)->currentPosition);
#endif
		;
		/* merge: .(goto)(14, 8, 14) */
		reached[1][8] = 1;
		;
		/* merge: distance = 0(14, 9, 14) */
		reached[1][9] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)_this)->distance;
		((P1 *)_this)->distance = 0;
#ifdef VAR_RANGES
		logval("Shuttle:distance", ((P1 *)_this)->distance);
#endif
		;
		_m = 3; goto P999; /* 3 */
	case 13: // STATE 6 - problem1-retry.pml:62 - [currentPosition = currentStation] (0:14:2 - 1)
		IfNotBlocked
		reached[1][6] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->currentPosition;
		((P1 *)_this)->currentPosition = ((P1 *)_this)->currentStation;
#ifdef VAR_RANGES
		logval("Shuttle:currentPosition", ((P1 *)_this)->currentPosition);
#endif
		;
		/* merge: .(goto)(14, 8, 14) */
		reached[1][8] = 1;
		;
		/* merge: distance = 0(14, 9, 14) */
		reached[1][9] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)_this)->distance;
		((P1 *)_this)->distance = 0;
#ifdef VAR_RANGES
		logval("Shuttle:distance", ((P1 *)_this)->distance);
#endif
		;
		_m = 3; goto P999; /* 2 */
	case 14: // STATE 9 - problem1-retry.pml:65 - [distance = 0] (0:14:1 - 3)
		IfNotBlocked
		reached[1][9] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->distance;
		((P1 *)_this)->distance = 0;
#ifdef VAR_RANGES
		logval("Shuttle:distance", ((P1 *)_this)->distance);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 15: // STATE 10 - problem1-retry.pml:66 - [((currentPosition>order.start))] (20:0:1 - 1)
		IfNotBlocked
		reached[1][10] = 1;
		if (!((((P1 *)_this)->currentPosition>((P1 *)_this)->order.start)))
			continue;
		/* merge: distance = (currentPosition-order.start)(0, 11, 20) */
		reached[1][11] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->distance;
		((P1 *)_this)->distance = (((P1 *)_this)->currentPosition-((P1 *)_this)->order.start);
#ifdef VAR_RANGES
		logval("Shuttle:distance", ((P1 *)_this)->distance);
#endif
		;
		/* merge: .(goto)(0, 15, 20) */
		reached[1][15] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 16: // STATE 13 - problem1-retry.pml:67 - [distance = (order.start-currentPosition)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][13] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->distance;
		((P1 *)_this)->distance = (((P1 *)_this)->order.start-((P1 *)_this)->currentPosition);
#ifdef VAR_RANGES
		logval("Shuttle:distance", ((P1 *)_this)->distance);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 17: // STATE 16 - problem1-retry.pml:70 - [((distance>(4/2)))] (31:0:1 - 1)
		IfNotBlocked
		reached[1][16] = 1;
		if (!((((P1 *)_this)->distance>(4/2))))
			continue;
		/* merge: distance = (4-distance)(31, 17, 31) */
		reached[1][17] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->distance;
		((P1 *)_this)->distance = (4-((P1 *)_this)->distance);
#ifdef VAR_RANGES
		logval("Shuttle:distance", ((P1 *)_this)->distance);
#endif
		;
		/* merge: .(goto)(31, 21, 31) */
		reached[1][21] = 1;
		;
		/* merge: (31, 22, 31) */
		reached[1][22] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 18: // STATE 19 - problem1-retry.pml:71 - [distance = distance] (0:31:1 - 1)
		IfNotBlocked
		reached[1][19] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->distance;
		((P1 *)_this)->distance = ((P1 *)_this)->distance;
#ifdef VAR_RANGES
		logval("Shuttle:distance", ((P1 *)_this)->distance);
#endif
		;
		/* merge: .(goto)(31, 21, 31) */
		reached[1][21] = 1;
		;
		/* merge: (31, 22, 31) */
		reached[1][22] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 19: // STATE 22 - problem1-retry.pml:74 - [] (0:31:0 - 3)
		IfNotBlocked
		reached[1][22] = 1;
		;
		_m = 3; goto P999; /* 0 */
	case 20: // STATE 23 - problem1-retry.pml:75 - [((((currentLoad+order.size)<=capacity)&&(distance<=2)))] (33:0:4 - 1)
		IfNotBlocked
		reached[1][23] = 1;
		if (!((((((P1 *)_this)->currentLoad+((P1 *)_this)->order.size)<=((P1 *)_this)->capacity)&&(((P1 *)_this)->distance<=2))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: distance */  (trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->distance;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->distance = 0;
		/* merge: offer.id = id(33, 24, 33) */
		reached[1][24] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)_this)->offer.id;
		((P1 *)_this)->offer.id = ((P1 *)_this)->id;
#ifdef VAR_RANGES
		logval("Shuttle:offer.id", ((P1 *)_this)->offer.id);
#endif
		;
		/* merge: offer.charge = charge(33, 25, 33) */
		reached[1][25] = 1;
		(trpt+1)->bup.ovals[2] = ((P1 *)_this)->offer.charge;
		((P1 *)_this)->offer.charge = ((P1 *)_this)->charge;
#ifdef VAR_RANGES
		logval("Shuttle:offer.charge", ((P1 *)_this)->offer.charge);
#endif
		;
		/* merge: offer.refuse = 0(33, 26, 33) */
		reached[1][26] = 1;
		(trpt+1)->bup.ovals[3] = ((int)((P1 *)_this)->offer.refuse);
		((P1 *)_this)->offer.refuse = 0;
#ifdef VAR_RANGES
		logval("Shuttle:offer.refuse", ((int)((P1 *)_this)->offer.refuse));
#endif
		;
		/* merge: .(goto)(0, 32, 33) */
		reached[1][32] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 21: // STATE 28 - problem1-retry.pml:78 - [offer.id = id] (0:33:3 - 1)
		IfNotBlocked
		reached[1][28] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->offer.id;
		((P1 *)_this)->offer.id = ((P1 *)_this)->id;
#ifdef VAR_RANGES
		logval("Shuttle:offer.id", ((P1 *)_this)->offer.id);
#endif
		;
		/* merge: offer.charge = charge(33, 29, 33) */
		reached[1][29] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)_this)->offer.charge;
		((P1 *)_this)->offer.charge = ((P1 *)_this)->charge;
#ifdef VAR_RANGES
		logval("Shuttle:offer.charge", ((P1 *)_this)->offer.charge);
#endif
		;
		/* merge: offer.refuse = 1(33, 30, 33) */
		reached[1][30] = 1;
		(trpt+1)->bup.ovals[2] = ((int)((P1 *)_this)->offer.refuse);
		((P1 *)_this)->offer.refuse = 1;
#ifdef VAR_RANGES
		logval("Shuttle:offer.refuse", ((int)((P1 *)_this)->offer.refuse));
#endif
		;
		/* merge: .(goto)(0, 32, 33) */
		reached[1][32] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 22: // STATE 33 - problem1-retry.pml:80 - [shuttleToManagement!offer.id,offer.charge,offer.refuse] (0:0:0 - 3)
		IfNotBlocked
		reached[1][33] = 1;
		if (q_full(now.shuttleToManagement))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.shuttleToManagement);
		sprintf(simtmp, "%d", ((P1 *)_this)->offer.id); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P1 *)_this)->offer.charge); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P1 *)_this)->offer.refuse)); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.shuttleToManagement, 0, ((P1 *)_this)->offer.id, ((P1 *)_this)->offer.charge, ((int)((P1 *)_this)->offer.refuse), 3);
		_m = 2; goto P999; /* 0 */
	case 23: // STATE 34 - problem1-retry.pml:81 - [managementToShuttle[id]?order.start,order.end,order.size] (0:0:3 - 1)
		reached[1][34] = 1;
		if (q_len(now.managementToShuttle[ Index(((P1 *)_this)->id, 4) ]) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->order.start;
		(trpt+1)->bup.ovals[1] = ((P1 *)_this)->order.end;
		(trpt+1)->bup.ovals[2] = ((P1 *)_this)->order.size;
		;
		((P1 *)_this)->order.start = qrecv(now.managementToShuttle[ Index(((P1 *)_this)->id, 4) ], XX-1, 0, 0);
#ifdef VAR_RANGES
		logval("Shuttle:order.start", ((P1 *)_this)->order.start);
#endif
		;
		((P1 *)_this)->order.end = qrecv(now.managementToShuttle[ Index(((P1 *)_this)->id, 4) ], XX-1, 1, 0);
#ifdef VAR_RANGES
		logval("Shuttle:order.end", ((P1 *)_this)->order.end);
#endif
		;
		((P1 *)_this)->order.size = qrecv(now.managementToShuttle[ Index(((P1 *)_this)->id, 4) ], XX-1, 2, 1);
#ifdef VAR_RANGES
		logval("Shuttle:order.size", ((P1 *)_this)->order.size);
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.managementToShuttle[ Index(((P1 *)_this)->id, 4) ]);
		sprintf(simtmp, "%d", ((P1 *)_this)->order.start); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P1 *)_this)->order.end); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P1 *)_this)->order.size); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 24: // STATE 35 - problem1-retry.pml:83 - [((order.size!=0))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][35] = 1;
		if (!((((P1 *)_this)->order.size!=0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 25: // STATE 36 - problem1-retry.pml:83 - [orders!order.start,order.end,order.size] (0:0:0 - 1)
		IfNotBlocked
		reached[1][36] = 1;
		if (q_full(((P1 *)_this)->orders))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", ((P1 *)_this)->orders);
		sprintf(simtmp, "%d", ((P1 *)_this)->order.start); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P1 *)_this)->order.end); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P1 *)_this)->order.size); strcat(simvals, simtmp);		}
#endif
		
		qsend(((P1 *)_this)->orders, 0, ((P1 *)_this)->order.start, ((P1 *)_this)->order.end, ((P1 *)_this)->order.size, 3);
		_m = 2; goto P999; /* 0 */
	case 26: // STATE 44 - problem1-retry.pml:87 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][44] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC ShuttleManagementSystem */
	case 27: // STATE 1 - problem1-retry.pml:21 - [orders[0].start = first.start] (0:59:8 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		(trpt+1)->bup.ovals = grab_ints(8);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->orders[0].start;
		((P0 *)_this)->orders[0].start = ((P0 *)_this)->first.start;
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:orders[0].start", ((P0 *)_this)->orders[0].start);
#endif
		;
		/* merge: orders[0].end = first.end(59, 2, 59) */
		reached[0][2] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->orders[0].end;
		((P0 *)_this)->orders[0].end = ((P0 *)_this)->first.end;
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:orders[0].end", ((P0 *)_this)->orders[0].end);
#endif
		;
		/* merge: orders[0].size = first.size(59, 3, 59) */
		reached[0][3] = 1;
		(trpt+1)->bup.ovals[2] = ((P0 *)_this)->orders[0].size;
		((P0 *)_this)->orders[0].size = ((P0 *)_this)->first.size;
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:orders[0].size", ((P0 *)_this)->orders[0].size);
#endif
		;
		/* merge: orders[1].start = second.start(59, 4, 59) */
		reached[0][4] = 1;
		(trpt+1)->bup.ovals[3] = ((P0 *)_this)->orders[1].start;
		((P0 *)_this)->orders[1].start = ((P0 *)_this)->second.start;
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:orders[1].start", ((P0 *)_this)->orders[1].start);
#endif
		;
		/* merge: orders[1].end = second.end(59, 5, 59) */
		reached[0][5] = 1;
		(trpt+1)->bup.ovals[4] = ((P0 *)_this)->orders[1].end;
		((P0 *)_this)->orders[1].end = ((P0 *)_this)->second.end;
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:orders[1].end", ((P0 *)_this)->orders[1].end);
#endif
		;
		/* merge: orders[1].size = second.size(59, 6, 59) */
		reached[0][6] = 1;
		(trpt+1)->bup.ovals[5] = ((P0 *)_this)->orders[1].size;
		((P0 *)_this)->orders[1].size = ((P0 *)_this)->second.size;
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:orders[1].size", ((P0 *)_this)->orders[1].size);
#endif
		;
		/* merge: i = 0(59, 7, 59) */
		reached[0][7] = 1;
		(trpt+1)->bup.ovals[6] = ((P0 *)_this)->i;
		((P0 *)_this)->i = 0;
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:i", ((P0 *)_this)->i);
#endif
		;
		/* merge: i = 0(59, 8, 59) */
		reached[0][8] = 1;
		(trpt+1)->bup.ovals[7] = ((P0 *)_this)->i;
		((P0 *)_this)->i = 0;
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:i", ((P0 *)_this)->i);
#endif
		;
		/* merge: .(goto)(0, 60, 59) */
		reached[0][60] = 1;
		;
		_m = 3; goto P999; /* 8 */
	case 28: // STATE 9 - problem1-retry.pml:24 - [((i<=(2-1)))] (18:0:2 - 1)
		IfNotBlocked
		reached[0][9] = 1;
		if (!((((P0 *)_this)->i<=(2-1))))
			continue;
		/* merge: printf('[Management System]: Broadcasting New Order %d\\n',i)(18, 10, 18) */
		reached[0][10] = 1;
		Printf("[Management System]: Broadcasting New Order %d\n", ((P0 *)_this)->i);
		/* merge: j = 0(18, 11, 18) */
		reached[0][11] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->_5_1_j;
		((P0 *)_this)->_5_1_j = 0;
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:j", ((P0 *)_this)->_5_1_j);
#endif
		;
		/* merge: j = 0(18, 12, 18) */
		reached[0][12] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->_5_1_j;
		((P0 *)_this)->_5_1_j = 0;
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:j", ((P0 *)_this)->_5_1_j);
#endif
		;
		/* merge: .(goto)(0, 19, 18) */
		reached[0][19] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 29: // STATE 13 - problem1-retry.pml:27 - [((j<=(4-1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][13] = 1;
		if (!((((P0 *)_this)->_5_1_j<=(4-1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 30: // STATE 14 - problem1-retry.pml:28 - [managementToShuttle[j]!orders[i].start,orders[i].end,orders[i].size] (0:0:0 - 1)
		IfNotBlocked
		reached[0][14] = 1;
		if (q_full(now.managementToShuttle[ Index(((P0 *)_this)->_5_1_j, 4) ]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.managementToShuttle[ Index(((P0 *)_this)->_5_1_j, 4) ]);
		sprintf(simtmp, "%d", ((P0 *)_this)->orders[ Index(((P0 *)_this)->i, 2) ].start); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->orders[ Index(((P0 *)_this)->i, 2) ].end); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->orders[ Index(((P0 *)_this)->i, 2) ].size); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.managementToShuttle[ Index(((P0 *)_this)->_5_1_j, 4) ], 0, ((P0 *)_this)->orders[ Index(((P0 *)_this)->i, 2) ].start, ((P0 *)_this)->orders[ Index(((P0 *)_this)->i, 2) ].end, ((P0 *)_this)->orders[ Index(((P0 *)_this)->i, 2) ].size, 3);
		_m = 2; goto P999; /* 0 */
	case 31: // STATE 15 - problem1-retry.pml:27 - [j = (j+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][15] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->_5_1_j;
		((P0 *)_this)->_5_1_j = (((P0 *)_this)->_5_1_j+1);
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:j", ((P0 *)_this)->_5_1_j);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 32: // STATE 21 - problem1-retry.pml:31 - [minCharge = 100] (0:37:3 - 3)
		IfNotBlocked
		reached[0][21] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->_5_1_minCharge;
		((P0 *)_this)->_5_1_minCharge = 100;
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:minCharge", ((P0 *)_this)->_5_1_minCharge);
#endif
		;
		/* merge: assignedId = 0(37, 22, 37) */
		reached[0][22] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->_5_1_assignedId;
		((P0 *)_this)->_5_1_assignedId = 0;
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:assignedId", ((P0 *)_this)->_5_1_assignedId);
#endif
		;
		/* merge: j = 0(37, 23, 37) */
		reached[0][23] = 1;
		(trpt+1)->bup.ovals[2] = ((P0 *)_this)->_5_1_j;
		((P0 *)_this)->_5_1_j = 0;
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:j", ((P0 *)_this)->_5_1_j);
#endif
		;
		/* merge: .(goto)(0, 38, 37) */
		reached[0][38] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 33: // STATE 24 - problem1-retry.pml:32 - [((j<=(4-1)))] (26:0:0 - 1)
		IfNotBlocked
		reached[0][24] = 1;
		if (!((((P0 *)_this)->_5_1_j<=(4-1))))
			continue;
		/* merge: (0, 25, 26) */
		reached[0][25] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 34: // STATE 26 - problem1-retry.pml:34 - [shuttleToManagement?offer.id,offer.charge,offer.refuse] (0:0:3 - 1)
		reached[0][26] = 1;
		if (q_len(now.shuttleToManagement) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->_5_1_2_offer.id;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->_5_1_2_offer.charge;
		(trpt+1)->bup.ovals[2] = ((int)((P0 *)_this)->_5_1_2_offer.refuse);
		;
		((P0 *)_this)->_5_1_2_offer.id = qrecv(now.shuttleToManagement, XX-1, 0, 0);
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:offer.id", ((P0 *)_this)->_5_1_2_offer.id);
#endif
		;
		((P0 *)_this)->_5_1_2_offer.charge = qrecv(now.shuttleToManagement, XX-1, 1, 0);
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:offer.charge", ((P0 *)_this)->_5_1_2_offer.charge);
#endif
		;
		((P0 *)_this)->_5_1_2_offer.refuse = qrecv(now.shuttleToManagement, XX-1, 2, 1);
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:offer.refuse", ((int)((P0 *)_this)->_5_1_2_offer.refuse));
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.shuttleToManagement);
		sprintf(simtmp, "%d", ((P0 *)_this)->_5_1_2_offer.id); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->_5_1_2_offer.charge); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P0 *)_this)->_5_1_2_offer.refuse)); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 35: // STATE 27 - problem1-retry.pml:36 - [(((offer.charge<minCharge)&&!(offer.refuse)))] (37:0:4 - 1)
		IfNotBlocked
		reached[0][27] = 1;
		if (!(((((P0 *)_this)->_5_1_2_offer.charge<((P0 *)_this)->_5_1_minCharge)&& !(((int)((P0 *)_this)->_5_1_2_offer.refuse)))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: _5_1_minCharge */  (trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->_5_1_minCharge;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->_5_1_minCharge = 0;
		/* merge: minCharge = offer.charge(37, 28, 37) */
		reached[0][28] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->_5_1_minCharge;
		((P0 *)_this)->_5_1_minCharge = ((P0 *)_this)->_5_1_2_offer.charge;
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:minCharge", ((P0 *)_this)->_5_1_minCharge);
#endif
		;
		/* merge: assignedId = offer.id(37, 29, 37) */
		reached[0][29] = 1;
		(trpt+1)->bup.ovals[2] = ((P0 *)_this)->_5_1_assignedId;
		((P0 *)_this)->_5_1_assignedId = ((P0 *)_this)->_5_1_2_offer.id;
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:assignedId", ((P0 *)_this)->_5_1_assignedId);
#endif
		;
		/* merge: .(goto)(37, 33, 37) */
		reached[0][33] = 1;
		;
		/* merge: j = (j+1)(37, 34, 37) */
		reached[0][34] = 1;
		(trpt+1)->bup.ovals[3] = ((P0 *)_this)->_5_1_j;
		((P0 *)_this)->_5_1_j = (((P0 *)_this)->_5_1_j+1);
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:j", ((P0 *)_this)->_5_1_j);
#endif
		;
		/* merge: .(goto)(0, 38, 37) */
		reached[0][38] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 36: // STATE 31 - problem1-retry.pml:37 - [(1)] (37:0:1 - 1)
		IfNotBlocked
		reached[0][31] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(37, 33, 37) */
		reached[0][33] = 1;
		;
		/* merge: j = (j+1)(37, 34, 37) */
		reached[0][34] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->_5_1_j;
		((P0 *)_this)->_5_1_j = (((P0 *)_this)->_5_1_j+1);
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:j", ((P0 *)_this)->_5_1_j);
#endif
		;
		/* merge: .(goto)(0, 38, 37) */
		reached[0][38] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 37: // STATE 34 - problem1-retry.pml:32 - [j = (j+1)] (0:37:1 - 3)
		IfNotBlocked
		reached[0][34] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->_5_1_j;
		((P0 *)_this)->_5_1_j = (((P0 *)_this)->_5_1_j+1);
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:j", ((P0 *)_this)->_5_1_j);
#endif
		;
		/* merge: .(goto)(0, 38, 37) */
		reached[0][38] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 38: // STATE 40 - problem1-retry.pml:40 - [printf('[Management System]: Order %d assigned to Shuttle %d\\n',i,assignedId)] (0:53:1 - 3)
		IfNotBlocked
		reached[0][40] = 1;
		Printf("[Management System]: Order %d assigned to Shuttle %d\n", ((P0 *)_this)->i, ((P0 *)_this)->_5_1_assignedId);
		/* merge: j = 0(53, 41, 53) */
		reached[0][41] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->_5_1_j;
		((P0 *)_this)->_5_1_j = 0;
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:j", ((P0 *)_this)->_5_1_j);
#endif
		;
		/* merge: .(goto)(0, 54, 53) */
		reached[0][54] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 39: // STATE 42 - problem1-retry.pml:41 - [((j<=(4-1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][42] = 1;
		if (!((((P0 *)_this)->_5_1_j<=(4-1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 40: // STATE 43 - problem1-retry.pml:43 - [((j==assignedId))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][43] = 1;
		if (!((((P0 *)_this)->_5_1_j==((P0 *)_this)->_5_1_assignedId)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 41: // STATE 44 - problem1-retry.pml:43 - [managementToShuttle[j]!orders[i].start,orders[i].end,orders[i].size] (0:0:0 - 1)
		IfNotBlocked
		reached[0][44] = 1;
		if (q_full(now.managementToShuttle[ Index(((P0 *)_this)->_5_1_j, 4) ]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.managementToShuttle[ Index(((P0 *)_this)->_5_1_j, 4) ]);
		sprintf(simtmp, "%d", ((P0 *)_this)->orders[ Index(((P0 *)_this)->i, 2) ].start); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->orders[ Index(((P0 *)_this)->i, 2) ].end); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->orders[ Index(((P0 *)_this)->i, 2) ].size); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.managementToShuttle[ Index(((P0 *)_this)->_5_1_j, 4) ], 0, ((P0 *)_this)->orders[ Index(((P0 *)_this)->i, 2) ].start, ((P0 *)_this)->orders[ Index(((P0 *)_this)->i, 2) ].end, ((P0 *)_this)->orders[ Index(((P0 *)_this)->i, 2) ].size, 3);
		_m = 2; goto P999; /* 0 */
	case 42: // STATE 46 - problem1-retry.pml:44 - [] (0:0:0 - 1)
		IfNotBlocked
		reached[0][46] = 1;
		;
		_m = 3; goto P999; /* 0 */
	case 43: // STATE 47 - problem1-retry.pml:44 - [managementToShuttle[j]!dummy.start,dummy.end,dummy.size] (0:0:0 - 1)
		IfNotBlocked
		reached[0][47] = 1;
		if (q_full(now.managementToShuttle[ Index(((P0 *)_this)->_5_1_j, 4) ]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.managementToShuttle[ Index(((P0 *)_this)->_5_1_j, 4) ]);
		sprintf(simtmp, "%d", ((P0 *)_this)->_5_1_3_dummy.start); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->_5_1_3_dummy.end); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->_5_1_3_dummy.size); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.managementToShuttle[ Index(((P0 *)_this)->_5_1_j, 4) ], 0, ((P0 *)_this)->_5_1_3_dummy.start, ((P0 *)_this)->_5_1_3_dummy.end, ((P0 *)_this)->_5_1_3_dummy.size, 3);
		_m = 2; goto P999; /* 0 */
	case 44: // STATE 50 - problem1-retry.pml:41 - [j = (j+1)] (0:53:1 - 3)
		IfNotBlocked
		reached[0][50] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->_5_1_j;
		((P0 *)_this)->_5_1_j = (((P0 *)_this)->_5_1_j+1);
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:j", ((P0 *)_this)->_5_1_j);
#endif
		;
		/* merge: .(goto)(0, 54, 53) */
		reached[0][54] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 45: // STATE 56 - problem1-retry.pml:24 - [i = (i+1)] (0:59:1 - 3)
		IfNotBlocked
		reached[0][56] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->i;
		((P0 *)_this)->i = (((P0 *)_this)->i+1);
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:i", ((P0 *)_this)->i);
#endif
		;
		/* merge: .(goto)(0, 60, 59) */
		reached[0][60] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 46: // STATE 62 - problem1-retry.pml:48 - [-end-] (0:0:0 - 3)
		IfNotBlocked
		reached[0][62] = 1;
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


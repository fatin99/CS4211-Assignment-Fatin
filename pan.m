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
	case 3: // STATE 1 - problem1.pml:190 - [(run Shuttle(4,2,1,0))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][1] = 1;
		if (!(addproc(II, 1, 1, 4, 2, 1, 0, 0, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 2 - problem1.pml:191 - [(run Shuttle(2,4,1,1))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][2] = 1;
		if (!(addproc(II, 1, 1, 2, 4, 1, 1, 0, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 5: // STATE 3 - problem1.pml:192 - [(run Shuttle(5,1,2,2))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][3] = 1;
		if (!(addproc(II, 1, 1, 5, 1, 2, 2, 0, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 6: // STATE 4 - problem1.pml:193 - [(run Shuttle(3,3,3,3))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][4] = 1;
		if (!(addproc(II, 1, 1, 3, 3, 3, 3, 0, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 5 - problem1.pml:194 - [] (0:13:6 - 1)
		IfNotBlocked
		reached[3][5] = 1;
		;
		/* merge: first.size = 4(13, 6, 13) */
		reached[3][6] = 1;
		(trpt+1)->bup.ovals = grab_ints(6);
		(trpt+1)->bup.ovals[0] = ((P3 *)_this)->_13_3_first.size;
		((P3 *)_this)->_13_3_first.size = 4;
#ifdef VAR_RANGES
		logval(":init::first.size", ((P3 *)_this)->_13_3_first.size);
#endif
		;
		/* merge: first.start = 1(13, 7, 13) */
		reached[3][7] = 1;
		(trpt+1)->bup.ovals[1] = ((P3 *)_this)->_13_3_first.start;
		((P3 *)_this)->_13_3_first.start = 1;
#ifdef VAR_RANGES
		logval(":init::first.start", ((P3 *)_this)->_13_3_first.start);
#endif
		;
		/* merge: first.end = 3(13, 8, 13) */
		reached[3][8] = 1;
		(trpt+1)->bup.ovals[2] = ((P3 *)_this)->_13_3_first.end;
		((P3 *)_this)->_13_3_first.end = 3;
#ifdef VAR_RANGES
		logval(":init::first.end", ((P3 *)_this)->_13_3_first.end);
#endif
		;
		/* merge: (13, 9, 13) */
		reached[3][9] = 1;
		;
		/* merge: second.size = 2(13, 10, 13) */
		reached[3][10] = 1;
		(trpt+1)->bup.ovals[3] = ((P3 *)_this)->_13_3_second.size;
		((P3 *)_this)->_13_3_second.size = 2;
#ifdef VAR_RANGES
		logval(":init::second.size", ((P3 *)_this)->_13_3_second.size);
#endif
		;
		/* merge: second.start = 2(13, 11, 13) */
		reached[3][11] = 1;
		(trpt+1)->bup.ovals[4] = ((P3 *)_this)->_13_3_second.start;
		((P3 *)_this)->_13_3_second.start = 2;
#ifdef VAR_RANGES
		logval(":init::second.start", ((P3 *)_this)->_13_3_second.start);
#endif
		;
		/* merge: second.end = 3(13, 12, 13) */
		reached[3][12] = 1;
		(trpt+1)->bup.ovals[5] = ((P3 *)_this)->_13_3_second.end;
		((P3 *)_this)->_13_3_second.end = 3;
#ifdef VAR_RANGES
		logval(":init::second.end", ((P3 *)_this)->_13_3_second.end);
#endif
		;
		_m = 3; goto P999; /* 7 */
	case 8: // STATE 13 - problem1.pml:196 - [(run ShuttleManagementSystem(first.start,first.end,first.size,second.start,second.end,second.size))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][13] = 1;
		if (!(addproc(II, 1, 0, ((P3 *)_this)->_13_3_first.start, ((P3 *)_this)->_13_3_first.end, ((P3 *)_this)->_13_3_first.size, ((P3 *)_this)->_13_3_second.start, ((P3 *)_this)->_13_3_second.end, ((P3 *)_this)->_13_3_second.size)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 9: // STATE 14 - problem1.pml:197 - [(run RailwayNetwork())] (0:0:0 - 1)
		IfNotBlocked
		reached[3][14] = 1;
		if (!(addproc(II, 1, 2, 0, 0, 0, 0, 0, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 10: // STATE 16 - problem1.pml:199 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[3][16] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC RailwayNetwork */
	case 11: // STATE 1 - problem1.pml:170 - [shuttleRequests?request.track,request.direction,request.id] (0:0:3 - 1)
		reached[2][1] = 1;
		if (q_len(now.shuttleRequests) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P2 *)_this)->request.track;
		(trpt+1)->bup.ovals[1] = ((P2 *)_this)->request.direction;
		(trpt+1)->bup.ovals[2] = ((P2 *)_this)->request.id;
		;
		((P2 *)_this)->request.track = qrecv(now.shuttleRequests, XX-1, 0, 0);
#ifdef VAR_RANGES
		logval("RailwayNetwork:request.track", ((P2 *)_this)->request.track);
#endif
		;
		((P2 *)_this)->request.direction = qrecv(now.shuttleRequests, XX-1, 1, 0);
#ifdef VAR_RANGES
		logval("RailwayNetwork:request.direction", ((P2 *)_this)->request.direction);
#endif
		;
		((P2 *)_this)->request.id = qrecv(now.shuttleRequests, XX-1, 2, 1);
#ifdef VAR_RANGES
		logval("RailwayNetwork:request.id", ((P2 *)_this)->request.id);
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.shuttleRequests);
		sprintf(simtmp, "%d", ((P2 *)_this)->request.track); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P2 *)_this)->request.direction); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P2 *)_this)->request.id); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 12: // STATE 2 - problem1.pml:172 - [] (0:0:0 - 1)
		IfNotBlocked
		reached[2][2] = 1;
		;
		_m = 3; goto P999; /* 0 */
	case 13: // STATE 3 - problem1.pml:173 - [request.direction = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[2][3] = 1;
		(trpt+1)->bup.oval = ((P2 *)_this)->request.direction;
		((P2 *)_this)->request.direction = 1;
#ifdef VAR_RANGES
		logval("RailwayNetwork:request.direction", ((P2 *)_this)->request.direction);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 14: // STATE 4 - problem1.pml:175 - [(!(tracks.trackL2R[request.track]))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][4] = 1;
		if (!( !(((int)now.tracks.trackL2R[ Index(((P2 *)_this)->request.track, 4) ]))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 15: // STATE 5 - problem1.pml:175 - [tracks.trackL2R[request.track] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[2][5] = 1;
		(trpt+1)->bup.oval = ((int)now.tracks.trackL2R[ Index(((P2 *)_this)->request.track, 4) ]);
		now.tracks.trackL2R[ Index(((P2 *)_this)->request.track, 4) ] = 1;
#ifdef VAR_RANGES
		logval("tracks.trackL2R[RailwayNetwork:request.track]", ((int)now.tracks.trackL2R[ Index(((P2 *)_this)->request.track, 4) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 16: // STATE 6 - problem1.pml:175 - [reply.granted = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[2][6] = 1;
		(trpt+1)->bup.oval = ((int)((P2 *)_this)->reply.granted);
		((P2 *)_this)->reply.granted = 1;
#ifdef VAR_RANGES
		logval("RailwayNetwork:reply.granted", ((int)((P2 *)_this)->reply.granted));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 17: // STATE 8 - problem1.pml:176 - [reply.granted = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[2][8] = 1;
		(trpt+1)->bup.oval = ((int)((P2 *)_this)->reply.granted);
		((P2 *)_this)->reply.granted = 0;
#ifdef VAR_RANGES
		logval("RailwayNetwork:reply.granted", ((int)((P2 *)_this)->reply.granted));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 18: // STATE 12 - problem1.pml:180 - [(!(tracks.trackR2L[request.track]))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][12] = 1;
		if (!( !(((int)now.tracks.trackR2L[ Index(((P2 *)_this)->request.track, 4) ]))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 19: // STATE 13 - problem1.pml:180 - [tracks.trackL2R[request.track] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[2][13] = 1;
		(trpt+1)->bup.oval = ((int)now.tracks.trackL2R[ Index(((P2 *)_this)->request.track, 4) ]);
		now.tracks.trackL2R[ Index(((P2 *)_this)->request.track, 4) ] = 1;
#ifdef VAR_RANGES
		logval("tracks.trackL2R[RailwayNetwork:request.track]", ((int)now.tracks.trackL2R[ Index(((P2 *)_this)->request.track, 4) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 20: // STATE 14 - problem1.pml:180 - [reply.granted = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[2][14] = 1;
		(trpt+1)->bup.oval = ((int)((P2 *)_this)->reply.granted);
		((P2 *)_this)->reply.granted = 1;
#ifdef VAR_RANGES
		logval("RailwayNetwork:reply.granted", ((int)((P2 *)_this)->reply.granted));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 21: // STATE 16 - problem1.pml:181 - [reply.granted = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[2][16] = 1;
		(trpt+1)->bup.oval = ((int)((P2 *)_this)->reply.granted);
		((P2 *)_this)->reply.granted = 0;
#ifdef VAR_RANGES
		logval("RailwayNetwork:reply.granted", ((int)((P2 *)_this)->reply.granted));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 22: // STATE 21 - problem1.pml:184 - [railwayReplies[request.id]!reply.granted] (0:0:0 - 7)
		IfNotBlocked
		reached[2][21] = 1;
		if (q_full(now.railwayReplies[ Index(((P2 *)_this)->request.id, 4) ]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.railwayReplies[ Index(((P2 *)_this)->request.id, 4) ]);
		sprintf(simtmp, "%d", ((int)((P2 *)_this)->reply.granted)); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.railwayReplies[ Index(((P2 *)_this)->request.id, 4) ], 0, ((int)((P2 *)_this)->reply.granted), 0, 0, 1);
		_m = 2; goto P999; /* 0 */
	case 23: // STATE 25 - problem1.pml:186 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[2][25] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Shuttle */
	case 24: // STATE 1 - problem1.pml:80 - [managementOrders[id]?order.start,order.end,order.size] (0:0:3 - 1)
		reached[1][1] = 1;
		if (q_len(now.managementOrders[ Index(((P1 *)_this)->id, 4) ]) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->order.start;
		(trpt+1)->bup.ovals[1] = ((P1 *)_this)->order.end;
		(trpt+1)->bup.ovals[2] = ((P1 *)_this)->order.size;
		;
		((P1 *)_this)->order.start = qrecv(now.managementOrders[ Index(((P1 *)_this)->id, 4) ], XX-1, 0, 0);
#ifdef VAR_RANGES
		logval("Shuttle:order.start", ((P1 *)_this)->order.start);
#endif
		;
		((P1 *)_this)->order.end = qrecv(now.managementOrders[ Index(((P1 *)_this)->id, 4) ], XX-1, 1, 0);
#ifdef VAR_RANGES
		logval("Shuttle:order.end", ((P1 *)_this)->order.end);
#endif
		;
		((P1 *)_this)->order.size = qrecv(now.managementOrders[ Index(((P1 *)_this)->id, 4) ], XX-1, 2, 1);
#ifdef VAR_RANGES
		logval("Shuttle:order.size", ((P1 *)_this)->order.size);
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.managementOrders[ Index(((P1 *)_this)->id, 4) ]);
		sprintf(simtmp, "%d", ((P1 *)_this)->order.start); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P1 *)_this)->order.end); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P1 *)_this)->order.size); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 25: // STATE 2 - problem1.pml:82 - [currentPosition = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][2] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->currentPosition;
		((P1 *)_this)->currentPosition = 0;
#ifdef VAR_RANGES
		logval("Shuttle:currentPosition", ((P1 *)_this)->currentPosition);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 26: // STATE 3 - problem1.pml:83 - [(travelling)] (14:0:2 - 1)
		IfNotBlocked
		reached[1][3] = 1;
		if (!(((int)((P1 *)_this)->travelling)))
			continue;
		/* merge: currentPosition = (currentStation+direction)(14, 4, 14) */
		reached[1][4] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->currentPosition;
		((P1 *)_this)->currentPosition = (((P1 *)_this)->currentStation+((P1 *)_this)->direction);
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
	case 27: // STATE 6 - problem1.pml:84 - [currentPosition = currentStation] (0:14:2 - 1)
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
	case 28: // STATE 9 - problem1.pml:87 - [distance = 0] (0:14:1 - 3)
		IfNotBlocked
		reached[1][9] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->distance;
		((P1 *)_this)->distance = 0;
#ifdef VAR_RANGES
		logval("Shuttle:distance", ((P1 *)_this)->distance);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 29: // STATE 10 - problem1.pml:88 - [((currentPosition>order.start))] (20:0:1 - 1)
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
	case 30: // STATE 13 - problem1.pml:89 - [distance = (order.start-currentPosition)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][13] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->distance;
		((P1 *)_this)->distance = (((P1 *)_this)->order.start-((P1 *)_this)->currentPosition);
#ifdef VAR_RANGES
		logval("Shuttle:distance", ((P1 *)_this)->distance);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 31: // STATE 16 - problem1.pml:92 - [((distance>(4/2)))] (31:0:1 - 1)
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
	case 32: // STATE 19 - problem1.pml:93 - [distance = distance] (0:31:1 - 1)
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
	case 33: // STATE 22 - problem1.pml:96 - [] (0:31:0 - 3)
		IfNotBlocked
		reached[1][22] = 1;
		;
		_m = 3; goto P999; /* 0 */
	case 34: // STATE 23 - problem1.pml:97 - [((((currentLoad+order.size)<=capacity)&&(distance<=2)))] (33:0:4 - 1)
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
	case 35: // STATE 28 - problem1.pml:100 - [offer.id = id] (0:33:3 - 1)
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
	case 36: // STATE 33 - problem1.pml:102 - [shuttleOffers!offer.id,offer.charge,offer.refuse] (0:0:0 - 3)
		IfNotBlocked
		reached[1][33] = 1;
		if (q_full(now.shuttleOffers))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.shuttleOffers);
		sprintf(simtmp, "%d", ((P1 *)_this)->offer.id); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P1 *)_this)->offer.charge); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P1 *)_this)->offer.refuse)); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.shuttleOffers, 0, ((P1 *)_this)->offer.id, ((P1 *)_this)->offer.charge, ((int)((P1 *)_this)->offer.refuse), 3);
		_m = 2; goto P999; /* 0 */
	case 37: // STATE 34 - problem1.pml:103 - [managementOrders[id]?order.start,order.end,order.size] (0:0:3 - 1)
		reached[1][34] = 1;
		if (q_len(now.managementOrders[ Index(((P1 *)_this)->id, 4) ]) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->order.start;
		(trpt+1)->bup.ovals[1] = ((P1 *)_this)->order.end;
		(trpt+1)->bup.ovals[2] = ((P1 *)_this)->order.size;
		;
		((P1 *)_this)->order.start = qrecv(now.managementOrders[ Index(((P1 *)_this)->id, 4) ], XX-1, 0, 0);
#ifdef VAR_RANGES
		logval("Shuttle:order.start", ((P1 *)_this)->order.start);
#endif
		;
		((P1 *)_this)->order.end = qrecv(now.managementOrders[ Index(((P1 *)_this)->id, 4) ], XX-1, 1, 0);
#ifdef VAR_RANGES
		logval("Shuttle:order.end", ((P1 *)_this)->order.end);
#endif
		;
		((P1 *)_this)->order.size = qrecv(now.managementOrders[ Index(((P1 *)_this)->id, 4) ], XX-1, 2, 1);
#ifdef VAR_RANGES
		logval("Shuttle:order.size", ((P1 *)_this)->order.size);
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.managementOrders[ Index(((P1 *)_this)->id, 4) ]);
		sprintf(simtmp, "%d", ((P1 *)_this)->order.start); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P1 *)_this)->order.end); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P1 *)_this)->order.size); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 38: // STATE 35 - problem1.pml:105 - [((order.size>=0))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][35] = 1;
		if (!((((P1 *)_this)->order.size>=0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 39: // STATE 36 - problem1.pml:105 - [orders!order.start,order.end,order.size] (0:0:0 - 1)
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
	case 40: // STATE 41 - problem1.pml:108 - [((nempty(orders)&&!(processingOrder)))] (0:0:1 - 1)
		IfNotBlocked
		reached[1][41] = 1;
		if (!(((q_len(((P1 *)_this)->orders)>0)&& !(((int)((P1 *)_this)->processingOrder)))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: processingOrder */  (trpt+1)->bup.oval = ((P1 *)_this)->processingOrder;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->processingOrder = 0;
		_m = 3; goto P999; /* 0 */
	case 41: // STATE 42 - problem1.pml:109 - [orders?currentOrder.start,currentOrder.end,currentOrder.size] (0:0:3 - 1)
		reached[1][42] = 1;
		if (q_len(((P1 *)_this)->orders) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->currentOrder.start;
		(trpt+1)->bup.ovals[1] = ((P1 *)_this)->currentOrder.end;
		(trpt+1)->bup.ovals[2] = ((P1 *)_this)->currentOrder.size;
		;
		((P1 *)_this)->currentOrder.start = qrecv(((P1 *)_this)->orders, XX-1, 0, 0);
#ifdef VAR_RANGES
		logval("Shuttle:currentOrder.start", ((P1 *)_this)->currentOrder.start);
#endif
		;
		((P1 *)_this)->currentOrder.end = qrecv(((P1 *)_this)->orders, XX-1, 1, 0);
#ifdef VAR_RANGES
		logval("Shuttle:currentOrder.end", ((P1 *)_this)->currentOrder.end);
#endif
		;
		((P1 *)_this)->currentOrder.size = qrecv(((P1 *)_this)->orders, XX-1, 2, 1);
#ifdef VAR_RANGES
		logval("Shuttle:currentOrder.size", ((P1 *)_this)->currentOrder.size);
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", ((P1 *)_this)->orders);
		sprintf(simtmp, "%d", ((P1 *)_this)->currentOrder.start); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P1 *)_this)->currentOrder.end); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P1 *)_this)->currentOrder.size); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 42: // STATE 43 - problem1.pml:110 - [processingOrder = 1] (0:50:3 - 1)
		IfNotBlocked
		reached[1][43] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)((P1 *)_this)->processingOrder);
		((P1 *)_this)->processingOrder = 1;
#ifdef VAR_RANGES
		logval("Shuttle:processingOrder", ((int)((P1 *)_this)->processingOrder));
#endif
		;
		/* merge: destination = currentOrder.start(50, 44, 50) */
		reached[1][44] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)_this)->destination;
		((P1 *)_this)->destination = ((P1 *)_this)->currentOrder.start;
#ifdef VAR_RANGES
		logval("Shuttle:destination", ((P1 *)_this)->destination);
#endif
		;
		/* merge: travelling = 1(50, 45, 50) */
		reached[1][45] = 1;
		(trpt+1)->bup.ovals[2] = ((int)((P1 *)_this)->travelling);
		((P1 *)_this)->travelling = 1;
#ifdef VAR_RANGES
		logval("Shuttle:travelling", ((int)((P1 *)_this)->travelling));
#endif
		;
		_m = 3; goto P999; /* 2 */
	case 43: // STATE 46 - problem1.pml:114 - [(((currentOrder.start>=currentStation)&&((currentOrder.start-currentStation)<(4/2))))] (110:0:1 - 1)
		IfNotBlocked
		reached[1][46] = 1;
		if (!(((((P1 *)_this)->currentOrder.start>=((P1 *)_this)->currentStation)&&((((P1 *)_this)->currentOrder.start-((P1 *)_this)->currentStation)<(4/2)))))
			continue;
		/* merge: direction = 1(0, 47, 110) */
		reached[1][47] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->direction;
		((P1 *)_this)->direction = 1;
#ifdef VAR_RANGES
		logval("Shuttle:direction", ((P1 *)_this)->direction);
#endif
		;
		/* merge: .(goto)(0, 51, 110) */
		reached[1][51] = 1;
		;
		/* merge: .(goto)(0, 111, 110) */
		reached[1][111] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 44: // STATE 49 - problem1.pml:116 - [direction = -(1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][49] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->direction;
		((P1 *)_this)->direction =  -(1);
#ifdef VAR_RANGES
		logval("Shuttle:direction", ((P1 *)_this)->direction);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 45: // STATE 52 - problem1.pml:118 - [((!(travelling)&&processingOrder))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][52] = 1;
		if (!(( !(((int)((P1 *)_this)->travelling))&&((int)((P1 *)_this)->processingOrder))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 46: // STATE 53 - problem1.pml:120 - [((destination==currentOrder.start))] (61:0:4 - 1)
		IfNotBlocked
		reached[1][53] = 1;
		if (!((((P1 *)_this)->destination==((P1 *)_this)->currentOrder.start)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: destination */  (trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->destination;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->destination = 0;
		/* merge: currentLoad = (currentLoad+currentOrder.size)(61, 54, 61) */
		reached[1][54] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)_this)->currentLoad;
		((P1 *)_this)->currentLoad = (((P1 *)_this)->currentLoad+((P1 *)_this)->currentOrder.size);
#ifdef VAR_RANGES
		logval("Shuttle:currentLoad", ((P1 *)_this)->currentLoad);
#endif
		;
		/* merge: destination = currentOrder.end(61, 55, 61) */
		reached[1][55] = 1;
		(trpt+1)->bup.ovals[2] = ((P1 *)_this)->destination;
		((P1 *)_this)->destination = ((P1 *)_this)->currentOrder.end;
#ifdef VAR_RANGES
		logval("Shuttle:destination", ((P1 *)_this)->destination);
#endif
		;
		/* merge: travelling = 1(61, 56, 61) */
		reached[1][56] = 1;
		(trpt+1)->bup.ovals[3] = ((int)((P1 *)_this)->travelling);
		((P1 *)_this)->travelling = 1;
#ifdef VAR_RANGES
		logval("Shuttle:travelling", ((int)((P1 *)_this)->travelling));
#endif
		;
		_m = 3; goto P999; /* 3 */
	case 47: // STATE 57 - problem1.pml:125 - [(((currentOrder.start>=currentStation)&&((currentOrder.start-currentStation)<(4/2))))] (110:0:1 - 1)
		IfNotBlocked
		reached[1][57] = 1;
		if (!(((((P1 *)_this)->currentOrder.start>=((P1 *)_this)->currentStation)&&((((P1 *)_this)->currentOrder.start-((P1 *)_this)->currentStation)<(4/2)))))
			continue;
		/* merge: direction = 1(0, 58, 110) */
		reached[1][58] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->direction;
		((P1 *)_this)->direction = 1;
#ifdef VAR_RANGES
		logval("Shuttle:direction", ((P1 *)_this)->direction);
#endif
		;
		/* merge: .(goto)(0, 62, 110) */
		reached[1][62] = 1;
		;
		/* merge: .(goto)(0, 69, 110) */
		reached[1][69] = 1;
		;
		/* merge: .(goto)(0, 111, 110) */
		reached[1][111] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 48: // STATE 60 - problem1.pml:127 - [direction = -(1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][60] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->direction;
		((P1 *)_this)->direction =  -(1);
#ifdef VAR_RANGES
		logval("Shuttle:direction", ((P1 *)_this)->direction);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 49: // STATE 63 - problem1.pml:129 - [((destination==currentOrder.end))] (110:0:2 - 1)
		IfNotBlocked
		reached[1][63] = 1;
		if (!((((P1 *)_this)->destination==((P1 *)_this)->currentOrder.end)))
			continue;
		/* merge: currentLoad = (currentLoad-currentOrder.size)(110, 64, 110) */
		reached[1][64] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->currentLoad;
		((P1 *)_this)->currentLoad = (((P1 *)_this)->currentLoad-((P1 *)_this)->currentOrder.size);
#ifdef VAR_RANGES
		logval("Shuttle:currentLoad", ((P1 *)_this)->currentLoad);
#endif
		;
		/* merge: processingOrder = 0(110, 65, 110) */
		reached[1][65] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P1 *)_this)->processingOrder);
		((P1 *)_this)->processingOrder = 0;
#ifdef VAR_RANGES
		logval("Shuttle:processingOrder", ((int)((P1 *)_this)->processingOrder));
#endif
		;
		/* merge: .(goto)(0, 69, 110) */
		reached[1][69] = 1;
		;
		/* merge: .(goto)(0, 111, 110) */
		reached[1][111] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 50: // STATE 70 - problem1.pml:134 - [((travelling&&processingOrder))] (79:0:3 - 1)
		IfNotBlocked
		reached[1][70] = 1;
		if (!((((int)((P1 *)_this)->travelling)&&((int)((P1 *)_this)->processingOrder))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: travelling */  (trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->travelling;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->travelling = 0;
		/* merge: nextStation = 0(79, 71, 79) */
		reached[1][71] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)_this)->nextStation;
		((P1 *)_this)->nextStation = 0;
#ifdef VAR_RANGES
		logval("Shuttle:nextStation", ((P1 *)_this)->nextStation);
#endif
		;
		/* merge: nextStation = (currentStation+direction)(79, 72, 79) */
		reached[1][72] = 1;
		(trpt+1)->bup.ovals[2] = ((P1 *)_this)->nextStation;
		((P1 *)_this)->nextStation = (((P1 *)_this)->currentStation+((P1 *)_this)->direction);
#ifdef VAR_RANGES
		logval("Shuttle:nextStation", ((P1 *)_this)->nextStation);
#endif
		;
		_m = 3; goto P999; /* 2 */
	case 51: // STATE 73 - problem1.pml:138 - [((nextStation>=4))] (94:0:5 - 1)
		IfNotBlocked
		reached[1][73] = 1;
		if (!((((P1 *)_this)->nextStation>=4)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: nextStation */  (trpt+1)->bup.ovals = grab_ints(5);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->nextStation;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->nextStation = 0;
		/* merge: nextStation = 0(94, 74, 94) */
		reached[1][74] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)_this)->nextStation;
		((P1 *)_this)->nextStation = 0;
#ifdef VAR_RANGES
		logval("Shuttle:nextStation", ((P1 *)_this)->nextStation);
#endif
		;
		/* merge: .(goto)(94, 80, 94) */
		reached[1][80] = 1;
		;
		/* merge: (94, 81, 94) */
		reached[1][81] = 1;
		;
		/* merge: request.id = id(94, 82, 94) */
		reached[1][82] = 1;
		(trpt+1)->bup.ovals[2] = ((P1 *)_this)->request.id;
		((P1 *)_this)->request.id = ((P1 *)_this)->id;
#ifdef VAR_RANGES
		logval("Shuttle:request.id", ((P1 *)_this)->request.id);
#endif
		;
		/* merge: request.direction = direction(94, 83, 94) */
		reached[1][83] = 1;
		(trpt+1)->bup.ovals[3] = ((P1 *)_this)->request.direction;
		((P1 *)_this)->request.direction = ((P1 *)_this)->direction;
#ifdef VAR_RANGES
		logval("Shuttle:request.direction", ((P1 *)_this)->request.direction);
#endif
		;
		/* merge: request.track = nextStation(94, 84, 94) */
		reached[1][84] = 1;
		(trpt+1)->bup.ovals[4] = ((P1 *)_this)->request.track;
		((P1 *)_this)->request.track = ((P1 *)_this)->nextStation;
#ifdef VAR_RANGES
		logval("Shuttle:request.track", ((P1 *)_this)->request.track);
#endif
		;
		/* merge: (94, 85, 94) */
		reached[1][85] = 1;
		;
		/* merge: .(goto)(0, 95, 94) */
		reached[1][95] = 1;
		;
		_m = 3; goto P999; /* 8 */
	case 52: // STATE 75 - problem1.pml:139 - [((nextStation<0))] (94:0:5 - 1)
		IfNotBlocked
		reached[1][75] = 1;
		if (!((((P1 *)_this)->nextStation<0)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: nextStation */  (trpt+1)->bup.ovals = grab_ints(5);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->nextStation;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->nextStation = 0;
		/* merge: nextStation = (4-1)(94, 76, 94) */
		reached[1][76] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)_this)->nextStation;
		((P1 *)_this)->nextStation = (4-1);
#ifdef VAR_RANGES
		logval("Shuttle:nextStation", ((P1 *)_this)->nextStation);
#endif
		;
		/* merge: .(goto)(94, 80, 94) */
		reached[1][80] = 1;
		;
		/* merge: (94, 81, 94) */
		reached[1][81] = 1;
		;
		/* merge: request.id = id(94, 82, 94) */
		reached[1][82] = 1;
		(trpt+1)->bup.ovals[2] = ((P1 *)_this)->request.id;
		((P1 *)_this)->request.id = ((P1 *)_this)->id;
#ifdef VAR_RANGES
		logval("Shuttle:request.id", ((P1 *)_this)->request.id);
#endif
		;
		/* merge: request.direction = direction(94, 83, 94) */
		reached[1][83] = 1;
		(trpt+1)->bup.ovals[3] = ((P1 *)_this)->request.direction;
		((P1 *)_this)->request.direction = ((P1 *)_this)->direction;
#ifdef VAR_RANGES
		logval("Shuttle:request.direction", ((P1 *)_this)->request.direction);
#endif
		;
		/* merge: request.track = nextStation(94, 84, 94) */
		reached[1][84] = 1;
		(trpt+1)->bup.ovals[4] = ((P1 *)_this)->request.track;
		((P1 *)_this)->request.track = ((P1 *)_this)->nextStation;
#ifdef VAR_RANGES
		logval("Shuttle:request.track", ((P1 *)_this)->request.track);
#endif
		;
		/* merge: (94, 85, 94) */
		reached[1][85] = 1;
		;
		/* merge: .(goto)(0, 95, 94) */
		reached[1][95] = 1;
		;
		_m = 3; goto P999; /* 8 */
	case 53: // STATE 78 - problem1.pml:140 - [(1)] (94:0:3 - 1)
		IfNotBlocked
		reached[1][78] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(94, 80, 94) */
		reached[1][80] = 1;
		;
		/* merge: (94, 81, 94) */
		reached[1][81] = 1;
		;
		/* merge: request.id = id(94, 82, 94) */
		reached[1][82] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->request.id;
		((P1 *)_this)->request.id = ((P1 *)_this)->id;
#ifdef VAR_RANGES
		logval("Shuttle:request.id", ((P1 *)_this)->request.id);
#endif
		;
		/* merge: request.direction = direction(94, 83, 94) */
		reached[1][83] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)_this)->request.direction;
		((P1 *)_this)->request.direction = ((P1 *)_this)->direction;
#ifdef VAR_RANGES
		logval("Shuttle:request.direction", ((P1 *)_this)->request.direction);
#endif
		;
		/* merge: request.track = nextStation(94, 84, 94) */
		reached[1][84] = 1;
		(trpt+1)->bup.ovals[2] = ((P1 *)_this)->request.track;
		((P1 *)_this)->request.track = ((P1 *)_this)->nextStation;
#ifdef VAR_RANGES
		logval("Shuttle:request.track", ((P1 *)_this)->request.track);
#endif
		;
		/* merge: (94, 85, 94) */
		reached[1][85] = 1;
		;
		/* merge: .(goto)(0, 95, 94) */
		reached[1][95] = 1;
		;
		_m = 3; goto P999; /* 7 */
	case 54: // STATE 81 - problem1.pml:143 - [] (0:94:3 - 4)
		IfNotBlocked
		reached[1][81] = 1;
		;
		/* merge: request.id = id(94, 82, 94) */
		reached[1][82] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->request.id;
		((P1 *)_this)->request.id = ((P1 *)_this)->id;
#ifdef VAR_RANGES
		logval("Shuttle:request.id", ((P1 *)_this)->request.id);
#endif
		;
		/* merge: request.direction = direction(94, 83, 94) */
		reached[1][83] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)_this)->request.direction;
		((P1 *)_this)->request.direction = ((P1 *)_this)->direction;
#ifdef VAR_RANGES
		logval("Shuttle:request.direction", ((P1 *)_this)->request.direction);
#endif
		;
		/* merge: request.track = nextStation(94, 84, 94) */
		reached[1][84] = 1;
		(trpt+1)->bup.ovals[2] = ((P1 *)_this)->request.track;
		((P1 *)_this)->request.track = ((P1 *)_this)->nextStation;
#ifdef VAR_RANGES
		logval("Shuttle:request.track", ((P1 *)_this)->request.track);
#endif
		;
		/* merge: (94, 85, 94) */
		reached[1][85] = 1;
		;
		/* merge: .(goto)(0, 95, 94) */
		reached[1][95] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 55: // STATE 86 - problem1.pml:146 - [shuttleRequests!request.track,request.direction,request.id] (0:0:0 - 1)
		IfNotBlocked
		reached[1][86] = 1;
		if (q_full(now.shuttleRequests))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.shuttleRequests);
		sprintf(simtmp, "%d", ((P1 *)_this)->request.track); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P1 *)_this)->request.direction); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P1 *)_this)->request.id); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.shuttleRequests, 0, ((P1 *)_this)->request.track, ((P1 *)_this)->request.direction, ((P1 *)_this)->request.id, 3);
		_m = 2; goto P999; /* 0 */
	case 56: // STATE 87 - problem1.pml:147 - [railwayReplies[id]?reply.granted] (0:0:1 - 1)
		reached[1][87] = 1;
		if (q_len(now.railwayReplies[ Index(((P1 *)_this)->id, 4) ]) == 0) continue;

		XX=1;
		(trpt+1)->bup.oval = ((int)((P1 *)_this)->reply.granted);
		;
		((P1 *)_this)->reply.granted = qrecv(now.railwayReplies[ Index(((P1 *)_this)->id, 4) ], XX-1, 0, 1);
#ifdef VAR_RANGES
		logval("Shuttle:reply.granted", ((int)((P1 *)_this)->reply.granted));
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.railwayReplies[ Index(((P1 *)_this)->id, 4) ]);
		sprintf(simtmp, "%d", ((int)((P1 *)_this)->reply.granted)); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 57: // STATE 88 - problem1.pml:149 - [(reply.granted)] (102:0:1 - 1)
		IfNotBlocked
		reached[1][88] = 1;
		if (!(((int)((P1 *)_this)->reply.granted)))
			continue;
		/* merge: goto :b5(102, 89, 102) */
		reached[1][89] = 1;
		;
		/* merge: currentStation = nextStation(102, 97, 102) */
		reached[1][97] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->currentStation;
		((P1 *)_this)->currentStation = ((P1 *)_this)->nextStation;
#ifdef VAR_RANGES
		logval("Shuttle:currentStation", ((P1 *)_this)->currentStation);
#endif
		;
		_m = 3; goto P999; /* 2 */
	case 58: // STATE 97 - problem1.pml:153 - [currentStation = nextStation] (0:102:1 - 3)
		IfNotBlocked
		reached[1][97] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->currentStation;
		((P1 *)_this)->currentStation = ((P1 *)_this)->nextStation;
#ifdef VAR_RANGES
		logval("Shuttle:currentStation", ((P1 *)_this)->currentStation);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 59: // STATE 98 - problem1.pml:155 - [((direction==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][98] = 1;
		if (!((((P1 *)_this)->direction==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 60: // STATE 99 - problem1.pml:155 - [tracks.trackL2R[request.track] = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][99] = 1;
		(trpt+1)->bup.oval = ((int)now.tracks.trackL2R[ Index(((P1 *)_this)->request.track, 4) ]);
		now.tracks.trackL2R[ Index(((P1 *)_this)->request.track, 4) ] = 0;
#ifdef VAR_RANGES
		logval("tracks.trackL2R[Shuttle:request.track]", ((int)now.tracks.trackL2R[ Index(((P1 *)_this)->request.track, 4) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 61: // STATE 100 - problem1.pml:156 - [((direction==-(1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][100] = 1;
		if (!((((P1 *)_this)->direction== -(1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 62: // STATE 101 - problem1.pml:156 - [tracks.trackR2L[request.track] = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][101] = 1;
		(trpt+1)->bup.oval = ((int)now.tracks.trackR2L[ Index(((P1 *)_this)->request.track, 4) ]);
		now.tracks.trackR2L[ Index(((P1 *)_this)->request.track, 4) ] = 0;
#ifdef VAR_RANGES
		logval("tracks.trackR2L[Shuttle:request.track]", ((int)now.tracks.trackR2L[ Index(((P1 *)_this)->request.track, 4) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 63: // STATE 104 - problem1.pml:159 - [((currentStation==destination))] (110:0:1 - 1)
		IfNotBlocked
		reached[1][104] = 1;
		if (!((((P1 *)_this)->currentStation==((P1 *)_this)->destination)))
			continue;
		/* merge: travelling = 0(0, 105, 110) */
		reached[1][105] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)_this)->travelling);
		((P1 *)_this)->travelling = 0;
#ifdef VAR_RANGES
		logval("Shuttle:travelling", ((int)((P1 *)_this)->travelling));
#endif
		;
		/* merge: .(goto)(0, 109, 110) */
		reached[1][109] = 1;
		;
		/* merge: .(goto)(0, 111, 110) */
		reached[1][111] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 64: // STATE 107 - problem1.pml:160 - [travelling = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][107] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)_this)->travelling);
		((P1 *)_this)->travelling = 1;
#ifdef VAR_RANGES
		logval("Shuttle:travelling", ((int)((P1 *)_this)->travelling));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 65: // STATE 113 - problem1.pml:163 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][113] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC ShuttleManagementSystem */
	case 66: // STATE 1 - problem1.pml:38 - [orders[0].start = first.start] (0:59:8 - 1)
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
	case 67: // STATE 9 - problem1.pml:41 - [((i<=(2-1)))] (17:0:2 - 1)
		IfNotBlocked
		reached[0][9] = 1;
		if (!((((P0 *)_this)->i<=(2-1))))
			continue;
		/* merge: j = 0(17, 10, 17) */
		reached[0][10] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->_10_1_j;
		((P0 *)_this)->_10_1_j = 0;
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:j", ((P0 *)_this)->_10_1_j);
#endif
		;
		/* merge: j = 0(17, 11, 17) */
		reached[0][11] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->_10_1_j;
		((P0 *)_this)->_10_1_j = 0;
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:j", ((P0 *)_this)->_10_1_j);
#endif
		;
		/* merge: .(goto)(0, 18, 17) */
		reached[0][18] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 68: // STATE 12 - problem1.pml:43 - [((j<=(4-1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][12] = 1;
		if (!((((P0 *)_this)->_10_1_j<=(4-1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 69: // STATE 13 - problem1.pml:44 - [managementOrders[j]!orders[i].start,orders[i].end,orders[i].size] (0:0:0 - 1)
		IfNotBlocked
		reached[0][13] = 1;
		if (q_full(now.managementOrders[ Index(((P0 *)_this)->_10_1_j, 4) ]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.managementOrders[ Index(((P0 *)_this)->_10_1_j, 4) ]);
		sprintf(simtmp, "%d", ((P0 *)_this)->orders[ Index(((P0 *)_this)->i, 2) ].start); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->orders[ Index(((P0 *)_this)->i, 2) ].end); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->orders[ Index(((P0 *)_this)->i, 2) ].size); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.managementOrders[ Index(((P0 *)_this)->_10_1_j, 4) ], 0, ((P0 *)_this)->orders[ Index(((P0 *)_this)->i, 2) ].start, ((P0 *)_this)->orders[ Index(((P0 *)_this)->i, 2) ].end, ((P0 *)_this)->orders[ Index(((P0 *)_this)->i, 2) ].size, 3);
		_m = 2; goto P999; /* 0 */
	case 70: // STATE 14 - problem1.pml:43 - [j = (j+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][14] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->_10_1_j;
		((P0 *)_this)->_10_1_j = (((P0 *)_this)->_10_1_j+1);
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:j", ((P0 *)_this)->_10_1_j);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 71: // STATE 20 - problem1.pml:47 - [minCharge = 2147483647] (0:37:3 - 3)
		IfNotBlocked
		reached[0][20] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->_10_1_minCharge;
		((P0 *)_this)->_10_1_minCharge = 2147483647;
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:minCharge", ((P0 *)_this)->_10_1_minCharge);
#endif
		;
		/* merge: assignedId = 0(37, 21, 37) */
		reached[0][21] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->_10_1_assignedId;
		((P0 *)_this)->_10_1_assignedId = 0;
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:assignedId", ((P0 *)_this)->_10_1_assignedId);
#endif
		;
		/* merge: j = 0(37, 22, 37) */
		reached[0][22] = 1;
		(trpt+1)->bup.ovals[2] = ((P0 *)_this)->_10_1_j;
		((P0 *)_this)->_10_1_j = 0;
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:j", ((P0 *)_this)->_10_1_j);
#endif
		;
		/* merge: .(goto)(0, 38, 37) */
		reached[0][38] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 72: // STATE 23 - problem1.pml:50 - [((j<=(4-1)))] (25:0:0 - 1)
		IfNotBlocked
		reached[0][23] = 1;
		if (!((((P0 *)_this)->_10_1_j<=(4-1))))
			continue;
		/* merge: (0, 24, 25) */
		reached[0][24] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 73: // STATE 25 - problem1.pml:52 - [shuttleOffers?offer.id,offer.charge,offer.refuse] (0:0:3 - 1)
		reached[0][25] = 1;
		if (q_len(now.shuttleOffers) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->_10_1_2_offer.id;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->_10_1_2_offer.charge;
		(trpt+1)->bup.ovals[2] = ((int)((P0 *)_this)->_10_1_2_offer.refuse);
		;
		((P0 *)_this)->_10_1_2_offer.id = qrecv(now.shuttleOffers, XX-1, 0, 0);
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:offer.id", ((P0 *)_this)->_10_1_2_offer.id);
#endif
		;
		((P0 *)_this)->_10_1_2_offer.charge = qrecv(now.shuttleOffers, XX-1, 1, 0);
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:offer.charge", ((P0 *)_this)->_10_1_2_offer.charge);
#endif
		;
		((P0 *)_this)->_10_1_2_offer.refuse = qrecv(now.shuttleOffers, XX-1, 2, 1);
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:offer.refuse", ((int)((P0 *)_this)->_10_1_2_offer.refuse));
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.shuttleOffers);
		sprintf(simtmp, "%d", ((P0 *)_this)->_10_1_2_offer.id); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->_10_1_2_offer.charge); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P0 *)_this)->_10_1_2_offer.refuse)); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 74: // STATE 26 - problem1.pml:54 - [(((offer.charge<minCharge)&&!(offer.refuse)))] (37:0:4 - 1)
		IfNotBlocked
		reached[0][26] = 1;
		if (!(((((P0 *)_this)->_10_1_2_offer.charge<((P0 *)_this)->_10_1_minCharge)&& !(((int)((P0 *)_this)->_10_1_2_offer.refuse)))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: _10_1_minCharge */  (trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->_10_1_minCharge;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->_10_1_minCharge = 0;
		/* merge: minCharge = offer.charge(37, 27, 37) */
		reached[0][27] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->_10_1_minCharge;
		((P0 *)_this)->_10_1_minCharge = ((P0 *)_this)->_10_1_2_offer.charge;
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:minCharge", ((P0 *)_this)->_10_1_minCharge);
#endif
		;
		/* merge: assignedId = offer.id(37, 28, 37) */
		reached[0][28] = 1;
		(trpt+1)->bup.ovals[2] = ((P0 *)_this)->_10_1_assignedId;
		((P0 *)_this)->_10_1_assignedId = ((P0 *)_this)->_10_1_2_offer.id;
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:assignedId", ((P0 *)_this)->_10_1_assignedId);
#endif
		;
		/* merge: .(goto)(37, 33, 37) */
		reached[0][33] = 1;
		;
		/* merge: j = (j+1)(37, 34, 37) */
		reached[0][34] = 1;
		(trpt+1)->bup.ovals[3] = ((P0 *)_this)->_10_1_j;
		((P0 *)_this)->_10_1_j = (((P0 *)_this)->_10_1_j+1);
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:j", ((P0 *)_this)->_10_1_j);
#endif
		;
		/* merge: .(goto)(0, 38, 37) */
		reached[0][38] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 75: // STATE 30 - problem1.pml:55 - [minCharge = minCharge] (0:37:3 - 1)
		IfNotBlocked
		reached[0][30] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->_10_1_minCharge;
		((P0 *)_this)->_10_1_minCharge = ((P0 *)_this)->_10_1_minCharge;
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:minCharge", ((P0 *)_this)->_10_1_minCharge);
#endif
		;
		/* merge: assignedId = assignedId(37, 31, 37) */
		reached[0][31] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->_10_1_assignedId;
		((P0 *)_this)->_10_1_assignedId = ((P0 *)_this)->_10_1_assignedId;
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:assignedId", ((P0 *)_this)->_10_1_assignedId);
#endif
		;
		/* merge: .(goto)(37, 33, 37) */
		reached[0][33] = 1;
		;
		/* merge: j = (j+1)(37, 34, 37) */
		reached[0][34] = 1;
		(trpt+1)->bup.ovals[2] = ((P0 *)_this)->_10_1_j;
		((P0 *)_this)->_10_1_j = (((P0 *)_this)->_10_1_j+1);
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:j", ((P0 *)_this)->_10_1_j);
#endif
		;
		/* merge: .(goto)(0, 38, 37) */
		reached[0][38] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 76: // STATE 34 - problem1.pml:50 - [j = (j+1)] (0:37:1 - 3)
		IfNotBlocked
		reached[0][34] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->_10_1_j;
		((P0 *)_this)->_10_1_j = (((P0 *)_this)->_10_1_j+1);
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:j", ((P0 *)_this)->_10_1_j);
#endif
		;
		/* merge: .(goto)(0, 38, 37) */
		reached[0][38] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 77: // STATE 40 - problem1.pml:58 - [j = 0] (0:53:1 - 3)
		IfNotBlocked
		reached[0][40] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->_10_1_j;
		((P0 *)_this)->_10_1_j = 0;
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:j", ((P0 *)_this)->_10_1_j);
#endif
		;
		/* merge: .(goto)(0, 54, 53) */
		reached[0][54] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 78: // STATE 41 - problem1.pml:58 - [((j<=(4-1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][41] = 1;
		if (!((((P0 *)_this)->_10_1_j<=(4-1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 79: // STATE 42 - problem1.pml:60 - [((j==assignedId))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][42] = 1;
		if (!((((P0 *)_this)->_10_1_j==((P0 *)_this)->_10_1_assignedId)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 80: // STATE 43 - problem1.pml:60 - [managementOrders[j]!orders[i].start,orders[i].end,orders[i].size] (0:0:0 - 1)
		IfNotBlocked
		reached[0][43] = 1;
		if (q_full(now.managementOrders[ Index(((P0 *)_this)->_10_1_j, 4) ]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.managementOrders[ Index(((P0 *)_this)->_10_1_j, 4) ]);
		sprintf(simtmp, "%d", ((P0 *)_this)->orders[ Index(((P0 *)_this)->i, 2) ].start); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->orders[ Index(((P0 *)_this)->i, 2) ].end); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->orders[ Index(((P0 *)_this)->i, 2) ].size); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.managementOrders[ Index(((P0 *)_this)->_10_1_j, 4) ], 0, ((P0 *)_this)->orders[ Index(((P0 *)_this)->i, 2) ].start, ((P0 *)_this)->orders[ Index(((P0 *)_this)->i, 2) ].end, ((P0 *)_this)->orders[ Index(((P0 *)_this)->i, 2) ].size, 3);
		_m = 2; goto P999; /* 0 */
	case 81: // STATE 45 - problem1.pml:61 - [] (0:47:1 - 1)
		IfNotBlocked
		reached[0][45] = 1;
		;
		/* merge: dummy.size = -(1)(47, 46, 47) */
		reached[0][46] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->_10_1_3_dummy.size;
		((P0 *)_this)->_10_1_3_dummy.size =  -(1);
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:dummy.size", ((P0 *)_this)->_10_1_3_dummy.size);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 82: // STATE 47 - problem1.pml:61 - [managementOrders[j]!dummy.start,dummy.end,dummy.size] (0:0:0 - 1)
		IfNotBlocked
		reached[0][47] = 1;
		if (q_full(now.managementOrders[ Index(((P0 *)_this)->_10_1_j, 4) ]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.managementOrders[ Index(((P0 *)_this)->_10_1_j, 4) ]);
		sprintf(simtmp, "%d", ((P0 *)_this)->_10_1_3_dummy.start); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->_10_1_3_dummy.end); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->_10_1_3_dummy.size); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.managementOrders[ Index(((P0 *)_this)->_10_1_j, 4) ], 0, ((P0 *)_this)->_10_1_3_dummy.start, ((P0 *)_this)->_10_1_3_dummy.end, ((P0 *)_this)->_10_1_3_dummy.size, 3);
		_m = 2; goto P999; /* 0 */
	case 83: // STATE 50 - problem1.pml:58 - [j = (j+1)] (0:53:1 - 3)
		IfNotBlocked
		reached[0][50] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->_10_1_j;
		((P0 *)_this)->_10_1_j = (((P0 *)_this)->_10_1_j+1);
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:j", ((P0 *)_this)->_10_1_j);
#endif
		;
		/* merge: .(goto)(0, 54, 53) */
		reached[0][54] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 84: // STATE 56 - problem1.pml:41 - [i = (i+1)] (0:59:1 - 3)
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
	case 85: // STATE 62 - problem1.pml:65 - [-end-] (0:0:0 - 3)
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


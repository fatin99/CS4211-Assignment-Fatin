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
	case 3: // STATE 1 - problem1.pml:210 - [(run Shuttle(4,2,1,0))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][1] = 1;
		if (!(addproc(II, 1, 1, 4, 2, 1, 0, 0, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 2 - problem1.pml:211 - [(run Shuttle(2,4,1,1))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][2] = 1;
		if (!(addproc(II, 1, 1, 2, 4, 1, 1, 0, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 5: // STATE 3 - problem1.pml:212 - [(run Shuttle(5,1,2,2))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][3] = 1;
		if (!(addproc(II, 1, 1, 5, 1, 2, 2, 0, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 6: // STATE 4 - problem1.pml:213 - [(run Shuttle(3,3,3,3))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][4] = 1;
		if (!(addproc(II, 1, 1, 3, 3, 3, 3, 0, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 5 - problem1.pml:214 - [] (0:13:6 - 1)
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
	case 8: // STATE 13 - problem1.pml:216 - [(run ShuttleManagementSystem(first.start,first.end,first.size,second.start,second.end,second.size))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][13] = 1;
		if (!(addproc(II, 1, 0, ((P3 *)_this)->_13_3_first.start, ((P3 *)_this)->_13_3_first.end, ((P3 *)_this)->_13_3_first.size, ((P3 *)_this)->_13_3_second.start, ((P3 *)_this)->_13_3_second.end, ((P3 *)_this)->_13_3_second.size)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 9: // STATE 14 - problem1.pml:217 - [(run RailwayNetwork())] (0:0:0 - 1)
		IfNotBlocked
		reached[3][14] = 1;
		if (!(addproc(II, 1, 2, 0, 0, 0, 0, 0, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 10: // STATE 16 - problem1.pml:219 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[3][16] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC RailwayNetwork */
	case 11: // STATE 1 - problem1.pml:186 - [shuttleRequests?request.track,request.direction,request.id] (0:0:3 - 1)
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
	case 12: // STATE 2 - problem1.pml:188 - [] (0:0:0 - 1)
		IfNotBlocked
		reached[2][2] = 1;
		;
		_m = 3; goto P999; /* 0 */
	case 13: // STATE 3 - problem1.pml:189 - [((request.direction==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][3] = 1;
		if (!((((P2 *)_this)->request.direction==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 14: // STATE 4 - problem1.pml:191 - [(!(tracks.trackL2R[request.track]))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][4] = 1;
		if (!( !(((int)now.tracks.trackL2R[ Index(((P2 *)_this)->request.track, 4) ]))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 15: // STATE 5 - problem1.pml:191 - [tracks.trackL2R[request.track] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[2][5] = 1;
		(trpt+1)->bup.oval = ((int)now.tracks.trackL2R[ Index(((P2 *)_this)->request.track, 4) ]);
		now.tracks.trackL2R[ Index(((P2 *)_this)->request.track, 4) ] = 1;
#ifdef VAR_RANGES
		logval("tracks.trackL2R[RailwayNetwork:request.track]", ((int)now.tracks.trackL2R[ Index(((P2 *)_this)->request.track, 4) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 16: // STATE 6 - problem1.pml:191 - [reply.granted = 1] (0:25:1 - 1)
		IfNotBlocked
		reached[2][6] = 1;
		(trpt+1)->bup.oval = ((int)((P2 *)_this)->reply.granted);
		((P2 *)_this)->reply.granted = 1;
#ifdef VAR_RANGES
		logval("RailwayNetwork:reply.granted", ((int)((P2 *)_this)->reply.granted));
#endif
		;
		/* merge: printf('Railway Network: granting access to track from station %d to station %d\\n',request.track,((request.track+1)%4))(25, 7, 25) */
		reached[2][7] = 1;
		Printf("Railway Network: granting access to track from station %d to station %d\n", ((P2 *)_this)->request.track, ((((P2 *)_this)->request.track+1)%4));
		/* merge: .(goto)(0, 12, 25) */
		reached[2][12] = 1;
		;
		/* merge: .(goto)(0, 24, 25) */
		reached[2][24] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 17: // STATE 9 - problem1.pml:193 - [reply.granted = 0] (0:25:1 - 1)
		IfNotBlocked
		reached[2][9] = 1;
		(trpt+1)->bup.oval = ((int)((P2 *)_this)->reply.granted);
		((P2 *)_this)->reply.granted = 0;
#ifdef VAR_RANGES
		logval("RailwayNetwork:reply.granted", ((int)((P2 *)_this)->reply.granted));
#endif
		;
		/* merge: printf('Railway Network: rejecting access to track from station %d to station %d\\n',request.track,((request.track+1)%4))(25, 10, 25) */
		reached[2][10] = 1;
		Printf("Railway Network: rejecting access to track from station %d to station %d\n", ((P2 *)_this)->request.track, ((((P2 *)_this)->request.track+1)%4));
		/* merge: .(goto)(0, 12, 25) */
		reached[2][12] = 1;
		;
		/* merge: .(goto)(0, 24, 25) */
		reached[2][24] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 18: // STATE 14 - problem1.pml:198 - [(!(tracks.trackR2L[request.track]))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][14] = 1;
		if (!( !(((int)now.tracks.trackR2L[ Index(((P2 *)_this)->request.track, 4) ]))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 19: // STATE 15 - problem1.pml:198 - [tracks.trackL2R[request.track] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[2][15] = 1;
		(trpt+1)->bup.oval = ((int)now.tracks.trackL2R[ Index(((P2 *)_this)->request.track, 4) ]);
		now.tracks.trackL2R[ Index(((P2 *)_this)->request.track, 4) ] = 1;
#ifdef VAR_RANGES
		logval("tracks.trackL2R[RailwayNetwork:request.track]", ((int)now.tracks.trackL2R[ Index(((P2 *)_this)->request.track, 4) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 20: // STATE 16 - problem1.pml:198 - [reply.granted = 1] (0:25:1 - 1)
		IfNotBlocked
		reached[2][16] = 1;
		(trpt+1)->bup.oval = ((int)((P2 *)_this)->reply.granted);
		((P2 *)_this)->reply.granted = 1;
#ifdef VAR_RANGES
		logval("RailwayNetwork:reply.granted", ((int)((P2 *)_this)->reply.granted));
#endif
		;
		/* merge: printf('Railway Network: granting access to track from station %d to station %d\\n',request.track,((request.track-1)%4))(25, 17, 25) */
		reached[2][17] = 1;
		Printf("Railway Network: granting access to track from station %d to station %d\n", ((P2 *)_this)->request.track, ((((P2 *)_this)->request.track-1)%4));
		/* merge: .(goto)(0, 22, 25) */
		reached[2][22] = 1;
		;
		/* merge: .(goto)(0, 24, 25) */
		reached[2][24] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 21: // STATE 19 - problem1.pml:200 - [reply.granted = 0] (0:25:1 - 1)
		IfNotBlocked
		reached[2][19] = 1;
		(trpt+1)->bup.oval = ((int)((P2 *)_this)->reply.granted);
		((P2 *)_this)->reply.granted = 0;
#ifdef VAR_RANGES
		logval("RailwayNetwork:reply.granted", ((int)((P2 *)_this)->reply.granted));
#endif
		;
		/* merge: printf('Railway Network: rejecting access to track from station %d to station %d\\n',request.track,((request.track-1)%4))(25, 20, 25) */
		reached[2][20] = 1;
		Printf("Railway Network: rejecting access to track from station %d to station %d\n", ((P2 *)_this)->request.track, ((((P2 *)_this)->request.track-1)%4));
		/* merge: .(goto)(0, 22, 25) */
		reached[2][22] = 1;
		;
		/* merge: .(goto)(0, 24, 25) */
		reached[2][24] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 22: // STATE 25 - problem1.pml:204 - [railwayReplies[request.id]!reply.granted] (0:0:0 - 7)
		IfNotBlocked
		reached[2][25] = 1;
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
	case 23: // STATE 29 - problem1.pml:206 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[2][29] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Shuttle */
	case 24: // STATE 1 - problem1.pml:86 - [managementOrders[id]?order.start,order.end,order.size] (0:0:3 - 1)
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
	case 25: // STATE 2 - problem1.pml:87 - [printf('Shuttle %d: processing offer for newly received order\\n',id)] (0:8:1 - 1)
		IfNotBlocked
		reached[1][2] = 1;
		Printf("Shuttle %d: processing offer for newly received order\n", ((P1 *)_this)->id);
		/* merge: currentPosition = 0(8, 3, 8) */
		reached[1][3] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->currentPosition;
		((P1 *)_this)->currentPosition = 0;
#ifdef VAR_RANGES
		logval("Shuttle:currentPosition", ((P1 *)_this)->currentPosition);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 26: // STATE 4 - problem1.pml:90 - [(travelling)] (15:0:2 - 1)
		IfNotBlocked
		reached[1][4] = 1;
		if (!(((int)((P1 *)_this)->travelling)))
			continue;
		/* merge: currentPosition = (currentStation+direction)(15, 5, 15) */
		reached[1][5] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->currentPosition;
		((P1 *)_this)->currentPosition = (((P1 *)_this)->currentStation+((P1 *)_this)->direction);
#ifdef VAR_RANGES
		logval("Shuttle:currentPosition", ((P1 *)_this)->currentPosition);
#endif
		;
		/* merge: .(goto)(15, 9, 15) */
		reached[1][9] = 1;
		;
		/* merge: distance = 0(15, 10, 15) */
		reached[1][10] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)_this)->distance;
		((P1 *)_this)->distance = 0;
#ifdef VAR_RANGES
		logval("Shuttle:distance", ((P1 *)_this)->distance);
#endif
		;
		_m = 3; goto P999; /* 3 */
	case 27: // STATE 7 - problem1.pml:91 - [currentPosition = currentStation] (0:15:2 - 1)
		IfNotBlocked
		reached[1][7] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->currentPosition;
		((P1 *)_this)->currentPosition = ((P1 *)_this)->currentStation;
#ifdef VAR_RANGES
		logval("Shuttle:currentPosition", ((P1 *)_this)->currentPosition);
#endif
		;
		/* merge: .(goto)(15, 9, 15) */
		reached[1][9] = 1;
		;
		/* merge: distance = 0(15, 10, 15) */
		reached[1][10] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)_this)->distance;
		((P1 *)_this)->distance = 0;
#ifdef VAR_RANGES
		logval("Shuttle:distance", ((P1 *)_this)->distance);
#endif
		;
		_m = 3; goto P999; /* 2 */
	case 28: // STATE 10 - problem1.pml:94 - [distance = 0] (0:15:1 - 3)
		IfNotBlocked
		reached[1][10] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->distance;
		((P1 *)_this)->distance = 0;
#ifdef VAR_RANGES
		logval("Shuttle:distance", ((P1 *)_this)->distance);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 29: // STATE 11 - problem1.pml:95 - [((currentPosition>order.start))] (21:0:1 - 1)
		IfNotBlocked
		reached[1][11] = 1;
		if (!((((P1 *)_this)->currentPosition>((P1 *)_this)->order.start)))
			continue;
		/* merge: distance = (currentPosition-order.start)(0, 12, 21) */
		reached[1][12] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->distance;
		((P1 *)_this)->distance = (((P1 *)_this)->currentPosition-((P1 *)_this)->order.start);
#ifdef VAR_RANGES
		logval("Shuttle:distance", ((P1 *)_this)->distance);
#endif
		;
		/* merge: .(goto)(0, 16, 21) */
		reached[1][16] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 30: // STATE 14 - problem1.pml:96 - [distance = (order.start-currentPosition)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][14] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->distance;
		((P1 *)_this)->distance = (((P1 *)_this)->order.start-((P1 *)_this)->currentPosition);
#ifdef VAR_RANGES
		logval("Shuttle:distance", ((P1 *)_this)->distance);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 31: // STATE 17 - problem1.pml:99 - [((distance>(4/2)))] (36:0:1 - 1)
		IfNotBlocked
		reached[1][17] = 1;
		if (!((((P1 *)_this)->distance>(4/2))))
			continue;
		/* merge: distance = (4-distance)(36, 18, 36) */
		reached[1][18] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->distance;
		((P1 *)_this)->distance = (4-((P1 *)_this)->distance);
#ifdef VAR_RANGES
		logval("Shuttle:distance", ((P1 *)_this)->distance);
#endif
		;
		/* merge: .(goto)(36, 22, 36) */
		reached[1][22] = 1;
		;
		/* merge: printf('Shuttle %d: start destination of the order is %d station(s) away from its current position\\n',id,distance)(36, 23, 36) */
		reached[1][23] = 1;
		Printf("Shuttle %d: start destination of the order is %d station(s) away from its current position\n", ((P1 *)_this)->id, ((P1 *)_this)->distance);
		/* merge: printf('Shuttle %d: current load is %d, order size is %d, capacity is %d\\n',id,currentLoad,order.size,capacity)(36, 24, 36) */
		reached[1][24] = 1;
		Printf("Shuttle %d: current load is %d, order size is %d, capacity is %d\n", ((P1 *)_this)->id, ((P1 *)_this)->currentLoad, ((P1 *)_this)->order.size, ((P1 *)_this)->capacity);
		/* merge: (36, 25, 36) */
		reached[1][25] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 32: // STATE 20 - problem1.pml:100 - [distance = distance] (0:36:1 - 1)
		IfNotBlocked
		reached[1][20] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->distance;
		((P1 *)_this)->distance = ((P1 *)_this)->distance;
#ifdef VAR_RANGES
		logval("Shuttle:distance", ((P1 *)_this)->distance);
#endif
		;
		/* merge: .(goto)(36, 22, 36) */
		reached[1][22] = 1;
		;
		/* merge: printf('Shuttle %d: start destination of the order is %d station(s) away from its current position\\n',id,distance)(36, 23, 36) */
		reached[1][23] = 1;
		Printf("Shuttle %d: start destination of the order is %d station(s) away from its current position\n", ((P1 *)_this)->id, ((P1 *)_this)->distance);
		/* merge: printf('Shuttle %d: current load is %d, order size is %d, capacity is %d\\n',id,currentLoad,order.size,capacity)(36, 24, 36) */
		reached[1][24] = 1;
		Printf("Shuttle %d: current load is %d, order size is %d, capacity is %d\n", ((P1 *)_this)->id, ((P1 *)_this)->currentLoad, ((P1 *)_this)->order.size, ((P1 *)_this)->capacity);
		/* merge: (36, 25, 36) */
		reached[1][25] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 33: // STATE 23 - problem1.pml:102 - [printf('Shuttle %d: start destination of the order is %d station(s) away from its current position\\n',id,distance)] (0:36:0 - 3)
		IfNotBlocked
		reached[1][23] = 1;
		Printf("Shuttle %d: start destination of the order is %d station(s) away from its current position\n", ((P1 *)_this)->id, ((P1 *)_this)->distance);
		/* merge: printf('Shuttle %d: current load is %d, order size is %d, capacity is %d\\n',id,currentLoad,order.size,capacity)(36, 24, 36) */
		reached[1][24] = 1;
		Printf("Shuttle %d: current load is %d, order size is %d, capacity is %d\n", ((P1 *)_this)->id, ((P1 *)_this)->currentLoad, ((P1 *)_this)->order.size, ((P1 *)_this)->capacity);
		/* merge: (36, 25, 36) */
		reached[1][25] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 34: // STATE 26 - problem1.pml:106 - [((((currentLoad+order.size)<=capacity)&&(distance<=2)))] (38:0:4 - 1)
		IfNotBlocked
		reached[1][26] = 1;
		if (!((((((P1 *)_this)->currentLoad+((P1 *)_this)->order.size)<=((P1 *)_this)->capacity)&&(((P1 *)_this)->distance<=2))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: distance */  (trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->distance;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->distance = 0;
		/* merge: offer.id = id(38, 27, 38) */
		reached[1][27] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)_this)->offer.id;
		((P1 *)_this)->offer.id = ((P1 *)_this)->id;
#ifdef VAR_RANGES
		logval("Shuttle:offer.id", ((P1 *)_this)->offer.id);
#endif
		;
		/* merge: offer.charge = charge(38, 28, 38) */
		reached[1][28] = 1;
		(trpt+1)->bup.ovals[2] = ((P1 *)_this)->offer.charge;
		((P1 *)_this)->offer.charge = ((P1 *)_this)->charge;
#ifdef VAR_RANGES
		logval("Shuttle:offer.charge", ((P1 *)_this)->offer.charge);
#endif
		;
		/* merge: offer.refuse = 0(38, 29, 38) */
		reached[1][29] = 1;
		(trpt+1)->bup.ovals[3] = ((int)((P1 *)_this)->offer.refuse);
		((P1 *)_this)->offer.refuse = 0;
#ifdef VAR_RANGES
		logval("Shuttle:offer.refuse", ((int)((P1 *)_this)->offer.refuse));
#endif
		;
		/* merge: printf('Shuttle %d: order accepted\\n',id)(38, 30, 38) */
		reached[1][30] = 1;
		Printf("Shuttle %d: order accepted\n", ((P1 *)_this)->id);
		/* merge: .(goto)(0, 37, 38) */
		reached[1][37] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 35: // STATE 32 - problem1.pml:110 - [offer.id = id] (0:38:3 - 1)
		IfNotBlocked
		reached[1][32] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->offer.id;
		((P1 *)_this)->offer.id = ((P1 *)_this)->id;
#ifdef VAR_RANGES
		logval("Shuttle:offer.id", ((P1 *)_this)->offer.id);
#endif
		;
		/* merge: offer.charge = charge(38, 33, 38) */
		reached[1][33] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)_this)->offer.charge;
		((P1 *)_this)->offer.charge = ((P1 *)_this)->charge;
#ifdef VAR_RANGES
		logval("Shuttle:offer.charge", ((P1 *)_this)->offer.charge);
#endif
		;
		/* merge: offer.refuse = 1(38, 34, 38) */
		reached[1][34] = 1;
		(trpt+1)->bup.ovals[2] = ((int)((P1 *)_this)->offer.refuse);
		((P1 *)_this)->offer.refuse = 1;
#ifdef VAR_RANGES
		logval("Shuttle:offer.refuse", ((int)((P1 *)_this)->offer.refuse));
#endif
		;
		/* merge: printf('Shuttle %d: order refused\\n',id)(38, 35, 38) */
		reached[1][35] = 1;
		Printf("Shuttle %d: order refused\n", ((P1 *)_this)->id);
		/* merge: .(goto)(0, 37, 38) */
		reached[1][37] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 36: // STATE 38 - problem1.pml:113 - [shuttleOffers!offer.id,offer.charge,offer.refuse] (0:0:0 - 3)
		IfNotBlocked
		reached[1][38] = 1;
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
	case 37: // STATE 39 - problem1.pml:114 - [managementOrders[id]?order.start,order.end,order.size] (0:0:3 - 1)
		reached[1][39] = 1;
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
	case 38: // STATE 40 - problem1.pml:116 - [((order.size>=0))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][40] = 1;
		if (!((((P1 *)_this)->order.size>=0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 39: // STATE 41 - problem1.pml:116 - [orders!order.start,order.end,order.size] (0:0:0 - 1)
		IfNotBlocked
		reached[1][41] = 1;
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
	case 40: // STATE 42 - problem1.pml:116 - [printf('Shuttle %d: offer accepted by management\\n',id)] (0:0:0 - 1)
		IfNotBlocked
		reached[1][42] = 1;
		Printf("Shuttle %d: offer accepted by management\n", ((P1 *)_this)->id);
		_m = 3; goto P999; /* 0 */
	case 41: // STATE 47 - problem1.pml:119 - [((nempty(orders)&&!(processingOrder)))] (0:0:1 - 1)
		IfNotBlocked
		reached[1][47] = 1;
		if (!(((q_len(((P1 *)_this)->orders)>0)&& !(((int)((P1 *)_this)->processingOrder)))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: processingOrder */  (trpt+1)->bup.oval = ((P1 *)_this)->processingOrder;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->processingOrder = 0;
		_m = 3; goto P999; /* 0 */
	case 42: // STATE 48 - problem1.pml:120 - [orders?currentOrder.start,currentOrder.end,currentOrder.size] (0:0:3 - 1)
		reached[1][48] = 1;
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
	case 43: // STATE 49 - problem1.pml:121 - [processingOrder = 1] (0:59:3 - 1)
		IfNotBlocked
		reached[1][49] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)((P1 *)_this)->processingOrder);
		((P1 *)_this)->processingOrder = 1;
#ifdef VAR_RANGES
		logval("Shuttle:processingOrder", ((int)((P1 *)_this)->processingOrder));
#endif
		;
		/* merge: destination = currentOrder.start(59, 50, 59) */
		reached[1][50] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)_this)->destination;
		((P1 *)_this)->destination = ((P1 *)_this)->currentOrder.start;
#ifdef VAR_RANGES
		logval("Shuttle:destination", ((P1 *)_this)->destination);
#endif
		;
		/* merge: travelling = 1(59, 51, 59) */
		reached[1][51] = 1;
		(trpt+1)->bup.ovals[2] = ((int)((P1 *)_this)->travelling);
		((P1 *)_this)->travelling = 1;
#ifdef VAR_RANGES
		logval("Shuttle:travelling", ((int)((P1 *)_this)->travelling));
#endif
		;
		/* merge: printf('Shuttle %d: beggining new order from station %d to station %d with size &d\\n',id,currentOrder.start,currentOrder.end,currentOrder.size)(59, 52, 59) */
		reached[1][52] = 1;
		Printf("Shuttle %d: beggining new order from station %d to station %d with size &d\n", ((P1 *)_this)->id, ((P1 *)_this)->currentOrder.start, ((P1 *)_this)->currentOrder.end, ((P1 *)_this)->currentOrder.size);
		_m = 3; goto P999; /* 3 */
	case 44: // STATE 53 - problem1.pml:126 - [(((currentOrder.start>=currentStation)&&((currentOrder.start-currentStation)<(4/2))))] (125:0:1 - 1)
		IfNotBlocked
		reached[1][53] = 1;
		if (!(((((P1 *)_this)->currentOrder.start>=((P1 *)_this)->currentStation)&&((((P1 *)_this)->currentOrder.start-((P1 *)_this)->currentStation)<(4/2)))))
			continue;
		/* merge: direction = 1(125, 54, 125) */
		reached[1][54] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->direction;
		((P1 *)_this)->direction = 1;
#ifdef VAR_RANGES
		logval("Shuttle:direction", ((P1 *)_this)->direction);
#endif
		;
		/* merge: printf('Shuttle %d: travelling left to right\\n',id)(125, 55, 125) */
		reached[1][55] = 1;
		Printf("Shuttle %d: travelling left to right\n", ((P1 *)_this)->id);
		/* merge: .(goto)(0, 60, 125) */
		reached[1][60] = 1;
		;
		/* merge: .(goto)(0, 126, 125) */
		reached[1][126] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 45: // STATE 57 - problem1.pml:128 - [direction = -(1)] (0:125:1 - 1)
		IfNotBlocked
		reached[1][57] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->direction;
		((P1 *)_this)->direction =  -(1);
#ifdef VAR_RANGES
		logval("Shuttle:direction", ((P1 *)_this)->direction);
#endif
		;
		/* merge: printf('Shuttle %d: travelling right to left\\n',id)(125, 58, 125) */
		reached[1][58] = 1;
		Printf("Shuttle %d: travelling right to left\n", ((P1 *)_this)->id);
		/* merge: .(goto)(0, 60, 125) */
		reached[1][60] = 1;
		;
		/* merge: .(goto)(0, 126, 125) */
		reached[1][126] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 46: // STATE 61 - problem1.pml:130 - [((!(travelling)&&processingOrder))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][61] = 1;
		if (!(( !(((int)((P1 *)_this)->travelling))&&((int)((P1 *)_this)->processingOrder))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 47: // STATE 62 - problem1.pml:132 - [((destination==currentOrder.start))] (73:0:4 - 1)
		IfNotBlocked
		reached[1][62] = 1;
		if (!((((P1 *)_this)->destination==((P1 *)_this)->currentOrder.start)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: destination */  (trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->destination;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->destination = 0;
		/* merge: printf('Shuttle %d: loading %d people at station %d\\n',id,currentOrder.size,currentOrder.start)(73, 63, 73) */
		reached[1][63] = 1;
		Printf("Shuttle %d: loading %d people at station %d\n", ((P1 *)_this)->id, ((P1 *)_this)->currentOrder.size, ((P1 *)_this)->currentOrder.start);
		/* merge: currentLoad = (currentLoad+currentOrder.size)(73, 64, 73) */
		reached[1][64] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)_this)->currentLoad;
		((P1 *)_this)->currentLoad = (((P1 *)_this)->currentLoad+((P1 *)_this)->currentOrder.size);
#ifdef VAR_RANGES
		logval("Shuttle:currentLoad", ((P1 *)_this)->currentLoad);
#endif
		;
		/* merge: destination = currentOrder.end(73, 65, 73) */
		reached[1][65] = 1;
		(trpt+1)->bup.ovals[2] = ((P1 *)_this)->destination;
		((P1 *)_this)->destination = ((P1 *)_this)->currentOrder.end;
#ifdef VAR_RANGES
		logval("Shuttle:destination", ((P1 *)_this)->destination);
#endif
		;
		/* merge: travelling = 1(73, 66, 73) */
		reached[1][66] = 1;
		(trpt+1)->bup.ovals[3] = ((int)((P1 *)_this)->travelling);
		((P1 *)_this)->travelling = 1;
#ifdef VAR_RANGES
		logval("Shuttle:travelling", ((int)((P1 *)_this)->travelling));
#endif
		;
		_m = 3; goto P999; /* 4 */
	case 48: // STATE 67 - problem1.pml:138 - [(((currentOrder.start>=currentStation)&&((currentOrder.start-currentStation)<(4/2))))] (125:0:1 - 1)
		IfNotBlocked
		reached[1][67] = 1;
		if (!(((((P1 *)_this)->currentOrder.start>=((P1 *)_this)->currentStation)&&((((P1 *)_this)->currentOrder.start-((P1 *)_this)->currentStation)<(4/2)))))
			continue;
		/* merge: direction = 1(125, 68, 125) */
		reached[1][68] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->direction;
		((P1 *)_this)->direction = 1;
#ifdef VAR_RANGES
		logval("Shuttle:direction", ((P1 *)_this)->direction);
#endif
		;
		/* merge: printf('Shuttle %d: travelling left to right\\n',id)(125, 69, 125) */
		reached[1][69] = 1;
		Printf("Shuttle %d: travelling left to right\n", ((P1 *)_this)->id);
		/* merge: .(goto)(0, 74, 125) */
		reached[1][74] = 1;
		;
		/* merge: .(goto)(0, 82, 125) */
		reached[1][82] = 1;
		;
		/* merge: .(goto)(0, 126, 125) */
		reached[1][126] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 49: // STATE 71 - problem1.pml:140 - [direction = -(1)] (0:125:1 - 1)
		IfNotBlocked
		reached[1][71] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->direction;
		((P1 *)_this)->direction =  -(1);
#ifdef VAR_RANGES
		logval("Shuttle:direction", ((P1 *)_this)->direction);
#endif
		;
		/* merge: printf('Shuttle %d: travelling right to left\\n',id)(125, 72, 125) */
		reached[1][72] = 1;
		Printf("Shuttle %d: travelling right to left\n", ((P1 *)_this)->id);
		/* merge: .(goto)(0, 74, 125) */
		reached[1][74] = 1;
		;
		/* merge: .(goto)(0, 82, 125) */
		reached[1][82] = 1;
		;
		/* merge: .(goto)(0, 126, 125) */
		reached[1][126] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 50: // STATE 75 - problem1.pml:142 - [((destination==currentOrder.end))] (125:0:2 - 1)
		IfNotBlocked
		reached[1][75] = 1;
		if (!((((P1 *)_this)->destination==((P1 *)_this)->currentOrder.end)))
			continue;
		/* merge: printf('Shuttle %d: unloading %d people at station %d\\n',id,currentOrder.size,currentOrder.end)(125, 76, 125) */
		reached[1][76] = 1;
		Printf("Shuttle %d: unloading %d people at station %d\n", ((P1 *)_this)->id, ((P1 *)_this)->currentOrder.size, ((P1 *)_this)->currentOrder.end);
		/* merge: currentLoad = (currentLoad-currentOrder.size)(125, 77, 125) */
		reached[1][77] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->currentLoad;
		((P1 *)_this)->currentLoad = (((P1 *)_this)->currentLoad-((P1 *)_this)->currentOrder.size);
#ifdef VAR_RANGES
		logval("Shuttle:currentLoad", ((P1 *)_this)->currentLoad);
#endif
		;
		/* merge: processingOrder = 0(125, 78, 125) */
		reached[1][78] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P1 *)_this)->processingOrder);
		((P1 *)_this)->processingOrder = 0;
#ifdef VAR_RANGES
		logval("Shuttle:processingOrder", ((int)((P1 *)_this)->processingOrder));
#endif
		;
		/* merge: .(goto)(0, 82, 125) */
		reached[1][82] = 1;
		;
		/* merge: .(goto)(0, 126, 125) */
		reached[1][126] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 51: // STATE 83 - problem1.pml:148 - [((travelling&&processingOrder))] (92:0:3 - 1)
		IfNotBlocked
		reached[1][83] = 1;
		if (!((((int)((P1 *)_this)->travelling)&&((int)((P1 *)_this)->processingOrder))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: travelling */  (trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->travelling;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->travelling = 0;
		/* merge: nextStation = 0(92, 84, 92) */
		reached[1][84] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)_this)->nextStation;
		((P1 *)_this)->nextStation = 0;
#ifdef VAR_RANGES
		logval("Shuttle:nextStation", ((P1 *)_this)->nextStation);
#endif
		;
		/* merge: nextStation = (currentStation+direction)(92, 85, 92) */
		reached[1][85] = 1;
		(trpt+1)->bup.ovals[2] = ((P1 *)_this)->nextStation;
		((P1 *)_this)->nextStation = (((P1 *)_this)->currentStation+((P1 *)_this)->direction);
#ifdef VAR_RANGES
		logval("Shuttle:nextStation", ((P1 *)_this)->nextStation);
#endif
		;
		_m = 3; goto P999; /* 2 */
	case 52: // STATE 86 - problem1.pml:152 - [((nextStation>=4))] (108:0:5 - 1)
		IfNotBlocked
		reached[1][86] = 1;
		if (!((((P1 *)_this)->nextStation>=4)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: nextStation */  (trpt+1)->bup.ovals = grab_ints(5);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->nextStation;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->nextStation = 0;
		/* merge: nextStation = 0(108, 87, 108) */
		reached[1][87] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)_this)->nextStation;
		((P1 *)_this)->nextStation = 0;
#ifdef VAR_RANGES
		logval("Shuttle:nextStation", ((P1 *)_this)->nextStation);
#endif
		;
		/* merge: .(goto)(108, 93, 108) */
		reached[1][93] = 1;
		;
		/* merge: (108, 94, 108) */
		reached[1][94] = 1;
		;
		/* merge: request.id = id(108, 95, 108) */
		reached[1][95] = 1;
		(trpt+1)->bup.ovals[2] = ((P1 *)_this)->request.id;
		((P1 *)_this)->request.id = ((P1 *)_this)->id;
#ifdef VAR_RANGES
		logval("Shuttle:request.id", ((P1 *)_this)->request.id);
#endif
		;
		/* merge: request.direction = direction(108, 96, 108) */
		reached[1][96] = 1;
		(trpt+1)->bup.ovals[3] = ((P1 *)_this)->request.direction;
		((P1 *)_this)->request.direction = ((P1 *)_this)->direction;
#ifdef VAR_RANGES
		logval("Shuttle:request.direction", ((P1 *)_this)->request.direction);
#endif
		;
		/* merge: request.track = nextStation(108, 97, 108) */
		reached[1][97] = 1;
		(trpt+1)->bup.ovals[4] = ((P1 *)_this)->request.track;
		((P1 *)_this)->request.track = ((P1 *)_this)->nextStation;
#ifdef VAR_RANGES
		logval("Shuttle:request.track", ((P1 *)_this)->request.track);
#endif
		;
		/* merge: (108, 98, 108) */
		reached[1][98] = 1;
		;
		/* merge: printf('Shuttle %d: requesting access to travel from station %d to statiod %d\\n',id,currentStation,nextStation)(108, 99, 108) */
		reached[1][99] = 1;
		Printf("Shuttle %d: requesting access to travel from station %d to statiod %d\n", ((P1 *)_this)->id, ((P1 *)_this)->currentStation, ((P1 *)_this)->nextStation);
		/* merge: .(goto)(0, 109, 108) */
		reached[1][109] = 1;
		;
		_m = 3; goto P999; /* 9 */
	case 53: // STATE 88 - problem1.pml:153 - [((nextStation<0))] (108:0:5 - 1)
		IfNotBlocked
		reached[1][88] = 1;
		if (!((((P1 *)_this)->nextStation<0)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: nextStation */  (trpt+1)->bup.ovals = grab_ints(5);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->nextStation;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->nextStation = 0;
		/* merge: nextStation = (4-1)(108, 89, 108) */
		reached[1][89] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)_this)->nextStation;
		((P1 *)_this)->nextStation = (4-1);
#ifdef VAR_RANGES
		logval("Shuttle:nextStation", ((P1 *)_this)->nextStation);
#endif
		;
		/* merge: .(goto)(108, 93, 108) */
		reached[1][93] = 1;
		;
		/* merge: (108, 94, 108) */
		reached[1][94] = 1;
		;
		/* merge: request.id = id(108, 95, 108) */
		reached[1][95] = 1;
		(trpt+1)->bup.ovals[2] = ((P1 *)_this)->request.id;
		((P1 *)_this)->request.id = ((P1 *)_this)->id;
#ifdef VAR_RANGES
		logval("Shuttle:request.id", ((P1 *)_this)->request.id);
#endif
		;
		/* merge: request.direction = direction(108, 96, 108) */
		reached[1][96] = 1;
		(trpt+1)->bup.ovals[3] = ((P1 *)_this)->request.direction;
		((P1 *)_this)->request.direction = ((P1 *)_this)->direction;
#ifdef VAR_RANGES
		logval("Shuttle:request.direction", ((P1 *)_this)->request.direction);
#endif
		;
		/* merge: request.track = nextStation(108, 97, 108) */
		reached[1][97] = 1;
		(trpt+1)->bup.ovals[4] = ((P1 *)_this)->request.track;
		((P1 *)_this)->request.track = ((P1 *)_this)->nextStation;
#ifdef VAR_RANGES
		logval("Shuttle:request.track", ((P1 *)_this)->request.track);
#endif
		;
		/* merge: (108, 98, 108) */
		reached[1][98] = 1;
		;
		/* merge: printf('Shuttle %d: requesting access to travel from station %d to statiod %d\\n',id,currentStation,nextStation)(108, 99, 108) */
		reached[1][99] = 1;
		Printf("Shuttle %d: requesting access to travel from station %d to statiod %d\n", ((P1 *)_this)->id, ((P1 *)_this)->currentStation, ((P1 *)_this)->nextStation);
		/* merge: .(goto)(0, 109, 108) */
		reached[1][109] = 1;
		;
		_m = 3; goto P999; /* 9 */
	case 54: // STATE 91 - problem1.pml:154 - [(1)] (108:0:3 - 1)
		IfNotBlocked
		reached[1][91] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(108, 93, 108) */
		reached[1][93] = 1;
		;
		/* merge: (108, 94, 108) */
		reached[1][94] = 1;
		;
		/* merge: request.id = id(108, 95, 108) */
		reached[1][95] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->request.id;
		((P1 *)_this)->request.id = ((P1 *)_this)->id;
#ifdef VAR_RANGES
		logval("Shuttle:request.id", ((P1 *)_this)->request.id);
#endif
		;
		/* merge: request.direction = direction(108, 96, 108) */
		reached[1][96] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)_this)->request.direction;
		((P1 *)_this)->request.direction = ((P1 *)_this)->direction;
#ifdef VAR_RANGES
		logval("Shuttle:request.direction", ((P1 *)_this)->request.direction);
#endif
		;
		/* merge: request.track = nextStation(108, 97, 108) */
		reached[1][97] = 1;
		(trpt+1)->bup.ovals[2] = ((P1 *)_this)->request.track;
		((P1 *)_this)->request.track = ((P1 *)_this)->nextStation;
#ifdef VAR_RANGES
		logval("Shuttle:request.track", ((P1 *)_this)->request.track);
#endif
		;
		/* merge: (108, 98, 108) */
		reached[1][98] = 1;
		;
		/* merge: printf('Shuttle %d: requesting access to travel from station %d to statiod %d\\n',id,currentStation,nextStation)(108, 99, 108) */
		reached[1][99] = 1;
		Printf("Shuttle %d: requesting access to travel from station %d to statiod %d\n", ((P1 *)_this)->id, ((P1 *)_this)->currentStation, ((P1 *)_this)->nextStation);
		/* merge: .(goto)(0, 109, 108) */
		reached[1][109] = 1;
		;
		_m = 3; goto P999; /* 8 */
	case 55: // STATE 94 - problem1.pml:157 - [] (0:108:3 - 4)
		IfNotBlocked
		reached[1][94] = 1;
		;
		/* merge: request.id = id(108, 95, 108) */
		reached[1][95] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->request.id;
		((P1 *)_this)->request.id = ((P1 *)_this)->id;
#ifdef VAR_RANGES
		logval("Shuttle:request.id", ((P1 *)_this)->request.id);
#endif
		;
		/* merge: request.direction = direction(108, 96, 108) */
		reached[1][96] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)_this)->request.direction;
		((P1 *)_this)->request.direction = ((P1 *)_this)->direction;
#ifdef VAR_RANGES
		logval("Shuttle:request.direction", ((P1 *)_this)->request.direction);
#endif
		;
		/* merge: request.track = nextStation(108, 97, 108) */
		reached[1][97] = 1;
		(trpt+1)->bup.ovals[2] = ((P1 *)_this)->request.track;
		((P1 *)_this)->request.track = ((P1 *)_this)->nextStation;
#ifdef VAR_RANGES
		logval("Shuttle:request.track", ((P1 *)_this)->request.track);
#endif
		;
		/* merge: (108, 98, 108) */
		reached[1][98] = 1;
		;
		/* merge: printf('Shuttle %d: requesting access to travel from station %d to statiod %d\\n',id,currentStation,nextStation)(108, 99, 108) */
		reached[1][99] = 1;
		Printf("Shuttle %d: requesting access to travel from station %d to statiod %d\n", ((P1 *)_this)->id, ((P1 *)_this)->currentStation, ((P1 *)_this)->nextStation);
		/* merge: .(goto)(0, 109, 108) */
		reached[1][109] = 1;
		;
		_m = 3; goto P999; /* 6 */
	case 56: // STATE 100 - problem1.pml:161 - [shuttleRequests!request.track,request.direction,request.id] (0:0:0 - 1)
		IfNotBlocked
		reached[1][100] = 1;
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
	case 57: // STATE 101 - problem1.pml:162 - [railwayReplies[id]?reply.granted] (0:0:1 - 1)
		reached[1][101] = 1;
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
	case 58: // STATE 102 - problem1.pml:164 - [(reply.granted)] (117:0:1 - 1)
		IfNotBlocked
		reached[1][102] = 1;
		if (!(((int)((P1 *)_this)->reply.granted)))
			continue;
		/* merge: goto :b5(117, 103, 117) */
		reached[1][103] = 1;
		;
		/* merge: printf('Shuttle %d: travelling from station %d to statiod %d\\n',id,currentStation,nextStation)(117, 111, 117) */
		reached[1][111] = 1;
		Printf("Shuttle %d: travelling from station %d to statiod %d\n", ((P1 *)_this)->id, ((P1 *)_this)->currentStation, ((P1 *)_this)->nextStation);
		/* merge: currentStation = nextStation(117, 112, 117) */
		reached[1][112] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->currentStation;
		((P1 *)_this)->currentStation = ((P1 *)_this)->nextStation;
#ifdef VAR_RANGES
		logval("Shuttle:currentStation", ((P1 *)_this)->currentStation);
#endif
		;
		_m = 3; goto P999; /* 3 */
	case 59: // STATE 111 - problem1.pml:168 - [printf('Shuttle %d: travelling from station %d to statiod %d\\n',id,currentStation,nextStation)] (0:117:1 - 3)
		IfNotBlocked
		reached[1][111] = 1;
		Printf("Shuttle %d: travelling from station %d to statiod %d\n", ((P1 *)_this)->id, ((P1 *)_this)->currentStation, ((P1 *)_this)->nextStation);
		/* merge: currentStation = nextStation(117, 112, 117) */
		reached[1][112] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->currentStation;
		((P1 *)_this)->currentStation = ((P1 *)_this)->nextStation;
#ifdef VAR_RANGES
		logval("Shuttle:currentStation", ((P1 *)_this)->currentStation);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 60: // STATE 113 - problem1.pml:171 - [((direction==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][113] = 1;
		if (!((((P1 *)_this)->direction==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 61: // STATE 114 - problem1.pml:171 - [tracks.trackL2R[request.track] = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][114] = 1;
		(trpt+1)->bup.oval = ((int)now.tracks.trackL2R[ Index(((P1 *)_this)->request.track, 4) ]);
		now.tracks.trackL2R[ Index(((P1 *)_this)->request.track, 4) ] = 0;
#ifdef VAR_RANGES
		logval("tracks.trackL2R[Shuttle:request.track]", ((int)now.tracks.trackL2R[ Index(((P1 *)_this)->request.track, 4) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 62: // STATE 115 - problem1.pml:172 - [((direction==-(1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][115] = 1;
		if (!((((P1 *)_this)->direction== -(1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 63: // STATE 116 - problem1.pml:172 - [tracks.trackR2L[request.track] = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][116] = 1;
		(trpt+1)->bup.oval = ((int)now.tracks.trackR2L[ Index(((P1 *)_this)->request.track, 4) ]);
		now.tracks.trackR2L[ Index(((P1 *)_this)->request.track, 4) ] = 0;
#ifdef VAR_RANGES
		logval("tracks.trackR2L[Shuttle:request.track]", ((int)now.tracks.trackR2L[ Index(((P1 *)_this)->request.track, 4) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 64: // STATE 119 - problem1.pml:175 - [((currentStation==destination))] (125:0:1 - 1)
		IfNotBlocked
		reached[1][119] = 1;
		if (!((((P1 *)_this)->currentStation==((P1 *)_this)->destination)))
			continue;
		/* merge: travelling = 0(0, 120, 125) */
		reached[1][120] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)_this)->travelling);
		((P1 *)_this)->travelling = 0;
#ifdef VAR_RANGES
		logval("Shuttle:travelling", ((int)((P1 *)_this)->travelling));
#endif
		;
		/* merge: .(goto)(0, 124, 125) */
		reached[1][124] = 1;
		;
		/* merge: .(goto)(0, 126, 125) */
		reached[1][126] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 65: // STATE 122 - problem1.pml:176 - [travelling = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][122] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)_this)->travelling);
		((P1 *)_this)->travelling = 1;
#ifdef VAR_RANGES
		logval("Shuttle:travelling", ((int)((P1 *)_this)->travelling));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 66: // STATE 128 - problem1.pml:179 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][128] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC ShuttleManagementSystem */
	case 67: // STATE 1 - problem1.pml:41 - [orders[0].start = first.start] (0:62:8 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		(trpt+1)->bup.ovals = grab_ints(8);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->orders[0].start;
		((P0 *)_this)->orders[0].start = ((P0 *)_this)->first.start;
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:orders[0].start", ((P0 *)_this)->orders[0].start);
#endif
		;
		/* merge: orders[0].end = first.end(62, 2, 62) */
		reached[0][2] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->orders[0].end;
		((P0 *)_this)->orders[0].end = ((P0 *)_this)->first.end;
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:orders[0].end", ((P0 *)_this)->orders[0].end);
#endif
		;
		/* merge: orders[0].size = first.size(62, 3, 62) */
		reached[0][3] = 1;
		(trpt+1)->bup.ovals[2] = ((P0 *)_this)->orders[0].size;
		((P0 *)_this)->orders[0].size = ((P0 *)_this)->first.size;
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:orders[0].size", ((P0 *)_this)->orders[0].size);
#endif
		;
		/* merge: orders[1].start = second.start(62, 4, 62) */
		reached[0][4] = 1;
		(trpt+1)->bup.ovals[3] = ((P0 *)_this)->orders[1].start;
		((P0 *)_this)->orders[1].start = ((P0 *)_this)->second.start;
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:orders[1].start", ((P0 *)_this)->orders[1].start);
#endif
		;
		/* merge: orders[1].end = second.end(62, 5, 62) */
		reached[0][5] = 1;
		(trpt+1)->bup.ovals[4] = ((P0 *)_this)->orders[1].end;
		((P0 *)_this)->orders[1].end = ((P0 *)_this)->second.end;
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:orders[1].end", ((P0 *)_this)->orders[1].end);
#endif
		;
		/* merge: orders[1].size = second.size(62, 6, 62) */
		reached[0][6] = 1;
		(trpt+1)->bup.ovals[5] = ((P0 *)_this)->orders[1].size;
		((P0 *)_this)->orders[1].size = ((P0 *)_this)->second.size;
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:orders[1].size", ((P0 *)_this)->orders[1].size);
#endif
		;
		/* merge: i = 0(62, 7, 62) */
		reached[0][7] = 1;
		(trpt+1)->bup.ovals[6] = ((P0 *)_this)->i;
		((P0 *)_this)->i = 0;
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:i", ((P0 *)_this)->i);
#endif
		;
		/* merge: i = 0(62, 8, 62) */
		reached[0][8] = 1;
		(trpt+1)->bup.ovals[7] = ((P0 *)_this)->i;
		((P0 *)_this)->i = 0;
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:i", ((P0 *)_this)->i);
#endif
		;
		/* merge: .(goto)(0, 63, 62) */
		reached[0][63] = 1;
		;
		_m = 3; goto P999; /* 8 */
	case 68: // STATE 9 - problem1.pml:44 - [((i<=(2-1)))] (18:0:2 - 1)
		IfNotBlocked
		reached[0][9] = 1;
		if (!((((P0 *)_this)->i<=(2-1))))
			continue;
		/* merge: j = 0(18, 10, 18) */
		reached[0][10] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->_10_1_j;
		((P0 *)_this)->_10_1_j = 0;
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:j", ((P0 *)_this)->_10_1_j);
#endif
		;
		/* merge: j = 0(18, 11, 18) */
		reached[0][11] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->_10_1_j;
		((P0 *)_this)->_10_1_j = 0;
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:j", ((P0 *)_this)->_10_1_j);
#endif
		;
		/* merge: .(goto)(0, 19, 18) */
		reached[0][19] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 69: // STATE 12 - problem1.pml:46 - [((j<=(4-1)))] (14:0:0 - 1)
		IfNotBlocked
		reached[0][12] = 1;
		if (!((((P0 *)_this)->_10_1_j<=(4-1))))
			continue;
		/* merge: printf('Shuttle Management System: sending order %d to shuttle %d\\n',i,j)(0, 13, 14) */
		reached[0][13] = 1;
		Printf("Shuttle Management System: sending order %d to shuttle %d\n", ((P0 *)_this)->i, ((P0 *)_this)->_10_1_j);
		_m = 3; goto P999; /* 1 */
	case 70: // STATE 14 - problem1.pml:48 - [managementOrders[j]!orders[i].start,orders[i].end,orders[i].size] (0:0:0 - 1)
		IfNotBlocked
		reached[0][14] = 1;
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
	case 71: // STATE 15 - problem1.pml:46 - [j = (j+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][15] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->_10_1_j;
		((P0 *)_this)->_10_1_j = (((P0 *)_this)->_10_1_j+1);
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:j", ((P0 *)_this)->_10_1_j);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 72: // STATE 21 - problem1.pml:51 - [minCharge = 2147483647] (0:39:3 - 3)
		IfNotBlocked
		reached[0][21] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->_10_1_minCharge;
		((P0 *)_this)->_10_1_minCharge = 2147483647;
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:minCharge", ((P0 *)_this)->_10_1_minCharge);
#endif
		;
		/* merge: assignedId = 0(39, 22, 39) */
		reached[0][22] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->_10_1_assignedId;
		((P0 *)_this)->_10_1_assignedId = 0;
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:assignedId", ((P0 *)_this)->_10_1_assignedId);
#endif
		;
		/* merge: j = 0(39, 23, 39) */
		reached[0][23] = 1;
		(trpt+1)->bup.ovals[2] = ((P0 *)_this)->_10_1_j;
		((P0 *)_this)->_10_1_j = 0;
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:j", ((P0 *)_this)->_10_1_j);
#endif
		;
		/* merge: .(goto)(0, 40, 39) */
		reached[0][40] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 73: // STATE 24 - problem1.pml:54 - [((j<=(4-1)))] (27:0:0 - 1)
		IfNotBlocked
		reached[0][24] = 1;
		if (!((((P0 *)_this)->_10_1_j<=(4-1))))
			continue;
		/* merge: (27, 25, 27) */
		reached[0][25] = 1;
		;
		/* merge: printf('Shuttle Management System: receiving offer for order %d from shuttle %d\\n',i,j)(27, 26, 27) */
		reached[0][26] = 1;
		Printf("Shuttle Management System: receiving offer for order %d from shuttle %d\n", ((P0 *)_this)->i, ((P0 *)_this)->_10_1_j);
		_m = 3; goto P999; /* 2 */
	case 74: // STATE 27 - problem1.pml:57 - [shuttleOffers?offer.id,offer.charge,offer.refuse] (0:0:3 - 1)
		reached[0][27] = 1;
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
	case 75: // STATE 28 - problem1.pml:59 - [(((offer.charge<minCharge)&&!(offer.refuse)))] (39:0:4 - 1)
		IfNotBlocked
		reached[0][28] = 1;
		if (!(((((P0 *)_this)->_10_1_2_offer.charge<((P0 *)_this)->_10_1_minCharge)&& !(((int)((P0 *)_this)->_10_1_2_offer.refuse)))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: _10_1_minCharge */  (trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->_10_1_minCharge;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->_10_1_minCharge = 0;
		/* merge: minCharge = offer.charge(39, 29, 39) */
		reached[0][29] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->_10_1_minCharge;
		((P0 *)_this)->_10_1_minCharge = ((P0 *)_this)->_10_1_2_offer.charge;
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:minCharge", ((P0 *)_this)->_10_1_minCharge);
#endif
		;
		/* merge: assignedId = offer.id(39, 30, 39) */
		reached[0][30] = 1;
		(trpt+1)->bup.ovals[2] = ((P0 *)_this)->_10_1_assignedId;
		((P0 *)_this)->_10_1_assignedId = ((P0 *)_this)->_10_1_2_offer.id;
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:assignedId", ((P0 *)_this)->_10_1_assignedId);
#endif
		;
		/* merge: .(goto)(39, 35, 39) */
		reached[0][35] = 1;
		;
		/* merge: j = (j+1)(39, 36, 39) */
		reached[0][36] = 1;
		(trpt+1)->bup.ovals[3] = ((P0 *)_this)->_10_1_j;
		((P0 *)_this)->_10_1_j = (((P0 *)_this)->_10_1_j+1);
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:j", ((P0 *)_this)->_10_1_j);
#endif
		;
		/* merge: .(goto)(0, 40, 39) */
		reached[0][40] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 76: // STATE 32 - problem1.pml:60 - [minCharge = minCharge] (0:39:3 - 1)
		IfNotBlocked
		reached[0][32] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->_10_1_minCharge;
		((P0 *)_this)->_10_1_minCharge = ((P0 *)_this)->_10_1_minCharge;
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:minCharge", ((P0 *)_this)->_10_1_minCharge);
#endif
		;
		/* merge: assignedId = assignedId(39, 33, 39) */
		reached[0][33] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->_10_1_assignedId;
		((P0 *)_this)->_10_1_assignedId = ((P0 *)_this)->_10_1_assignedId;
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:assignedId", ((P0 *)_this)->_10_1_assignedId);
#endif
		;
		/* merge: .(goto)(39, 35, 39) */
		reached[0][35] = 1;
		;
		/* merge: j = (j+1)(39, 36, 39) */
		reached[0][36] = 1;
		(trpt+1)->bup.ovals[2] = ((P0 *)_this)->_10_1_j;
		((P0 *)_this)->_10_1_j = (((P0 *)_this)->_10_1_j+1);
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:j", ((P0 *)_this)->_10_1_j);
#endif
		;
		/* merge: .(goto)(0, 40, 39) */
		reached[0][40] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 77: // STATE 36 - problem1.pml:54 - [j = (j+1)] (0:39:1 - 3)
		IfNotBlocked
		reached[0][36] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->_10_1_j;
		((P0 *)_this)->_10_1_j = (((P0 *)_this)->_10_1_j+1);
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:j", ((P0 *)_this)->_10_1_j);
#endif
		;
		/* merge: .(goto)(0, 40, 39) */
		reached[0][40] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 78: // STATE 42 - problem1.pml:63 - [printf('Shuttle Management System: order %d assigned to shuttle %d\\n',i,assignedId)] (0:56:1 - 3)
		IfNotBlocked
		reached[0][42] = 1;
		Printf("Shuttle Management System: order %d assigned to shuttle %d\n", ((P0 *)_this)->i, ((P0 *)_this)->_10_1_assignedId);
		/* merge: j = 0(56, 43, 56) */
		reached[0][43] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->_10_1_j;
		((P0 *)_this)->_10_1_j = 0;
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:j", ((P0 *)_this)->_10_1_j);
#endif
		;
		/* merge: .(goto)(0, 57, 56) */
		reached[0][57] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 79: // STATE 44 - problem1.pml:64 - [((j<=(4-1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][44] = 1;
		if (!((((P0 *)_this)->_10_1_j<=(4-1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 80: // STATE 45 - problem1.pml:66 - [((j==assignedId))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][45] = 1;
		if (!((((P0 *)_this)->_10_1_j==((P0 *)_this)->_10_1_assignedId)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 81: // STATE 46 - problem1.pml:66 - [managementOrders[j]!orders[i].start,orders[i].end,orders[i].size] (0:0:0 - 1)
		IfNotBlocked
		reached[0][46] = 1;
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
	case 82: // STATE 48 - problem1.pml:67 - [] (0:50:1 - 1)
		IfNotBlocked
		reached[0][48] = 1;
		;
		/* merge: dummy.size = -(1)(50, 49, 50) */
		reached[0][49] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->_10_1_3_dummy.size;
		((P0 *)_this)->_10_1_3_dummy.size =  -(1);
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:dummy.size", ((P0 *)_this)->_10_1_3_dummy.size);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 83: // STATE 50 - problem1.pml:67 - [managementOrders[j]!dummy.start,dummy.end,dummy.size] (0:0:0 - 1)
		IfNotBlocked
		reached[0][50] = 1;
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
	case 84: // STATE 53 - problem1.pml:64 - [j = (j+1)] (0:56:1 - 3)
		IfNotBlocked
		reached[0][53] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->_10_1_j;
		((P0 *)_this)->_10_1_j = (((P0 *)_this)->_10_1_j+1);
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:j", ((P0 *)_this)->_10_1_j);
#endif
		;
		/* merge: .(goto)(0, 57, 56) */
		reached[0][57] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 85: // STATE 59 - problem1.pml:44 - [i = (i+1)] (0:62:1 - 3)
		IfNotBlocked
		reached[0][59] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->i;
		((P0 *)_this)->i = (((P0 *)_this)->i+1);
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:i", ((P0 *)_this)->i);
#endif
		;
		/* merge: .(goto)(0, 63, 62) */
		reached[0][63] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 86: // STATE 65 - problem1.pml:71 - [-end-] (0:0:0 - 3)
		IfNotBlocked
		reached[0][65] = 1;
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


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

		 /* CLAIM p1 */
	case 3: // STATE 1 - _spin_nvr.tmp:3 - [(!(((((!(travelling[0])&&!(travelling[1]))&&!(travelling[2]))&&!(travelling[3]))&&((((currentLoad[0]==0)&&(currentLoad[1]==0))&&(currentLoad[2]==0))&&(currentLoad[3]==0)))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[4][1] = 1;
		if (!( !((((( !(((int)now.travelling[0]))&& !(((int)now.travelling[1])))&& !(((int)now.travelling[2])))&& !(((int)now.travelling[3])))&&((((now.currentLoad[0]==0)&&(now.currentLoad[1]==0))&&(now.currentLoad[2]==0))&&(now.currentLoad[3]==0))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 15 - _spin_nvr.tmp:13 - [(!(((((!(travelling[0])&&!(travelling[1]))&&!(travelling[2]))&&!(travelling[3]))&&((((currentLoad[0]==0)&&(currentLoad[1]==0))&&(currentLoad[2]==0))&&(currentLoad[3]==0)))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported15 = 0;
			if (verbose && !reported15)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported15 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported15 = 0;
			if (verbose && !reported15)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported15 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[4][15] = 1;
		if (!( !((((( !(((int)now.travelling[0]))&& !(((int)now.travelling[1])))&& !(((int)now.travelling[2])))&& !(((int)now.travelling[3])))&&((((now.currentLoad[0]==0)&&(now.currentLoad[1]==0))&&(now.currentLoad[2]==0))&&(now.currentLoad[3]==0))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 5: // STATE 22 - _spin_nvr.tmp:16 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported22 = 0;
			if (verbose && !reported22)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported22 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported22 = 0;
			if (verbose && !reported22)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported22 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[4][22] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC :init: */
	case 6: // STATE 1 - problem1-ltl.pml:212 - [(run Shuttle(4,2,(1-1),0))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][1] = 1;
		if (!(addproc(II, 1, 1, 4, 2, (1-1), 0, 0, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 2 - problem1-ltl.pml:213 - [(run Shuttle(2,4,(1-1),1))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][2] = 1;
		if (!(addproc(II, 1, 1, 2, 4, (1-1), 1, 0, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 3 - problem1-ltl.pml:214 - [(run Shuttle(5,1,(2-1),2))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][3] = 1;
		if (!(addproc(II, 1, 1, 5, 1, (2-1), 2, 0, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 9: // STATE 4 - problem1-ltl.pml:215 - [(run Shuttle(3,3,(3-1),3))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][4] = 1;
		if (!(addproc(II, 1, 1, 3, 3, (3-1), 3, 0, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 10: // STATE 5 - problem1-ltl.pml:216 - [] (0:13:6 - 1)
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
		/* merge: first.start = (1-1)(13, 7, 13) */
		reached[3][7] = 1;
		(trpt+1)->bup.ovals[1] = ((P3 *)_this)->_13_3_first.start;
		((P3 *)_this)->_13_3_first.start = (1-1);
#ifdef VAR_RANGES
		logval(":init::first.start", ((P3 *)_this)->_13_3_first.start);
#endif
		;
		/* merge: first.end = (3-1)(13, 8, 13) */
		reached[3][8] = 1;
		(trpt+1)->bup.ovals[2] = ((P3 *)_this)->_13_3_first.end;
		((P3 *)_this)->_13_3_first.end = (3-1);
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
		/* merge: second.start = (2-1)(13, 11, 13) */
		reached[3][11] = 1;
		(trpt+1)->bup.ovals[4] = ((P3 *)_this)->_13_3_second.start;
		((P3 *)_this)->_13_3_second.start = (2-1);
#ifdef VAR_RANGES
		logval(":init::second.start", ((P3 *)_this)->_13_3_second.start);
#endif
		;
		/* merge: second.end = (3-1)(13, 12, 13) */
		reached[3][12] = 1;
		(trpt+1)->bup.ovals[5] = ((P3 *)_this)->_13_3_second.end;
		((P3 *)_this)->_13_3_second.end = (3-1);
#ifdef VAR_RANGES
		logval(":init::second.end", ((P3 *)_this)->_13_3_second.end);
#endif
		;
		_m = 3; goto P999; /* 7 */
	case 11: // STATE 13 - problem1-ltl.pml:218 - [(run ShuttleManagementSystem(first.start,first.end,first.size,second.start,second.end,second.size))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][13] = 1;
		if (!(addproc(II, 1, 0, ((P3 *)_this)->_13_3_first.start, ((P3 *)_this)->_13_3_first.end, ((P3 *)_this)->_13_3_first.size, ((P3 *)_this)->_13_3_second.start, ((P3 *)_this)->_13_3_second.end, ((P3 *)_this)->_13_3_second.size)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 12: // STATE 14 - problem1-ltl.pml:219 - [(run RailwayNetwork())] (0:0:0 - 1)
		IfNotBlocked
		reached[3][14] = 1;
		if (!(addproc(II, 1, 2, 0, 0, 0, 0, 0, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 13: // STATE 16 - problem1-ltl.pml:221 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[3][16] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC RailwayNetwork */
	case 14: // STATE 1 - problem1-ltl.pml:188 - [shuttleRequests?request.track,request.direction,request.id] (0:0:3 - 1)
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
	case 15: // STATE 2 - problem1-ltl.pml:190 - [] (0:0:0 - 1)
		IfNotBlocked
		reached[2][2] = 1;
		;
		_m = 3; goto P999; /* 0 */
	case 16: // STATE 3 - problem1-ltl.pml:191 - [((request.direction==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][3] = 1;
		if (!((((P2 *)_this)->request.direction==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 17: // STATE 4 - problem1-ltl.pml:193 - [(!(tracks.trackL2R[request.track]))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][4] = 1;
		if (!( !(((int)now.tracks.trackL2R[ Index(((P2 *)_this)->request.track, 4) ]))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 18: // STATE 5 - problem1-ltl.pml:193 - [tracks.trackL2R[request.track] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[2][5] = 1;
		(trpt+1)->bup.oval = ((int)now.tracks.trackL2R[ Index(((P2 *)_this)->request.track, 4) ]);
		now.tracks.trackL2R[ Index(((P2 *)_this)->request.track, 4) ] = 1;
#ifdef VAR_RANGES
		logval("tracks.trackL2R[RailwayNetwork:request.track]", ((int)now.tracks.trackL2R[ Index(((P2 *)_this)->request.track, 4) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 19: // STATE 6 - problem1-ltl.pml:193 - [reply.granted = 1] (0:25:1 - 1)
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
	case 20: // STATE 9 - problem1-ltl.pml:195 - [reply.granted = 0] (0:25:1 - 1)
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
	case 21: // STATE 14 - problem1-ltl.pml:200 - [(!(tracks.trackR2L[request.track]))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][14] = 1;
		if (!( !(((int)now.tracks.trackR2L[ Index(((P2 *)_this)->request.track, 4) ]))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 22: // STATE 15 - problem1-ltl.pml:200 - [tracks.trackR2L[request.track] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[2][15] = 1;
		(trpt+1)->bup.oval = ((int)now.tracks.trackR2L[ Index(((P2 *)_this)->request.track, 4) ]);
		now.tracks.trackR2L[ Index(((P2 *)_this)->request.track, 4) ] = 1;
#ifdef VAR_RANGES
		logval("tracks.trackR2L[RailwayNetwork:request.track]", ((int)now.tracks.trackR2L[ Index(((P2 *)_this)->request.track, 4) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 23: // STATE 16 - problem1-ltl.pml:200 - [reply.granted = 1] (0:25:1 - 1)
		IfNotBlocked
		reached[2][16] = 1;
		(trpt+1)->bup.oval = ((int)((P2 *)_this)->reply.granted);
		((P2 *)_this)->reply.granted = 1;
#ifdef VAR_RANGES
		logval("RailwayNetwork:reply.granted", ((int)((P2 *)_this)->reply.granted));
#endif
		;
		/* merge: printf('Railway Network: granting access to track from station %d to station %d\\n',(((request.track+1)+1)%4),((request.track+1)%4))(25, 17, 25) */
		reached[2][17] = 1;
		Printf("Railway Network: granting access to track from station %d to station %d\n", (((((P2 *)_this)->request.track+1)+1)%4), ((((P2 *)_this)->request.track+1)%4));
		/* merge: .(goto)(0, 22, 25) */
		reached[2][22] = 1;
		;
		/* merge: .(goto)(0, 24, 25) */
		reached[2][24] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 24: // STATE 19 - problem1-ltl.pml:202 - [reply.granted = 0] (0:25:1 - 1)
		IfNotBlocked
		reached[2][19] = 1;
		(trpt+1)->bup.oval = ((int)((P2 *)_this)->reply.granted);
		((P2 *)_this)->reply.granted = 0;
#ifdef VAR_RANGES
		logval("RailwayNetwork:reply.granted", ((int)((P2 *)_this)->reply.granted));
#endif
		;
		/* merge: printf('Railway Network: rejecting access to track from station %d to station %d\\n',(((request.track+1)+1)%4),((request.track+1)%4))(25, 20, 25) */
		reached[2][20] = 1;
		Printf("Railway Network: rejecting access to track from station %d to station %d\n", (((((P2 *)_this)->request.track+1)+1)%4), ((((P2 *)_this)->request.track+1)%4));
		/* merge: .(goto)(0, 22, 25) */
		reached[2][22] = 1;
		;
		/* merge: .(goto)(0, 24, 25) */
		reached[2][24] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 25: // STATE 25 - problem1-ltl.pml:206 - [railwayReplies[request.id]!reply.granted] (0:0:0 - 7)
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
	case 26: // STATE 29 - problem1-ltl.pml:208 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[2][29] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Shuttle */
	case 27: // STATE 1 - problem1-ltl.pml:80 - [currentLoad[id] = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][1] = 1;
		(trpt+1)->bup.oval = now.currentLoad[ Index(((P1 *)_this)->id, 4) ];
		now.currentLoad[ Index(((P1 *)_this)->id, 4) ] = 0;
#ifdef VAR_RANGES
		logval("currentLoad[Shuttle:id]", now.currentLoad[ Index(((P1 *)_this)->id, 4) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 28: // STATE 2 - problem1-ltl.pml:81 - [capacity[id] = shuttleCapacity] (0:0:1 - 1)
		IfNotBlocked
		reached[1][2] = 1;
		(trpt+1)->bup.oval = now.capacity[ Index(((P1 *)_this)->id, 4) ];
		now.capacity[ Index(((P1 *)_this)->id, 4) ] = ((P1 *)_this)->shuttleCapacity;
#ifdef VAR_RANGES
		logval("capacity[Shuttle:id]", now.capacity[ Index(((P1 *)_this)->id, 4) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 29: // STATE 3 - problem1-ltl.pml:83 - [direction = 0] (0:6:3 - 1)
		IfNotBlocked
		reached[1][3] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->direction;
		((P1 *)_this)->direction = 0;
#ifdef VAR_RANGES
		logval("Shuttle:direction", ((P1 *)_this)->direction);
#endif
		;
		/* merge: destination = 0(6, 4, 6) */
		reached[1][4] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)_this)->destination;
		((P1 *)_this)->destination = 0;
#ifdef VAR_RANGES
		logval("Shuttle:destination", ((P1 *)_this)->destination);
#endif
		;
		/* merge: processingOrder = 0(6, 5, 6) */
		reached[1][5] = 1;
		(trpt+1)->bup.ovals[2] = ((int)((P1 *)_this)->processingOrder);
		((P1 *)_this)->processingOrder = 0;
#ifdef VAR_RANGES
		logval("Shuttle:processingOrder", ((int)((P1 *)_this)->processingOrder));
#endif
		;
		_m = 3; goto P999; /* 2 */
	case 30: // STATE 6 - problem1-ltl.pml:86 - [travelling[id] = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][6] = 1;
		(trpt+1)->bup.oval = ((int)now.travelling[ Index(((P1 *)_this)->id, 4) ]);
		now.travelling[ Index(((P1 *)_this)->id, 4) ] = 0;
#ifdef VAR_RANGES
		logval("travelling[Shuttle:id]", ((int)now.travelling[ Index(((P1 *)_this)->id, 4) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 31: // STATE 7 - problem1-ltl.pml:88 - [managementOrders[id]?order.start,order.end,order.size] (0:0:3 - 1)
		reached[1][7] = 1;
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
	case 32: // STATE 8 - problem1-ltl.pml:89 - [printf('Shuttle %d: processing offer for newly received order\\n',(id+1))] (0:14:1 - 1)
		IfNotBlocked
		reached[1][8] = 1;
		Printf("Shuttle %d: processing offer for newly received order\n", (((P1 *)_this)->id+1));
		/* merge: currentPosition = 0(14, 9, 14) */
		reached[1][9] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->currentPosition;
		((P1 *)_this)->currentPosition = 0;
#ifdef VAR_RANGES
		logval("Shuttle:currentPosition", ((P1 *)_this)->currentPosition);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 33: // STATE 10 - problem1-ltl.pml:92 - [(travelling[id])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][10] = 1;
		if (!(((int)now.travelling[ Index(((P1 *)_this)->id, 4) ])))
			continue;
		_m = 3; goto P999; /* 0 */
	case 34: // STATE 11 - problem1-ltl.pml:92 - [currentPosition = (currentStation+direction)] (0:21:2 - 1)
		IfNotBlocked
		reached[1][11] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->currentPosition;
		((P1 *)_this)->currentPosition = (((P1 *)_this)->currentStation+((P1 *)_this)->direction);
#ifdef VAR_RANGES
		logval("Shuttle:currentPosition", ((P1 *)_this)->currentPosition);
#endif
		;
		/* merge: .(goto)(21, 15, 21) */
		reached[1][15] = 1;
		;
		/* merge: distance = 0(21, 16, 21) */
		reached[1][16] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)_this)->distance;
		((P1 *)_this)->distance = 0;
#ifdef VAR_RANGES
		logval("Shuttle:distance", ((P1 *)_this)->distance);
#endif
		;
		_m = 3; goto P999; /* 2 */
	case 35: // STATE 13 - problem1-ltl.pml:93 - [currentPosition = currentStation] (0:21:2 - 1)
		IfNotBlocked
		reached[1][13] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->currentPosition;
		((P1 *)_this)->currentPosition = ((P1 *)_this)->currentStation;
#ifdef VAR_RANGES
		logval("Shuttle:currentPosition", ((P1 *)_this)->currentPosition);
#endif
		;
		/* merge: .(goto)(21, 15, 21) */
		reached[1][15] = 1;
		;
		/* merge: distance = 0(21, 16, 21) */
		reached[1][16] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)_this)->distance;
		((P1 *)_this)->distance = 0;
#ifdef VAR_RANGES
		logval("Shuttle:distance", ((P1 *)_this)->distance);
#endif
		;
		_m = 3; goto P999; /* 2 */
	case 36: // STATE 16 - problem1-ltl.pml:96 - [distance = 0] (0:21:1 - 3)
		IfNotBlocked
		reached[1][16] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->distance;
		((P1 *)_this)->distance = 0;
#ifdef VAR_RANGES
		logval("Shuttle:distance", ((P1 *)_this)->distance);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 37: // STATE 17 - problem1-ltl.pml:97 - [((currentPosition>order.start))] (27:0:1 - 1)
		IfNotBlocked
		reached[1][17] = 1;
		if (!((((P1 *)_this)->currentPosition>((P1 *)_this)->order.start)))
			continue;
		/* merge: distance = (currentPosition-order.start)(0, 18, 27) */
		reached[1][18] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->distance;
		((P1 *)_this)->distance = (((P1 *)_this)->currentPosition-((P1 *)_this)->order.start);
#ifdef VAR_RANGES
		logval("Shuttle:distance", ((P1 *)_this)->distance);
#endif
		;
		/* merge: .(goto)(0, 22, 27) */
		reached[1][22] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 38: // STATE 20 - problem1-ltl.pml:98 - [distance = (order.start-currentPosition)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][20] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->distance;
		((P1 *)_this)->distance = (((P1 *)_this)->order.start-((P1 *)_this)->currentPosition);
#ifdef VAR_RANGES
		logval("Shuttle:distance", ((P1 *)_this)->distance);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 39: // STATE 23 - problem1-ltl.pml:101 - [((distance>(4/2)))] (30:0:1 - 1)
		IfNotBlocked
		reached[1][23] = 1;
		if (!((((P1 *)_this)->distance>(4/2))))
			continue;
		/* merge: distance = (4-distance)(30, 24, 30) */
		reached[1][24] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->distance;
		((P1 *)_this)->distance = (4-((P1 *)_this)->distance);
#ifdef VAR_RANGES
		logval("Shuttle:distance", ((P1 *)_this)->distance);
#endif
		;
		/* merge: .(goto)(30, 28, 30) */
		reached[1][28] = 1;
		;
		/* merge: printf('Shuttle %d: start destination of the order is %d station(s) away from its current position\\n',(id+1),distance)(30, 29, 30) */
		reached[1][29] = 1;
		Printf("Shuttle %d: start destination of the order is %d station(s) away from its current position\n", (((P1 *)_this)->id+1), ((P1 *)_this)->distance);
		_m = 3; goto P999; /* 3 */
	case 40: // STATE 26 - problem1-ltl.pml:102 - [distance = distance] (0:30:1 - 1)
		IfNotBlocked
		reached[1][26] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->distance;
		((P1 *)_this)->distance = ((P1 *)_this)->distance;
#ifdef VAR_RANGES
		logval("Shuttle:distance", ((P1 *)_this)->distance);
#endif
		;
		/* merge: .(goto)(30, 28, 30) */
		reached[1][28] = 1;
		;
		/* merge: printf('Shuttle %d: start destination of the order is %d station(s) away from its current position\\n',(id+1),distance)(30, 29, 30) */
		reached[1][29] = 1;
		Printf("Shuttle %d: start destination of the order is %d station(s) away from its current position\n", (((P1 *)_this)->id+1), ((P1 *)_this)->distance);
		_m = 3; goto P999; /* 2 */
	case 41: // STATE 29 - problem1-ltl.pml:104 - [printf('Shuttle %d: start destination of the order is %d station(s) away from its current position\\n',(id+1),distance)] (0:30:0 - 3)
		IfNotBlocked
		reached[1][29] = 1;
		Printf("Shuttle %d: start destination of the order is %d station(s) away from its current position\n", (((P1 *)_this)->id+1), ((P1 *)_this)->distance);
		_m = 3; goto P999; /* 0 */
	case 42: // STATE 30 - problem1-ltl.pml:105 - [printf('Shuttle %d: current load is %d, order size is %d, capacity is %d\\n',(id+1),currentLoad[id],order.size,capacity[id])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][30] = 1;
		Printf("Shuttle %d: current load is %d, order size is %d, capacity is %d\n", (((P1 *)_this)->id+1), now.currentLoad[ Index(((P1 *)_this)->id, 4) ], ((P1 *)_this)->order.size, now.capacity[ Index(((P1 *)_this)->id, 4) ]);
		_m = 3; goto P999; /* 0 */
	case 43: // STATE 31 - problem1-ltl.pml:107 - [] (0:0:0 - 1)
		IfNotBlocked
		reached[1][31] = 1;
		;
		_m = 3; goto P999; /* 0 */
	case 44: // STATE 32 - problem1-ltl.pml:108 - [((((currentLoad[id]+order.size)<=capacity[id])&&(distance<=2)))] (0:0:1 - 1)
		IfNotBlocked
		reached[1][32] = 1;
		if (!((((now.currentLoad[ Index(((P1 *)_this)->id, 4) ]+((P1 *)_this)->order.size)<=now.capacity[ Index(((P1 *)_this)->id, 4) ])&&(((P1 *)_this)->distance<=2))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: distance */  (trpt+1)->bup.oval = ((P1 *)_this)->distance;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->distance = 0;
		_m = 3; goto P999; /* 0 */
	case 45: // STATE 33 - problem1-ltl.pml:109 - [offer.id = id] (0:44:3 - 1)
		IfNotBlocked
		reached[1][33] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->offer.id;
		((P1 *)_this)->offer.id = ((P1 *)_this)->id;
#ifdef VAR_RANGES
		logval("Shuttle:offer.id", ((P1 *)_this)->offer.id);
#endif
		;
		/* merge: offer.charge = charge(44, 34, 44) */
		reached[1][34] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)_this)->offer.charge;
		((P1 *)_this)->offer.charge = ((P1 *)_this)->charge;
#ifdef VAR_RANGES
		logval("Shuttle:offer.charge", ((P1 *)_this)->offer.charge);
#endif
		;
		/* merge: offer.refuse = 0(44, 35, 44) */
		reached[1][35] = 1;
		(trpt+1)->bup.ovals[2] = ((int)((P1 *)_this)->offer.refuse);
		((P1 *)_this)->offer.refuse = 0;
#ifdef VAR_RANGES
		logval("Shuttle:offer.refuse", ((int)((P1 *)_this)->offer.refuse));
#endif
		;
		/* merge: printf('Shuttle %d: order accepted\\n',(id+1))(44, 36, 44) */
		reached[1][36] = 1;
		Printf("Shuttle %d: order accepted\n", (((P1 *)_this)->id+1));
		/* merge: .(goto)(0, 43, 44) */
		reached[1][43] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 46: // STATE 38 - problem1-ltl.pml:112 - [offer.id = id] (0:44:3 - 1)
		IfNotBlocked
		reached[1][38] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->offer.id;
		((P1 *)_this)->offer.id = ((P1 *)_this)->id;
#ifdef VAR_RANGES
		logval("Shuttle:offer.id", ((P1 *)_this)->offer.id);
#endif
		;
		/* merge: offer.charge = charge(44, 39, 44) */
		reached[1][39] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)_this)->offer.charge;
		((P1 *)_this)->offer.charge = ((P1 *)_this)->charge;
#ifdef VAR_RANGES
		logval("Shuttle:offer.charge", ((P1 *)_this)->offer.charge);
#endif
		;
		/* merge: offer.refuse = 1(44, 40, 44) */
		reached[1][40] = 1;
		(trpt+1)->bup.ovals[2] = ((int)((P1 *)_this)->offer.refuse);
		((P1 *)_this)->offer.refuse = 1;
#ifdef VAR_RANGES
		logval("Shuttle:offer.refuse", ((int)((P1 *)_this)->offer.refuse));
#endif
		;
		/* merge: printf('Shuttle %d: order refused\\n',(id+1))(44, 41, 44) */
		reached[1][41] = 1;
		Printf("Shuttle %d: order refused\n", (((P1 *)_this)->id+1));
		/* merge: .(goto)(0, 43, 44) */
		reached[1][43] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 47: // STATE 44 - problem1-ltl.pml:115 - [shuttleOffers!offer.id,offer.charge,offer.refuse] (0:0:0 - 3)
		IfNotBlocked
		reached[1][44] = 1;
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
	case 48: // STATE 45 - problem1-ltl.pml:116 - [managementOrders[id]?order.start,order.end,order.size] (0:0:3 - 1)
		reached[1][45] = 1;
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
	case 49: // STATE 46 - problem1-ltl.pml:118 - [((order.size>=0))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][46] = 1;
		if (!((((P1 *)_this)->order.size>=0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 50: // STATE 47 - problem1-ltl.pml:118 - [orders!order.start,order.end,order.size] (0:0:0 - 1)
		IfNotBlocked
		reached[1][47] = 1;
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
	case 51: // STATE 48 - problem1-ltl.pml:118 - [printf('Shuttle %d: offer accepted by management\\n',(id+1))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][48] = 1;
		Printf("Shuttle %d: offer accepted by management\n", (((P1 *)_this)->id+1));
		_m = 3; goto P999; /* 0 */
	case 52: // STATE 53 - problem1-ltl.pml:121 - [((nempty(orders)&&!(processingOrder)))] (0:0:1 - 1)
		IfNotBlocked
		reached[1][53] = 1;
		if (!(((q_len(((P1 *)_this)->orders)>0)&& !(((int)((P1 *)_this)->processingOrder)))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: processingOrder */  (trpt+1)->bup.oval = ((P1 *)_this)->processingOrder;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->processingOrder = 0;
		_m = 3; goto P999; /* 0 */
	case 53: // STATE 54 - problem1-ltl.pml:122 - [orders?currentOrder.start,currentOrder.end,currentOrder.size] (0:0:3 - 1)
		reached[1][54] = 1;
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
	case 54: // STATE 55 - problem1-ltl.pml:123 - [processingOrder = 1] (0:57:2 - 1)
		IfNotBlocked
		reached[1][55] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P1 *)_this)->processingOrder);
		((P1 *)_this)->processingOrder = 1;
#ifdef VAR_RANGES
		logval("Shuttle:processingOrder", ((int)((P1 *)_this)->processingOrder));
#endif
		;
		/* merge: destination = currentOrder.start(57, 56, 57) */
		reached[1][56] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)_this)->destination;
		((P1 *)_this)->destination = ((P1 *)_this)->currentOrder.start;
#ifdef VAR_RANGES
		logval("Shuttle:destination", ((P1 *)_this)->destination);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 55: // STATE 57 - problem1-ltl.pml:125 - [travelling[id] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][57] = 1;
		(trpt+1)->bup.oval = ((int)now.travelling[ Index(((P1 *)_this)->id, 4) ]);
		now.travelling[ Index(((P1 *)_this)->id, 4) ] = 1;
#ifdef VAR_RANGES
		logval("travelling[Shuttle:id]", ((int)now.travelling[ Index(((P1 *)_this)->id, 4) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 56: // STATE 58 - problem1-ltl.pml:126 - [printf('Shuttle %d: beginning new order from station %d to station %d with size %d\\n',(id+1),(currentOrder.start+1),(currentOrder.end+1),currentOrder.size)] (0:0:0 - 1)
		IfNotBlocked
		reached[1][58] = 1;
		Printf("Shuttle %d: beginning new order from station %d to station %d with size %d\n", (((P1 *)_this)->id+1), (((P1 *)_this)->currentOrder.start+1), (((P1 *)_this)->currentOrder.end+1), ((P1 *)_this)->currentOrder.size);
		_m = 3; goto P999; /* 0 */
	case 57: // STATE 59 - problem1-ltl.pml:128 - [(((currentOrder.start>=currentStation)&&((currentOrder.start-currentStation)<(4/2))))] (131:0:1 - 1)
		IfNotBlocked
		reached[1][59] = 1;
		if (!(((((P1 *)_this)->currentOrder.start>=((P1 *)_this)->currentStation)&&((((P1 *)_this)->currentOrder.start-((P1 *)_this)->currentStation)<(4/2)))))
			continue;
		/* merge: direction = 1(131, 60, 131) */
		reached[1][60] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->direction;
		((P1 *)_this)->direction = 1;
#ifdef VAR_RANGES
		logval("Shuttle:direction", ((P1 *)_this)->direction);
#endif
		;
		/* merge: printf('Shuttle %d: travelling left to right\\n',(id+1))(131, 61, 131) */
		reached[1][61] = 1;
		Printf("Shuttle %d: travelling left to right\n", (((P1 *)_this)->id+1));
		/* merge: .(goto)(0, 66, 131) */
		reached[1][66] = 1;
		;
		/* merge: .(goto)(0, 132, 131) */
		reached[1][132] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 58: // STATE 63 - problem1-ltl.pml:130 - [direction = -(1)] (0:131:1 - 1)
		IfNotBlocked
		reached[1][63] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->direction;
		((P1 *)_this)->direction =  -(1);
#ifdef VAR_RANGES
		logval("Shuttle:direction", ((P1 *)_this)->direction);
#endif
		;
		/* merge: printf('Shuttle %d: travelling right to left\\n',(id+1))(131, 64, 131) */
		reached[1][64] = 1;
		Printf("Shuttle %d: travelling right to left\n", (((P1 *)_this)->id+1));
		/* merge: .(goto)(0, 66, 131) */
		reached[1][66] = 1;
		;
		/* merge: .(goto)(0, 132, 131) */
		reached[1][132] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 59: // STATE 67 - problem1-ltl.pml:132 - [((travelling[id]&&processingOrder))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][67] = 1;
		if (!((((int)now.travelling[ Index(((P1 *)_this)->id, 4) ])&&((int)((P1 *)_this)->processingOrder))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 60: // STATE 68 - problem1-ltl.pml:134 - [nextStation = 0] (0:76:2 - 1)
		IfNotBlocked
		reached[1][68] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->nextStation;
		((P1 *)_this)->nextStation = 0;
#ifdef VAR_RANGES
		logval("Shuttle:nextStation", ((P1 *)_this)->nextStation);
#endif
		;
		/* merge: nextStation = (currentStation+direction)(76, 69, 76) */
		reached[1][69] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)_this)->nextStation;
		((P1 *)_this)->nextStation = (((P1 *)_this)->currentStation+((P1 *)_this)->direction);
#ifdef VAR_RANGES
		logval("Shuttle:nextStation", ((P1 *)_this)->nextStation);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 61: // STATE 70 - problem1-ltl.pml:136 - [((nextStation>=4))] (92:0:5 - 1)
		IfNotBlocked
		reached[1][70] = 1;
		if (!((((P1 *)_this)->nextStation>=4)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: nextStation */  (trpt+1)->bup.ovals = grab_ints(5);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->nextStation;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->nextStation = 0;
		/* merge: nextStation = 0(92, 71, 92) */
		reached[1][71] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)_this)->nextStation;
		((P1 *)_this)->nextStation = 0;
#ifdef VAR_RANGES
		logval("Shuttle:nextStation", ((P1 *)_this)->nextStation);
#endif
		;
		/* merge: .(goto)(92, 77, 92) */
		reached[1][77] = 1;
		;
		/* merge: (92, 78, 92) */
		reached[1][78] = 1;
		;
		/* merge: request.id = id(92, 79, 92) */
		reached[1][79] = 1;
		(trpt+1)->bup.ovals[2] = ((P1 *)_this)->request.id;
		((P1 *)_this)->request.id = ((P1 *)_this)->id;
#ifdef VAR_RANGES
		logval("Shuttle:request.id", ((P1 *)_this)->request.id);
#endif
		;
		/* merge: request.direction = direction(92, 80, 92) */
		reached[1][80] = 1;
		(trpt+1)->bup.ovals[3] = ((P1 *)_this)->request.direction;
		((P1 *)_this)->request.direction = ((P1 *)_this)->direction;
#ifdef VAR_RANGES
		logval("Shuttle:request.direction", ((P1 *)_this)->request.direction);
#endif
		;
		/* merge: request.track = nextStation(92, 81, 92) */
		reached[1][81] = 1;
		(trpt+1)->bup.ovals[4] = ((P1 *)_this)->request.track;
		((P1 *)_this)->request.track = ((P1 *)_this)->nextStation;
#ifdef VAR_RANGES
		logval("Shuttle:request.track", ((P1 *)_this)->request.track);
#endif
		;
		/* merge: (92, 82, 92) */
		reached[1][82] = 1;
		;
		/* merge: printf('Shuttle %d: requesting access to travel from station %d to station %d\\n',(id+1),(currentStation+1),(nextStation+1))(92, 83, 92) */
		reached[1][83] = 1;
		Printf("Shuttle %d: requesting access to travel from station %d to station %d\n", (((P1 *)_this)->id+1), (((P1 *)_this)->currentStation+1), (((P1 *)_this)->nextStation+1));
		/* merge: .(goto)(0, 93, 92) */
		reached[1][93] = 1;
		;
		_m = 3; goto P999; /* 9 */
	case 62: // STATE 72 - problem1-ltl.pml:137 - [((nextStation<0))] (92:0:5 - 1)
		IfNotBlocked
		reached[1][72] = 1;
		if (!((((P1 *)_this)->nextStation<0)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: nextStation */  (trpt+1)->bup.ovals = grab_ints(5);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->nextStation;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->nextStation = 0;
		/* merge: nextStation = (4-1)(92, 73, 92) */
		reached[1][73] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)_this)->nextStation;
		((P1 *)_this)->nextStation = (4-1);
#ifdef VAR_RANGES
		logval("Shuttle:nextStation", ((P1 *)_this)->nextStation);
#endif
		;
		/* merge: .(goto)(92, 77, 92) */
		reached[1][77] = 1;
		;
		/* merge: (92, 78, 92) */
		reached[1][78] = 1;
		;
		/* merge: request.id = id(92, 79, 92) */
		reached[1][79] = 1;
		(trpt+1)->bup.ovals[2] = ((P1 *)_this)->request.id;
		((P1 *)_this)->request.id = ((P1 *)_this)->id;
#ifdef VAR_RANGES
		logval("Shuttle:request.id", ((P1 *)_this)->request.id);
#endif
		;
		/* merge: request.direction = direction(92, 80, 92) */
		reached[1][80] = 1;
		(trpt+1)->bup.ovals[3] = ((P1 *)_this)->request.direction;
		((P1 *)_this)->request.direction = ((P1 *)_this)->direction;
#ifdef VAR_RANGES
		logval("Shuttle:request.direction", ((P1 *)_this)->request.direction);
#endif
		;
		/* merge: request.track = nextStation(92, 81, 92) */
		reached[1][81] = 1;
		(trpt+1)->bup.ovals[4] = ((P1 *)_this)->request.track;
		((P1 *)_this)->request.track = ((P1 *)_this)->nextStation;
#ifdef VAR_RANGES
		logval("Shuttle:request.track", ((P1 *)_this)->request.track);
#endif
		;
		/* merge: (92, 82, 92) */
		reached[1][82] = 1;
		;
		/* merge: printf('Shuttle %d: requesting access to travel from station %d to station %d\\n',(id+1),(currentStation+1),(nextStation+1))(92, 83, 92) */
		reached[1][83] = 1;
		Printf("Shuttle %d: requesting access to travel from station %d to station %d\n", (((P1 *)_this)->id+1), (((P1 *)_this)->currentStation+1), (((P1 *)_this)->nextStation+1));
		/* merge: .(goto)(0, 93, 92) */
		reached[1][93] = 1;
		;
		_m = 3; goto P999; /* 9 */
	case 63: // STATE 75 - problem1-ltl.pml:138 - [(1)] (92:0:3 - 1)
		IfNotBlocked
		reached[1][75] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(92, 77, 92) */
		reached[1][77] = 1;
		;
		/* merge: (92, 78, 92) */
		reached[1][78] = 1;
		;
		/* merge: request.id = id(92, 79, 92) */
		reached[1][79] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->request.id;
		((P1 *)_this)->request.id = ((P1 *)_this)->id;
#ifdef VAR_RANGES
		logval("Shuttle:request.id", ((P1 *)_this)->request.id);
#endif
		;
		/* merge: request.direction = direction(92, 80, 92) */
		reached[1][80] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)_this)->request.direction;
		((P1 *)_this)->request.direction = ((P1 *)_this)->direction;
#ifdef VAR_RANGES
		logval("Shuttle:request.direction", ((P1 *)_this)->request.direction);
#endif
		;
		/* merge: request.track = nextStation(92, 81, 92) */
		reached[1][81] = 1;
		(trpt+1)->bup.ovals[2] = ((P1 *)_this)->request.track;
		((P1 *)_this)->request.track = ((P1 *)_this)->nextStation;
#ifdef VAR_RANGES
		logval("Shuttle:request.track", ((P1 *)_this)->request.track);
#endif
		;
		/* merge: (92, 82, 92) */
		reached[1][82] = 1;
		;
		/* merge: printf('Shuttle %d: requesting access to travel from station %d to station %d\\n',(id+1),(currentStation+1),(nextStation+1))(92, 83, 92) */
		reached[1][83] = 1;
		Printf("Shuttle %d: requesting access to travel from station %d to station %d\n", (((P1 *)_this)->id+1), (((P1 *)_this)->currentStation+1), (((P1 *)_this)->nextStation+1));
		/* merge: .(goto)(0, 93, 92) */
		reached[1][93] = 1;
		;
		_m = 3; goto P999; /* 8 */
	case 64: // STATE 78 - problem1-ltl.pml:141 - [] (0:92:3 - 4)
		IfNotBlocked
		reached[1][78] = 1;
		;
		/* merge: request.id = id(92, 79, 92) */
		reached[1][79] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->request.id;
		((P1 *)_this)->request.id = ((P1 *)_this)->id;
#ifdef VAR_RANGES
		logval("Shuttle:request.id", ((P1 *)_this)->request.id);
#endif
		;
		/* merge: request.direction = direction(92, 80, 92) */
		reached[1][80] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)_this)->request.direction;
		((P1 *)_this)->request.direction = ((P1 *)_this)->direction;
#ifdef VAR_RANGES
		logval("Shuttle:request.direction", ((P1 *)_this)->request.direction);
#endif
		;
		/* merge: request.track = nextStation(92, 81, 92) */
		reached[1][81] = 1;
		(trpt+1)->bup.ovals[2] = ((P1 *)_this)->request.track;
		((P1 *)_this)->request.track = ((P1 *)_this)->nextStation;
#ifdef VAR_RANGES
		logval("Shuttle:request.track", ((P1 *)_this)->request.track);
#endif
		;
		/* merge: (92, 82, 92) */
		reached[1][82] = 1;
		;
		/* merge: printf('Shuttle %d: requesting access to travel from station %d to station %d\\n',(id+1),(currentStation+1),(nextStation+1))(92, 83, 92) */
		reached[1][83] = 1;
		Printf("Shuttle %d: requesting access to travel from station %d to station %d\n", (((P1 *)_this)->id+1), (((P1 *)_this)->currentStation+1), (((P1 *)_this)->nextStation+1));
		/* merge: .(goto)(0, 93, 92) */
		reached[1][93] = 1;
		;
		_m = 3; goto P999; /* 6 */
	case 65: // STATE 84 - problem1-ltl.pml:145 - [shuttleRequests!request.track,request.direction,request.id] (0:0:0 - 1)
		IfNotBlocked
		reached[1][84] = 1;
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
	case 66: // STATE 85 - problem1-ltl.pml:146 - [railwayReplies[id]?reply.granted] (0:0:1 - 1)
		reached[1][85] = 1;
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
	case 67: // STATE 86 - problem1-ltl.pml:148 - [(reply.granted)] (101:0:1 - 1)
		IfNotBlocked
		reached[1][86] = 1;
		if (!(((int)((P1 *)_this)->reply.granted)))
			continue;
		/* merge: goto :b5(101, 87, 101) */
		reached[1][87] = 1;
		;
		/* merge: printf('Shuttle %d: travelling from station %d to station %d\\n',(id+1),(currentStation+1),(nextStation+1))(101, 95, 101) */
		reached[1][95] = 1;
		Printf("Shuttle %d: travelling from station %d to station %d\n", (((P1 *)_this)->id+1), (((P1 *)_this)->currentStation+1), (((P1 *)_this)->nextStation+1));
		/* merge: currentStation = nextStation(101, 96, 101) */
		reached[1][96] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->currentStation;
		((P1 *)_this)->currentStation = ((P1 *)_this)->nextStation;
#ifdef VAR_RANGES
		logval("Shuttle:currentStation", ((P1 *)_this)->currentStation);
#endif
		;
		_m = 3; goto P999; /* 3 */
	case 68: // STATE 95 - problem1-ltl.pml:152 - [printf('Shuttle %d: travelling from station %d to station %d\\n',(id+1),(currentStation+1),(nextStation+1))] (0:101:1 - 3)
		IfNotBlocked
		reached[1][95] = 1;
		Printf("Shuttle %d: travelling from station %d to station %d\n", (((P1 *)_this)->id+1), (((P1 *)_this)->currentStation+1), (((P1 *)_this)->nextStation+1));
		/* merge: currentStation = nextStation(101, 96, 101) */
		reached[1][96] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->currentStation;
		((P1 *)_this)->currentStation = ((P1 *)_this)->nextStation;
#ifdef VAR_RANGES
		logval("Shuttle:currentStation", ((P1 *)_this)->currentStation);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 69: // STATE 97 - problem1-ltl.pml:155 - [((direction==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][97] = 1;
		if (!((((P1 *)_this)->direction==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 70: // STATE 98 - problem1-ltl.pml:155 - [tracks.trackL2R[request.track] = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][98] = 1;
		(trpt+1)->bup.oval = ((int)now.tracks.trackL2R[ Index(((P1 *)_this)->request.track, 4) ]);
		now.tracks.trackL2R[ Index(((P1 *)_this)->request.track, 4) ] = 0;
#ifdef VAR_RANGES
		logval("tracks.trackL2R[Shuttle:request.track]", ((int)now.tracks.trackL2R[ Index(((P1 *)_this)->request.track, 4) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 71: // STATE 99 - problem1-ltl.pml:156 - [((direction==-(1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][99] = 1;
		if (!((((P1 *)_this)->direction== -(1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 72: // STATE 100 - problem1-ltl.pml:156 - [tracks.trackR2L[request.track] = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][100] = 1;
		(trpt+1)->bup.oval = ((int)now.tracks.trackR2L[ Index(((P1 *)_this)->request.track, 4) ]);
		now.tracks.trackR2L[ Index(((P1 *)_this)->request.track, 4) ] = 0;
#ifdef VAR_RANGES
		logval("tracks.trackR2L[Shuttle:request.track]", ((int)now.tracks.trackR2L[ Index(((P1 *)_this)->request.track, 4) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 73: // STATE 103 - problem1-ltl.pml:159 - [((currentStation==destination))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][103] = 1;
		if (!((((P1 *)_this)->currentStation==((P1 *)_this)->destination)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 74: // STATE 104 - problem1-ltl.pml:159 - [travelling[id] = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][104] = 1;
		(trpt+1)->bup.oval = ((int)now.travelling[ Index(((P1 *)_this)->id, 4) ]);
		now.travelling[ Index(((P1 *)_this)->id, 4) ] = 0;
#ifdef VAR_RANGES
		logval("travelling[Shuttle:id]", ((int)now.travelling[ Index(((P1 *)_this)->id, 4) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 75: // STATE 106 - problem1-ltl.pml:160 - [travelling[id] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][106] = 1;
		(trpt+1)->bup.oval = ((int)now.travelling[ Index(((P1 *)_this)->id, 4) ]);
		now.travelling[ Index(((P1 *)_this)->id, 4) ] = 1;
#ifdef VAR_RANGES
		logval("travelling[Shuttle:id]", ((int)now.travelling[ Index(((P1 *)_this)->id, 4) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 76: // STATE 109 - problem1-ltl.pml:162 - [((!(travelling[id])&&processingOrder))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][109] = 1;
		if (!(( !(((int)now.travelling[ Index(((P1 *)_this)->id, 4) ]))&&((int)((P1 *)_this)->processingOrder))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 77: // STATE 110 - problem1-ltl.pml:164 - [((destination==currentOrder.start))] (112:0:1 - 1)
		IfNotBlocked
		reached[1][110] = 1;
		if (!((((P1 *)_this)->destination==((P1 *)_this)->currentOrder.start)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: destination */  (trpt+1)->bup.oval = ((P1 *)_this)->destination;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->destination = 0;
		/* merge: printf('Shuttle %d: loading %d people at station %d\\n',(id+1),currentOrder.size,(currentOrder.start+1))(0, 111, 112) */
		reached[1][111] = 1;
		Printf("Shuttle %d: loading %d people at station %d\n", (((P1 *)_this)->id+1), ((P1 *)_this)->currentOrder.size, (((P1 *)_this)->currentOrder.start+1));
		_m = 3; goto P999; /* 1 */
	case 78: // STATE 112 - problem1-ltl.pml:166 - [currentLoad[id] = (currentLoad[id]+currentOrder.size)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][112] = 1;
		(trpt+1)->bup.oval = now.currentLoad[ Index(((P1 *)_this)->id, 4) ];
		now.currentLoad[ Index(((P1 *)_this)->id, 4) ] = (now.currentLoad[ Index(((P1 *)_this)->id, 4) ]+((P1 *)_this)->currentOrder.size);
#ifdef VAR_RANGES
		logval("currentLoad[Shuttle:id]", now.currentLoad[ Index(((P1 *)_this)->id, 4) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 79: // STATE 113 - problem1-ltl.pml:167 - [destination = currentOrder.end] (0:0:1 - 1)
		IfNotBlocked
		reached[1][113] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->destination;
		((P1 *)_this)->destination = ((P1 *)_this)->currentOrder.end;
#ifdef VAR_RANGES
		logval("Shuttle:destination", ((P1 *)_this)->destination);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 80: // STATE 114 - problem1-ltl.pml:168 - [travelling[id] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][114] = 1;
		(trpt+1)->bup.oval = ((int)now.travelling[ Index(((P1 *)_this)->id, 4) ]);
		now.travelling[ Index(((P1 *)_this)->id, 4) ] = 1;
#ifdef VAR_RANGES
		logval("travelling[Shuttle:id]", ((int)now.travelling[ Index(((P1 *)_this)->id, 4) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 81: // STATE 115 - problem1-ltl.pml:170 - [(((currentOrder.start>=currentStation)&&((currentOrder.start-currentStation)<(4/2))))] (131:0:1 - 1)
		IfNotBlocked
		reached[1][115] = 1;
		if (!(((((P1 *)_this)->currentOrder.start>=((P1 *)_this)->currentStation)&&((((P1 *)_this)->currentOrder.start-((P1 *)_this)->currentStation)<(4/2)))))
			continue;
		/* merge: direction = 1(131, 116, 131) */
		reached[1][116] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->direction;
		((P1 *)_this)->direction = 1;
#ifdef VAR_RANGES
		logval("Shuttle:direction", ((P1 *)_this)->direction);
#endif
		;
		/* merge: printf('Shuttle %d: travelling left to right\\n',(id+1))(131, 117, 131) */
		reached[1][117] = 1;
		Printf("Shuttle %d: travelling left to right\n", (((P1 *)_this)->id+1));
		/* merge: .(goto)(0, 122, 131) */
		reached[1][122] = 1;
		;
		/* merge: .(goto)(0, 130, 131) */
		reached[1][130] = 1;
		;
		/* merge: .(goto)(0, 132, 131) */
		reached[1][132] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 82: // STATE 119 - problem1-ltl.pml:172 - [direction = -(1)] (0:131:1 - 1)
		IfNotBlocked
		reached[1][119] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->direction;
		((P1 *)_this)->direction =  -(1);
#ifdef VAR_RANGES
		logval("Shuttle:direction", ((P1 *)_this)->direction);
#endif
		;
		/* merge: printf('Shuttle %d: travelling right to left\\n',(id+1))(131, 120, 131) */
		reached[1][120] = 1;
		Printf("Shuttle %d: travelling right to left\n", (((P1 *)_this)->id+1));
		/* merge: .(goto)(0, 122, 131) */
		reached[1][122] = 1;
		;
		/* merge: .(goto)(0, 130, 131) */
		reached[1][130] = 1;
		;
		/* merge: .(goto)(0, 132, 131) */
		reached[1][132] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 83: // STATE 123 - problem1-ltl.pml:174 - [((destination==currentOrder.end))] (125:0:0 - 1)
		IfNotBlocked
		reached[1][123] = 1;
		if (!((((P1 *)_this)->destination==((P1 *)_this)->currentOrder.end)))
			continue;
		/* merge: printf('Shuttle %d: unloading %d people at station %d\\n',(id+1),currentOrder.size,(currentOrder.end+1))(0, 124, 125) */
		reached[1][124] = 1;
		Printf("Shuttle %d: unloading %d people at station %d\n", (((P1 *)_this)->id+1), ((P1 *)_this)->currentOrder.size, (((P1 *)_this)->currentOrder.end+1));
		_m = 3; goto P999; /* 1 */
	case 84: // STATE 125 - problem1-ltl.pml:176 - [currentLoad[id] = (currentLoad[id]-currentOrder.size)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][125] = 1;
		(trpt+1)->bup.oval = now.currentLoad[ Index(((P1 *)_this)->id, 4) ];
		now.currentLoad[ Index(((P1 *)_this)->id, 4) ] = (now.currentLoad[ Index(((P1 *)_this)->id, 4) ]-((P1 *)_this)->currentOrder.size);
#ifdef VAR_RANGES
		logval("currentLoad[Shuttle:id]", now.currentLoad[ Index(((P1 *)_this)->id, 4) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 85: // STATE 126 - problem1-ltl.pml:177 - [processingOrder = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][126] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)_this)->processingOrder);
		((P1 *)_this)->processingOrder = 0;
#ifdef VAR_RANGES
		logval("Shuttle:processingOrder", ((int)((P1 *)_this)->processingOrder));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 86: // STATE 134 - problem1-ltl.pml:181 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][134] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC ShuttleManagementSystem */
	case 87: // STATE 1 - problem1-ltl.pml:42 - [orders[0].start = first.start] (0:62:8 - 1)
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
	case 88: // STATE 9 - problem1-ltl.pml:45 - [((i<=(2-1)))] (18:0:2 - 1)
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
	case 89: // STATE 12 - problem1-ltl.pml:47 - [((j<=(4-1)))] (14:0:0 - 1)
		IfNotBlocked
		reached[0][12] = 1;
		if (!((((P0 *)_this)->_10_1_j<=(4-1))))
			continue;
		/* merge: printf('Shuttle Management System: sending order %d to shuttle %d\\n',(i+1),(j+1))(0, 13, 14) */
		reached[0][13] = 1;
		Printf("Shuttle Management System: sending order %d to shuttle %d\n", (((P0 *)_this)->i+1), (((P0 *)_this)->_10_1_j+1));
		_m = 3; goto P999; /* 1 */
	case 90: // STATE 14 - problem1-ltl.pml:49 - [managementOrders[j]!orders[i].start,orders[i].end,orders[i].size] (0:0:0 - 1)
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
	case 91: // STATE 15 - problem1-ltl.pml:47 - [j = (j+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][15] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->_10_1_j;
		((P0 *)_this)->_10_1_j = (((P0 *)_this)->_10_1_j+1);
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:j", ((P0 *)_this)->_10_1_j);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 92: // STATE 21 - problem1-ltl.pml:52 - [minCharge = 2147483647] (0:39:3 - 3)
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
	case 93: // STATE 24 - problem1-ltl.pml:55 - [((j<=(4-1)))] (27:0:0 - 1)
		IfNotBlocked
		reached[0][24] = 1;
		if (!((((P0 *)_this)->_10_1_j<=(4-1))))
			continue;
		/* merge: (27, 25, 27) */
		reached[0][25] = 1;
		;
		/* merge: printf('Shuttle Management System: waiting for offer for order %d from shuttle %d\\n',(i+1),(j+1))(27, 26, 27) */
		reached[0][26] = 1;
		Printf("Shuttle Management System: waiting for offer for order %d from shuttle %d\n", (((P0 *)_this)->i+1), (((P0 *)_this)->_10_1_j+1));
		_m = 3; goto P999; /* 2 */
	case 94: // STATE 27 - problem1-ltl.pml:58 - [shuttleOffers?offer.id,offer.charge,offer.refuse] (0:0:3 - 1)
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
	case 95: // STATE 28 - problem1-ltl.pml:60 - [(((offer.charge<minCharge)&&!(offer.refuse)))] (39:0:4 - 1)
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
	case 96: // STATE 32 - problem1-ltl.pml:61 - [minCharge = minCharge] (0:39:3 - 1)
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
	case 97: // STATE 36 - problem1-ltl.pml:55 - [j = (j+1)] (0:39:1 - 3)
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
	case 98: // STATE 42 - problem1-ltl.pml:64 - [printf('Shuttle Management System: order %d assigned to shuttle %d\\n',(i+1),(assignedId+1))] (0:56:1 - 3)
		IfNotBlocked
		reached[0][42] = 1;
		Printf("Shuttle Management System: order %d assigned to shuttle %d\n", (((P0 *)_this)->i+1), (((P0 *)_this)->_10_1_assignedId+1));
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
	case 99: // STATE 44 - problem1-ltl.pml:65 - [((j<=(4-1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][44] = 1;
		if (!((((P0 *)_this)->_10_1_j<=(4-1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 100: // STATE 45 - problem1-ltl.pml:67 - [((j==assignedId))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][45] = 1;
		if (!((((P0 *)_this)->_10_1_j==((P0 *)_this)->_10_1_assignedId)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 101: // STATE 46 - problem1-ltl.pml:67 - [managementOrders[j]!orders[i].start,orders[i].end,orders[i].size] (0:0:0 - 1)
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
	case 102: // STATE 48 - problem1-ltl.pml:68 - [] (0:50:1 - 1)
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
	case 103: // STATE 50 - problem1-ltl.pml:68 - [managementOrders[j]!dummy.start,dummy.end,dummy.size] (0:0:0 - 1)
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
	case 104: // STATE 53 - problem1-ltl.pml:65 - [j = (j+1)] (0:56:1 - 3)
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
	case 105: // STATE 59 - problem1-ltl.pml:45 - [i = (i+1)] (0:62:1 - 3)
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
	case 106: // STATE 65 - problem1-ltl.pml:72 - [-end-] (0:0:0 - 3)
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


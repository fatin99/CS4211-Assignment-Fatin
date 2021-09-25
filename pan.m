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
	case 3: // STATE 1 - problem1-retry.pml:93 - [(run Shuttle(4,2,1,0))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][1] = 1;
		if (!(addproc(II, 1, 1, 4, 2, 1, 0, 0, 0, 0, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 2 - problem1-retry.pml:94 - [(run Shuttle(2,4,1,1))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][2] = 1;
		if (!(addproc(II, 1, 1, 2, 4, 1, 1, 0, 0, 0, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 5: // STATE 3 - problem1-retry.pml:95 - [(run Shuttle(5,1,2,2))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][3] = 1;
		if (!(addproc(II, 1, 1, 5, 1, 2, 2, 0, 0, 0, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 6: // STATE 4 - problem1-retry.pml:96 - [(run Shuttle(3,3,3,3))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][4] = 1;
		if (!(addproc(II, 1, 1, 3, 3, 3, 3, 0, 0, 0, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 5 - problem1-retry.pml:97 - [] (0:13:6 - 1)
		IfNotBlocked
		reached[2][5] = 1;
		;
		/* merge: first.start = 1(13, 6, 13) */
		reached[2][6] = 1;
		(trpt+1)->bup.ovals = grab_ints(6);
		(trpt+1)->bup.ovals[0] = ((P2 *)_this)->_7_3_first.start;
		((P2 *)_this)->_7_3_first.start = 1;
#ifdef VAR_RANGES
		logval(":init::first.start", ((P2 *)_this)->_7_3_first.start);
#endif
		;
		/* merge: first.end = 3(13, 7, 13) */
		reached[2][7] = 1;
		(trpt+1)->bup.ovals[1] = ((P2 *)_this)->_7_3_first.end;
		((P2 *)_this)->_7_3_first.end = 3;
#ifdef VAR_RANGES
		logval(":init::first.end", ((P2 *)_this)->_7_3_first.end);
#endif
		;
		/* merge: first.size = 4(13, 8, 13) */
		reached[2][8] = 1;
		(trpt+1)->bup.ovals[2] = ((P2 *)_this)->_7_3_first.size;
		((P2 *)_this)->_7_3_first.size = 4;
#ifdef VAR_RANGES
		logval(":init::first.size", ((P2 *)_this)->_7_3_first.size);
#endif
		;
		/* merge: (13, 9, 13) */
		reached[2][9] = 1;
		;
		/* merge: second.start = 2(13, 10, 13) */
		reached[2][10] = 1;
		(trpt+1)->bup.ovals[3] = ((P2 *)_this)->_7_3_second.start;
		((P2 *)_this)->_7_3_second.start = 2;
#ifdef VAR_RANGES
		logval(":init::second.start", ((P2 *)_this)->_7_3_second.start);
#endif
		;
		/* merge: second.end = 3(13, 11, 13) */
		reached[2][11] = 1;
		(trpt+1)->bup.ovals[4] = ((P2 *)_this)->_7_3_second.end;
		((P2 *)_this)->_7_3_second.end = 3;
#ifdef VAR_RANGES
		logval(":init::second.end", ((P2 *)_this)->_7_3_second.end);
#endif
		;
		/* merge: second.size = 2(13, 12, 13) */
		reached[2][12] = 1;
		(trpt+1)->bup.ovals[5] = ((P2 *)_this)->_7_3_second.size;
		((P2 *)_this)->_7_3_second.size = 2;
#ifdef VAR_RANGES
		logval(":init::second.size", ((P2 *)_this)->_7_3_second.size);
#endif
		;
		_m = 3; goto P999; /* 7 */
	case 8: // STATE 13 - problem1-retry.pml:99 - [(run ShuttleManagementSystem(first.start,first.end,first.size,first.reject,second.start,second.end,second.size,second.reject))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][13] = 1;
		if (!(addproc(II, 1, 0, ((P2 *)_this)->_7_3_first.start, ((P2 *)_this)->_7_3_first.end, ((P2 *)_this)->_7_3_first.size, ((int)((P2 *)_this)->_7_3_first.reject), ((P2 *)_this)->_7_3_second.start, ((P2 *)_this)->_7_3_second.end, ((P2 *)_this)->_7_3_second.size, ((int)((P2 *)_this)->_7_3_second.reject))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 9: // STATE 15 - problem1-retry.pml:101 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[2][15] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Shuttle */
	case 10: // STATE 1 - problem1-retry.pml:66 - [managementToShuttle[id]?order.start,order.end,order.size,order.reject] (0:0:4 - 1)
		reached[1][1] = 1;
		if (q_len(now.managementToShuttle[ Index(((P1 *)_this)->id, 4) ]) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->order.start;
		(trpt+1)->bup.ovals[1] = ((P1 *)_this)->order.end;
		(trpt+1)->bup.ovals[2] = ((P1 *)_this)->order.size;
		(trpt+1)->bup.ovals[3] = ((int)((P1 *)_this)->order.reject);
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
		((P1 *)_this)->order.size = qrecv(now.managementToShuttle[ Index(((P1 *)_this)->id, 4) ], XX-1, 2, 0);
#ifdef VAR_RANGES
		logval("Shuttle:order.size", ((P1 *)_this)->order.size);
#endif
		;
		((P1 *)_this)->order.reject = qrecv(now.managementToShuttle[ Index(((P1 *)_this)->id, 4) ], XX-1, 3, 1);
#ifdef VAR_RANGES
		logval("Shuttle:order.reject", ((int)((P1 *)_this)->order.reject));
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.managementToShuttle[ Index(((P1 *)_this)->id, 4) ]);
		sprintf(simtmp, "%d", ((P1 *)_this)->order.start); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P1 *)_this)->order.end); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P1 *)_this)->order.size); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P1 *)_this)->order.reject)); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 11: // STATE 2 - problem1-retry.pml:68 - [temp_station = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][2] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->temp_station;
		((P1 *)_this)->temp_station = 0;
#ifdef VAR_RANGES
		logval("Shuttle:temp_station", ((P1 *)_this)->temp_station);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 12: // STATE 3 - problem1-retry.pml:69 - [(on_track)] (21:0:4 - 1)
		IfNotBlocked
		reached[1][3] = 1;
		if (!(((int)((P1 *)_this)->on_track)))
			continue;
		/* merge: temp_station = next_station(21, 4, 21) */
		reached[1][4] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->temp_station;
		((P1 *)_this)->temp_station = ((P1 *)_this)->next_station;
#ifdef VAR_RANGES
		logval("Shuttle:temp_station", ((P1 *)_this)->temp_station);
#endif
		;
		/* merge: .(goto)(21, 8, 21) */
		reached[1][8] = 1;
		;
		/* merge: distance_a = ( ((temp_station>order.start)) -> ((temp_station-order.start)) : ((order.start-temp_station)) )(21, 9, 21) */
		reached[1][9] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)_this)->distance_a;
		((P1 *)_this)->distance_a = ( ((((P1 *)_this)->temp_station>((P1 *)_this)->order.start)) ? ((((P1 *)_this)->temp_station-((P1 *)_this)->order.start)) : ((((P1 *)_this)->order.start-((P1 *)_this)->temp_station)) );
#ifdef VAR_RANGES
		logval("Shuttle:distance_a", ((P1 *)_this)->distance_a);
#endif
		;
		/* merge: distance_b = ((4-( ((temp_station>order.start)) -> (temp_station) : (order.start) ))+( ((temp_station<order.start)) -> (temp_station) : (order.start) ))(21, 10, 21) */
		reached[1][10] = 1;
		(trpt+1)->bup.ovals[2] = ((P1 *)_this)->distance_b;
		((P1 *)_this)->distance_b = ((4-( ((((P1 *)_this)->temp_station>((P1 *)_this)->order.start)) ? (((P1 *)_this)->temp_station) : (((P1 *)_this)->order.start) ))+( ((((P1 *)_this)->temp_station<((P1 *)_this)->order.start)) ? (((P1 *)_this)->temp_station) : (((P1 *)_this)->order.start) ));
#ifdef VAR_RANGES
		logval("Shuttle:distance_b", ((P1 *)_this)->distance_b);
#endif
		;
		/* merge: station_distance = ( ((distance_a<distance_b)) -> (distance_a) : (distance_b) )(21, 11, 21) */
		reached[1][11] = 1;
		(trpt+1)->bup.ovals[3] = ((P1 *)_this)->station_distance;
		((P1 *)_this)->station_distance = ( ((((P1 *)_this)->distance_a<((P1 *)_this)->distance_b)) ? (((P1 *)_this)->distance_a) : (((P1 *)_this)->distance_b) );
#ifdef VAR_RANGES
		logval("Shuttle:station_distance", ((P1 *)_this)->station_distance);
#endif
		;
		/* merge: (21, 12, 21) */
		reached[1][12] = 1;
		;
		_m = 3; goto P999; /* 6 */
	case 13: // STATE 6 - problem1-retry.pml:70 - [temp_station = current_station] (0:21:4 - 1)
		IfNotBlocked
		reached[1][6] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->temp_station;
		((P1 *)_this)->temp_station = ((P1 *)_this)->current_station;
#ifdef VAR_RANGES
		logval("Shuttle:temp_station", ((P1 *)_this)->temp_station);
#endif
		;
		/* merge: .(goto)(21, 8, 21) */
		reached[1][8] = 1;
		;
		/* merge: distance_a = ( ((temp_station>order.start)) -> ((temp_station-order.start)) : ((order.start-temp_station)) )(21, 9, 21) */
		reached[1][9] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)_this)->distance_a;
		((P1 *)_this)->distance_a = ( ((((P1 *)_this)->temp_station>((P1 *)_this)->order.start)) ? ((((P1 *)_this)->temp_station-((P1 *)_this)->order.start)) : ((((P1 *)_this)->order.start-((P1 *)_this)->temp_station)) );
#ifdef VAR_RANGES
		logval("Shuttle:distance_a", ((P1 *)_this)->distance_a);
#endif
		;
		/* merge: distance_b = ((4-( ((temp_station>order.start)) -> (temp_station) : (order.start) ))+( ((temp_station<order.start)) -> (temp_station) : (order.start) ))(21, 10, 21) */
		reached[1][10] = 1;
		(trpt+1)->bup.ovals[2] = ((P1 *)_this)->distance_b;
		((P1 *)_this)->distance_b = ((4-( ((((P1 *)_this)->temp_station>((P1 *)_this)->order.start)) ? (((P1 *)_this)->temp_station) : (((P1 *)_this)->order.start) ))+( ((((P1 *)_this)->temp_station<((P1 *)_this)->order.start)) ? (((P1 *)_this)->temp_station) : (((P1 *)_this)->order.start) ));
#ifdef VAR_RANGES
		logval("Shuttle:distance_b", ((P1 *)_this)->distance_b);
#endif
		;
		/* merge: station_distance = ( ((distance_a<distance_b)) -> (distance_a) : (distance_b) )(21, 11, 21) */
		reached[1][11] = 1;
		(trpt+1)->bup.ovals[3] = ((P1 *)_this)->station_distance;
		((P1 *)_this)->station_distance = ( ((((P1 *)_this)->distance_a<((P1 *)_this)->distance_b)) ? (((P1 *)_this)->distance_a) : (((P1 *)_this)->distance_b) );
#ifdef VAR_RANGES
		logval("Shuttle:station_distance", ((P1 *)_this)->station_distance);
#endif
		;
		/* merge: (21, 12, 21) */
		reached[1][12] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 14: // STATE 9 - problem1-retry.pml:73 - [distance_a = ( ((temp_station>order.start)) -> ((temp_station-order.start)) : ((order.start-temp_station)) )] (0:21:3 - 3)
		IfNotBlocked
		reached[1][9] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->distance_a;
		((P1 *)_this)->distance_a = ( ((((P1 *)_this)->temp_station>((P1 *)_this)->order.start)) ? ((((P1 *)_this)->temp_station-((P1 *)_this)->order.start)) : ((((P1 *)_this)->order.start-((P1 *)_this)->temp_station)) );
#ifdef VAR_RANGES
		logval("Shuttle:distance_a", ((P1 *)_this)->distance_a);
#endif
		;
		/* merge: distance_b = ((4-( ((temp_station>order.start)) -> (temp_station) : (order.start) ))+( ((temp_station<order.start)) -> (temp_station) : (order.start) ))(21, 10, 21) */
		reached[1][10] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)_this)->distance_b;
		((P1 *)_this)->distance_b = ((4-( ((((P1 *)_this)->temp_station>((P1 *)_this)->order.start)) ? (((P1 *)_this)->temp_station) : (((P1 *)_this)->order.start) ))+( ((((P1 *)_this)->temp_station<((P1 *)_this)->order.start)) ? (((P1 *)_this)->temp_station) : (((P1 *)_this)->order.start) ));
#ifdef VAR_RANGES
		logval("Shuttle:distance_b", ((P1 *)_this)->distance_b);
#endif
		;
		/* merge: station_distance = ( ((distance_a<distance_b)) -> (distance_a) : (distance_b) )(21, 11, 21) */
		reached[1][11] = 1;
		(trpt+1)->bup.ovals[2] = ((P1 *)_this)->station_distance;
		((P1 *)_this)->station_distance = ( ((((P1 *)_this)->distance_a<((P1 *)_this)->distance_b)) ? (((P1 *)_this)->distance_a) : (((P1 *)_this)->distance_b) );
#ifdef VAR_RANGES
		logval("Shuttle:station_distance", ((P1 *)_this)->station_distance);
#endif
		;
		/* merge: (21, 12, 21) */
		reached[1][12] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 15: // STATE 13 - problem1-retry.pml:77 - [((((current_load+order.size)<=max_cap)&&(station_distance<=2)))] (23:0:4 - 1)
		IfNotBlocked
		reached[1][13] = 1;
		if (!((((((P1 *)_this)->current_load+((P1 *)_this)->order.size)<=((P1 *)_this)->max_cap)&&(((P1 *)_this)->station_distance<=2))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: station_distance */  (trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->station_distance;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->station_distance = 0;
		/* merge: offer.id = id(23, 14, 23) */
		reached[1][14] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)_this)->offer.id;
		((P1 *)_this)->offer.id = ((P1 *)_this)->id;
#ifdef VAR_RANGES
		logval("Shuttle:offer.id", ((P1 *)_this)->offer.id);
#endif
		;
		/* merge: offer.charge = charge(23, 15, 23) */
		reached[1][15] = 1;
		(trpt+1)->bup.ovals[2] = ((P1 *)_this)->offer.charge;
		((P1 *)_this)->offer.charge = ((P1 *)_this)->charge;
#ifdef VAR_RANGES
		logval("Shuttle:offer.charge", ((P1 *)_this)->offer.charge);
#endif
		;
		/* merge: offer.refuse = 0(23, 16, 23) */
		reached[1][16] = 1;
		(trpt+1)->bup.ovals[3] = ((int)((P1 *)_this)->offer.refuse);
		((P1 *)_this)->offer.refuse = 0;
#ifdef VAR_RANGES
		logval("Shuttle:offer.refuse", ((int)((P1 *)_this)->offer.refuse));
#endif
		;
		/* merge: .(goto)(0, 22, 23) */
		reached[1][22] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 16: // STATE 18 - problem1-retry.pml:80 - [offer.id = id] (0:23:3 - 1)
		IfNotBlocked
		reached[1][18] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->offer.id;
		((P1 *)_this)->offer.id = ((P1 *)_this)->id;
#ifdef VAR_RANGES
		logval("Shuttle:offer.id", ((P1 *)_this)->offer.id);
#endif
		;
		/* merge: offer.charge = charge(23, 19, 23) */
		reached[1][19] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)_this)->offer.charge;
		((P1 *)_this)->offer.charge = ((P1 *)_this)->charge;
#ifdef VAR_RANGES
		logval("Shuttle:offer.charge", ((P1 *)_this)->offer.charge);
#endif
		;
		/* merge: offer.refuse = 1(23, 20, 23) */
		reached[1][20] = 1;
		(trpt+1)->bup.ovals[2] = ((int)((P1 *)_this)->offer.refuse);
		((P1 *)_this)->offer.refuse = 1;
#ifdef VAR_RANGES
		logval("Shuttle:offer.refuse", ((int)((P1 *)_this)->offer.refuse));
#endif
		;
		/* merge: .(goto)(0, 22, 23) */
		reached[1][22] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 17: // STATE 23 - problem1-retry.pml:82 - [shuttleToManagement!offer.id,offer.charge,offer.refuse] (0:0:0 - 3)
		IfNotBlocked
		reached[1][23] = 1;
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
		
		qsend(now.shuttleToManagement, 0, ((P1 *)_this)->offer.id, ((P1 *)_this)->offer.charge, ((int)((P1 *)_this)->offer.refuse), 0, 3);
		_m = 2; goto P999; /* 0 */
	case 18: // STATE 24 - problem1-retry.pml:83 - [managementToShuttle[id]?order.start,order.end,order.size,order.reject] (0:0:4 - 1)
		reached[1][24] = 1;
		if (q_len(now.managementToShuttle[ Index(((P1 *)_this)->id, 4) ]) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->order.start;
		(trpt+1)->bup.ovals[1] = ((P1 *)_this)->order.end;
		(trpt+1)->bup.ovals[2] = ((P1 *)_this)->order.size;
		(trpt+1)->bup.ovals[3] = ((int)((P1 *)_this)->order.reject);
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
		((P1 *)_this)->order.size = qrecv(now.managementToShuttle[ Index(((P1 *)_this)->id, 4) ], XX-1, 2, 0);
#ifdef VAR_RANGES
		logval("Shuttle:order.size", ((P1 *)_this)->order.size);
#endif
		;
		((P1 *)_this)->order.reject = qrecv(now.managementToShuttle[ Index(((P1 *)_this)->id, 4) ], XX-1, 3, 1);
#ifdef VAR_RANGES
		logval("Shuttle:order.reject", ((int)((P1 *)_this)->order.reject));
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.managementToShuttle[ Index(((P1 *)_this)->id, 4) ]);
		sprintf(simtmp, "%d", ((P1 *)_this)->order.start); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P1 *)_this)->order.end); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P1 *)_this)->order.size); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P1 *)_this)->order.reject)); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 19: // STATE 25 - problem1-retry.pml:85 - [((order.size!=0))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][25] = 1;
		if (!((((P1 *)_this)->order.size!=0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 20: // STATE 26 - problem1-retry.pml:85 - [orders!order.start,order.end,order.size,order.reject] (0:0:0 - 1)
		IfNotBlocked
		reached[1][26] = 1;
		if (q_full(((P1 *)_this)->orders))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", ((P1 *)_this)->orders);
		sprintf(simtmp, "%d", ((P1 *)_this)->order.start); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P1 *)_this)->order.end); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P1 *)_this)->order.size); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P1 *)_this)->order.reject)); strcat(simvals, simtmp);		}
#endif
		
		qsend(((P1 *)_this)->orders, 0, ((P1 *)_this)->order.start, ((P1 *)_this)->order.end, ((P1 *)_this)->order.size, ((int)((P1 *)_this)->order.reject), 4);
		_m = 2; goto P999; /* 0 */
	case 21: // STATE 34 - problem1-retry.pml:89 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][34] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC ShuttleManagementSystem */
	case 22: // STATE 1 - problem1-retry.pml:26 - [orders[0].start = first.start] (0:62:12 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		(trpt+1)->bup.ovals = grab_ints(12);
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
		/* merge: min_charge = 100(62, 7, 62) */
		reached[0][7] = 1;
		(trpt+1)->bup.ovals[6] = ((P0 *)_this)->min_charge;
		((P0 *)_this)->min_charge = 100;
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:min_charge", ((P0 *)_this)->min_charge);
#endif
		;
		/* merge: min_id = 0(62, 8, 62) */
		reached[0][8] = 1;
		(trpt+1)->bup.ovals[7] = ((P0 *)_this)->min_id;
		((P0 *)_this)->min_id = 0;
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:min_id", ((P0 *)_this)->min_id);
#endif
		;
		/* merge: shuttle_id = 0(62, 9, 62) */
		reached[0][9] = 1;
		(trpt+1)->bup.ovals[8] = ((P0 *)_this)->shuttle_id;
		((P0 *)_this)->shuttle_id = 0;
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:shuttle_id", ((P0 *)_this)->shuttle_id);
#endif
		;
		/* merge: shuttle_charge = 0(62, 10, 62) */
		reached[0][10] = 1;
		(trpt+1)->bup.ovals[9] = ((P0 *)_this)->shuttle_charge;
		((P0 *)_this)->shuttle_charge = 0;
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:shuttle_charge", ((P0 *)_this)->shuttle_charge);
#endif
		;
		/* merge: i = 0(62, 11, 62) */
		reached[0][11] = 1;
		(trpt+1)->bup.ovals[10] = ((P0 *)_this)->i;
		((P0 *)_this)->i = 0;
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:i", ((P0 *)_this)->i);
#endif
		;
		/* merge: i = 0(62, 12, 62) */
		reached[0][12] = 1;
		(trpt+1)->bup.ovals[11] = ((P0 *)_this)->i;
		((P0 *)_this)->i = 0;
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:i", ((P0 *)_this)->i);
#endif
		;
		/* merge: .(goto)(0, 63, 62) */
		reached[0][63] = 1;
		;
		_m = 3; goto P999; /* 12 */
	case 23: // STATE 13 - problem1-retry.pml:33 - [((i<=(2-1)))] (22:0:2 - 1)
		IfNotBlocked
		reached[0][13] = 1;
		if (!((((P0 *)_this)->i<=(2-1))))
			continue;
		/* merge: printf('[Management System]: Broadcasting New Order\\n')(22, 14, 22) */
		reached[0][14] = 1;
		Printf("[Management System]: Broadcasting New Order\n");
		/* merge: j = 0(22, 15, 22) */
		reached[0][15] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->_5_1_j;
		((P0 *)_this)->_5_1_j = 0;
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:j", ((P0 *)_this)->_5_1_j);
#endif
		;
		/* merge: j = 0(22, 16, 22) */
		reached[0][16] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->_5_1_j;
		((P0 *)_this)->_5_1_j = 0;
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:j", ((P0 *)_this)->_5_1_j);
#endif
		;
		/* merge: .(goto)(0, 23, 22) */
		reached[0][23] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 24: // STATE 17 - problem1-retry.pml:36 - [((j<=(4-1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][17] = 1;
		if (!((((P0 *)_this)->_5_1_j<=(4-1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 25: // STATE 18 - problem1-retry.pml:37 - [managementToShuttle[j]!orders[i].start,orders[i].end,orders[i].size,orders[i].reject] (0:0:0 - 1)
		IfNotBlocked
		reached[0][18] = 1;
		if (q_full(now.managementToShuttle[ Index(((P0 *)_this)->_5_1_j, 4) ]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.managementToShuttle[ Index(((P0 *)_this)->_5_1_j, 4) ]);
		sprintf(simtmp, "%d", ((P0 *)_this)->orders[ Index(((P0 *)_this)->i, 2) ].start); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->orders[ Index(((P0 *)_this)->i, 2) ].end); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->orders[ Index(((P0 *)_this)->i, 2) ].size); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P0 *)_this)->orders[ Index(((P0 *)_this)->i, 2) ].reject)); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.managementToShuttle[ Index(((P0 *)_this)->_5_1_j, 4) ], 0, ((P0 *)_this)->orders[ Index(((P0 *)_this)->i, 2) ].start, ((P0 *)_this)->orders[ Index(((P0 *)_this)->i, 2) ].end, ((P0 *)_this)->orders[ Index(((P0 *)_this)->i, 2) ].size, ((int)((P0 *)_this)->orders[ Index(((P0 *)_this)->i, 2) ].reject), 4);
		_m = 2; goto P999; /* 0 */
	case 26: // STATE 19 - problem1-retry.pml:36 - [j = (j+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][19] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->_5_1_j;
		((P0 *)_this)->_5_1_j = (((P0 *)_this)->_5_1_j+1);
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:j", ((P0 *)_this)->_5_1_j);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 27: // STATE 25 - problem1-retry.pml:39 - [printf('[Management System]: Waiting for replies\\n')] (0:40:1 - 3)
		IfNotBlocked
		reached[0][25] = 1;
		Printf("[Management System]: Waiting for replies\n");
		/* merge: j = 0(40, 26, 40) */
		reached[0][26] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->_5_1_j;
		((P0 *)_this)->_5_1_j = 0;
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:j", ((P0 *)_this)->_5_1_j);
#endif
		;
		/* merge: .(goto)(0, 41, 40) */
		reached[0][41] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 28: // STATE 27 - problem1-retry.pml:40 - [((j<=(4-1)))] (29:0:0 - 1)
		IfNotBlocked
		reached[0][27] = 1;
		if (!((((P0 *)_this)->_5_1_j<=(4-1))))
			continue;
		/* merge: (0, 28, 29) */
		reached[0][28] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 29: // STATE 29 - problem1-retry.pml:42 - [shuttleToManagement?offer.id,offer.charge,offer.refuse] (0:0:3 - 1)
		reached[0][29] = 1;
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
	case 30: // STATE 30 - problem1-retry.pml:44 - [(((offer.charge<min_charge)&&!(offer.refuse)))] (40:0:4 - 1)
		IfNotBlocked
		reached[0][30] = 1;
		if (!(((((P0 *)_this)->_5_1_2_offer.charge<((P0 *)_this)->min_charge)&& !(((int)((P0 *)_this)->_5_1_2_offer.refuse)))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: min_charge */  (trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->min_charge;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->min_charge = 0;
		/* merge: min_charge = offer.charge(40, 31, 40) */
		reached[0][31] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->min_charge;
		((P0 *)_this)->min_charge = ((P0 *)_this)->_5_1_2_offer.charge;
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:min_charge", ((P0 *)_this)->min_charge);
#endif
		;
		/* merge: min_id = offer.id(40, 32, 40) */
		reached[0][32] = 1;
		(trpt+1)->bup.ovals[2] = ((P0 *)_this)->min_id;
		((P0 *)_this)->min_id = ((P0 *)_this)->_5_1_2_offer.id;
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:min_id", ((P0 *)_this)->min_id);
#endif
		;
		/* merge: .(goto)(40, 36, 40) */
		reached[0][36] = 1;
		;
		/* merge: j = (j+1)(40, 37, 40) */
		reached[0][37] = 1;
		(trpt+1)->bup.ovals[3] = ((P0 *)_this)->_5_1_j;
		((P0 *)_this)->_5_1_j = (((P0 *)_this)->_5_1_j+1);
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:j", ((P0 *)_this)->_5_1_j);
#endif
		;
		/* merge: .(goto)(0, 41, 40) */
		reached[0][41] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 31: // STATE 34 - problem1-retry.pml:45 - [(1)] (40:0:1 - 1)
		IfNotBlocked
		reached[0][34] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(40, 36, 40) */
		reached[0][36] = 1;
		;
		/* merge: j = (j+1)(40, 37, 40) */
		reached[0][37] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->_5_1_j;
		((P0 *)_this)->_5_1_j = (((P0 *)_this)->_5_1_j+1);
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:j", ((P0 *)_this)->_5_1_j);
#endif
		;
		/* merge: .(goto)(0, 41, 40) */
		reached[0][41] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 32: // STATE 37 - problem1-retry.pml:40 - [j = (j+1)] (0:40:1 - 3)
		IfNotBlocked
		reached[0][37] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->_5_1_j;
		((P0 *)_this)->_5_1_j = (((P0 *)_this)->_5_1_j+1);
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:j", ((P0 *)_this)->_5_1_j);
#endif
		;
		/* merge: .(goto)(0, 41, 40) */
		reached[0][41] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 33: // STATE 43 - problem1-retry.pml:48 - [printf('[Management System]: New Order assigned to Shuttle %d\\n',min_id)] (0:56:1 - 3)
		IfNotBlocked
		reached[0][43] = 1;
		Printf("[Management System]: New Order assigned to Shuttle %d\n", ((P0 *)_this)->min_id);
		/* merge: j = 0(56, 44, 56) */
		reached[0][44] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->_5_1_j;
		((P0 *)_this)->_5_1_j = 0;
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:j", ((P0 *)_this)->_5_1_j);
#endif
		;
		/* merge: .(goto)(0, 57, 56) */
		reached[0][57] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 34: // STATE 45 - problem1-retry.pml:49 - [((j<=(4-1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][45] = 1;
		if (!((((P0 *)_this)->_5_1_j<=(4-1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 35: // STATE 46 - problem1-retry.pml:51 - [((j==min_id))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][46] = 1;
		if (!((((P0 *)_this)->_5_1_j==((P0 *)_this)->min_id)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 36: // STATE 47 - problem1-retry.pml:51 - [managementToShuttle[j]!orders[i].start,orders[i].end,orders[i].size,orders[i].reject] (0:0:0 - 1)
		IfNotBlocked
		reached[0][47] = 1;
		if (q_full(now.managementToShuttle[ Index(((P0 *)_this)->_5_1_j, 4) ]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.managementToShuttle[ Index(((P0 *)_this)->_5_1_j, 4) ]);
		sprintf(simtmp, "%d", ((P0 *)_this)->orders[ Index(((P0 *)_this)->i, 2) ].start); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->orders[ Index(((P0 *)_this)->i, 2) ].end); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->orders[ Index(((P0 *)_this)->i, 2) ].size); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P0 *)_this)->orders[ Index(((P0 *)_this)->i, 2) ].reject)); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.managementToShuttle[ Index(((P0 *)_this)->_5_1_j, 4) ], 0, ((P0 *)_this)->orders[ Index(((P0 *)_this)->i, 2) ].start, ((P0 *)_this)->orders[ Index(((P0 *)_this)->i, 2) ].end, ((P0 *)_this)->orders[ Index(((P0 *)_this)->i, 2) ].size, ((int)((P0 *)_this)->orders[ Index(((P0 *)_this)->i, 2) ].reject), 4);
		_m = 2; goto P999; /* 0 */
	case 37: // STATE 49 - problem1-retry.pml:52 - [] (0:0:0 - 1)
		IfNotBlocked
		reached[0][49] = 1;
		;
		_m = 3; goto P999; /* 0 */
	case 38: // STATE 50 - problem1-retry.pml:52 - [managementToShuttle[j]!dummy.start,dummy.end,dummy.size,dummy.reject] (0:0:0 - 1)
		IfNotBlocked
		reached[0][50] = 1;
		if (q_full(now.managementToShuttle[ Index(((P0 *)_this)->_5_1_j, 4) ]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.managementToShuttle[ Index(((P0 *)_this)->_5_1_j, 4) ]);
		sprintf(simtmp, "%d", ((P0 *)_this)->_5_1_3_dummy.start); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->_5_1_3_dummy.end); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->_5_1_3_dummy.size); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P0 *)_this)->_5_1_3_dummy.reject)); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.managementToShuttle[ Index(((P0 *)_this)->_5_1_j, 4) ], 0, ((P0 *)_this)->_5_1_3_dummy.start, ((P0 *)_this)->_5_1_3_dummy.end, ((P0 *)_this)->_5_1_3_dummy.size, ((int)((P0 *)_this)->_5_1_3_dummy.reject), 4);
		_m = 2; goto P999; /* 0 */
	case 39: // STATE 53 - problem1-retry.pml:49 - [j = (j+1)] (0:56:1 - 3)
		IfNotBlocked
		reached[0][53] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->_5_1_j;
		((P0 *)_this)->_5_1_j = (((P0 *)_this)->_5_1_j+1);
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:j", ((P0 *)_this)->_5_1_j);
#endif
		;
		/* merge: .(goto)(0, 57, 56) */
		reached[0][57] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 40: // STATE 59 - problem1-retry.pml:33 - [i = (i+1)] (0:62:1 - 3)
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
	case 41: // STATE 65 - problem1-retry.pml:56 - [-end-] (0:0:0 - 3)
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


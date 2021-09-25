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
	case 3: // STATE 1 - problem1.pml:215 - [(run Shuttle(4,2,1,0))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][1] = 1;
		if (!(addproc(II, 1, 0, 4, 2, 1, 0, 0, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 2 - problem1.pml:216 - [(run Shuttle(2,4,1,1))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][2] = 1;
		if (!(addproc(II, 1, 0, 2, 4, 1, 1, 0, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 5: // STATE 3 - problem1.pml:217 - [(run Shuttle(5,1,2,2))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][3] = 1;
		if (!(addproc(II, 1, 0, 5, 1, 2, 2, 0, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 6: // STATE 4 - problem1.pml:218 - [(run Shuttle(3,3,3,3))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][4] = 1;
		if (!(addproc(II, 1, 0, 3, 3, 3, 3, 0, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 5 - problem1.pml:219 - [(run RailwayNetwork())] (0:0:0 - 1)
		IfNotBlocked
		reached[3][5] = 1;
		if (!(addproc(II, 1, 1, 0, 0, 0, 0, 0, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 6 - problem1.pml:220 - [] (0:14:6 - 1)
		IfNotBlocked
		reached[3][6] = 1;
		;
		/* merge: first.start = 1(14, 7, 14) */
		reached[3][7] = 1;
		(trpt+1)->bup.ovals = grab_ints(6);
		(trpt+1)->bup.ovals[0] = ((P3 *)_this)->_11_6_first.start;
		((P3 *)_this)->_11_6_first.start = 1;
#ifdef VAR_RANGES
		logval(":init::first.start", ((P3 *)_this)->_11_6_first.start);
#endif
		;
		/* merge: first.end = 3(14, 8, 14) */
		reached[3][8] = 1;
		(trpt+1)->bup.ovals[1] = ((P3 *)_this)->_11_6_first.end;
		((P3 *)_this)->_11_6_first.end = 3;
#ifdef VAR_RANGES
		logval(":init::first.end", ((P3 *)_this)->_11_6_first.end);
#endif
		;
		/* merge: first.size = 4(14, 9, 14) */
		reached[3][9] = 1;
		(trpt+1)->bup.ovals[2] = ((P3 *)_this)->_11_6_first.size;
		((P3 *)_this)->_11_6_first.size = 4;
#ifdef VAR_RANGES
		logval(":init::first.size", ((P3 *)_this)->_11_6_first.size);
#endif
		;
		/* merge: (14, 10, 14) */
		reached[3][10] = 1;
		;
		/* merge: second.start = 2(14, 11, 14) */
		reached[3][11] = 1;
		(trpt+1)->bup.ovals[3] = ((P3 *)_this)->_11_6_second.start;
		((P3 *)_this)->_11_6_second.start = 2;
#ifdef VAR_RANGES
		logval(":init::second.start", ((P3 *)_this)->_11_6_second.start);
#endif
		;
		/* merge: second.end = 3(14, 12, 14) */
		reached[3][12] = 1;
		(trpt+1)->bup.ovals[4] = ((P3 *)_this)->_11_6_second.end;
		((P3 *)_this)->_11_6_second.end = 3;
#ifdef VAR_RANGES
		logval(":init::second.end", ((P3 *)_this)->_11_6_second.end);
#endif
		;
		/* merge: second.size = 2(14, 13, 14) */
		reached[3][13] = 1;
		(trpt+1)->bup.ovals[5] = ((P3 *)_this)->_11_6_second.size;
		((P3 *)_this)->_11_6_second.size = 2;
#ifdef VAR_RANGES
		logval(":init::second.size", ((P3 *)_this)->_11_6_second.size);
#endif
		;
		_m = 3; goto P999; /* 7 */
	case 9: // STATE 14 - problem1.pml:222 - [(run ShuttleManagementSystem(first.start,first.end,first.size,second.start,second.end,second.size))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][14] = 1;
		if (!(addproc(II, 1, 2, ((P3 *)_this)->_11_6_first.start, ((P3 *)_this)->_11_6_first.end, ((P3 *)_this)->_11_6_first.size, ((P3 *)_this)->_11_6_second.start, ((P3 *)_this)->_11_6_second.end, ((P3 *)_this)->_11_6_second.size)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 10: // STATE 16 - problem1.pml:224 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[3][16] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC ShuttleManagementSystem */
	case 11: // STATE 1 - problem1.pml:181 - [orders[0].start = first.start] (0:62:12 - 1)
		IfNotBlocked
		reached[2][1] = 1;
		(trpt+1)->bup.ovals = grab_ints(12);
		(trpt+1)->bup.ovals[0] = ((P2 *)_this)->orders[0].start;
		((P2 *)_this)->orders[0].start = ((P2 *)_this)->first.start;
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:orders[0].start", ((P2 *)_this)->orders[0].start);
#endif
		;
		/* merge: orders[0].end = first.end(62, 2, 62) */
		reached[2][2] = 1;
		(trpt+1)->bup.ovals[1] = ((P2 *)_this)->orders[0].end;
		((P2 *)_this)->orders[0].end = ((P2 *)_this)->first.end;
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:orders[0].end", ((P2 *)_this)->orders[0].end);
#endif
		;
		/* merge: orders[0].size = first.size(62, 3, 62) */
		reached[2][3] = 1;
		(trpt+1)->bup.ovals[2] = ((P2 *)_this)->orders[0].size;
		((P2 *)_this)->orders[0].size = ((P2 *)_this)->first.size;
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:orders[0].size", ((P2 *)_this)->orders[0].size);
#endif
		;
		/* merge: orders[1].start = second.start(62, 4, 62) */
		reached[2][4] = 1;
		(trpt+1)->bup.ovals[3] = ((P2 *)_this)->orders[1].start;
		((P2 *)_this)->orders[1].start = ((P2 *)_this)->second.start;
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:orders[1].start", ((P2 *)_this)->orders[1].start);
#endif
		;
		/* merge: orders[1].end = second.end(62, 5, 62) */
		reached[2][5] = 1;
		(trpt+1)->bup.ovals[4] = ((P2 *)_this)->orders[1].end;
		((P2 *)_this)->orders[1].end = ((P2 *)_this)->second.end;
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:orders[1].end", ((P2 *)_this)->orders[1].end);
#endif
		;
		/* merge: orders[1].size = second.size(62, 6, 62) */
		reached[2][6] = 1;
		(trpt+1)->bup.ovals[5] = ((P2 *)_this)->orders[1].size;
		((P2 *)_this)->orders[1].size = ((P2 *)_this)->second.size;
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:orders[1].size", ((P2 *)_this)->orders[1].size);
#endif
		;
		/* merge: min_charge = 100(62, 7, 62) */
		reached[2][7] = 1;
		(trpt+1)->bup.ovals[6] = ((P2 *)_this)->min_charge;
		((P2 *)_this)->min_charge = 100;
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:min_charge", ((P2 *)_this)->min_charge);
#endif
		;
		/* merge: min_id = 0(62, 8, 62) */
		reached[2][8] = 1;
		(trpt+1)->bup.ovals[7] = ((P2 *)_this)->min_id;
		((P2 *)_this)->min_id = 0;
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:min_id", ((P2 *)_this)->min_id);
#endif
		;
		/* merge: shuttle_id = 0(62, 9, 62) */
		reached[2][9] = 1;
		(trpt+1)->bup.ovals[8] = ((P2 *)_this)->shuttle_id;
		((P2 *)_this)->shuttle_id = 0;
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:shuttle_id", ((P2 *)_this)->shuttle_id);
#endif
		;
		/* merge: shuttle_charge = 0(62, 10, 62) */
		reached[2][10] = 1;
		(trpt+1)->bup.ovals[9] = ((P2 *)_this)->shuttle_charge;
		((P2 *)_this)->shuttle_charge = 0;
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:shuttle_charge", ((P2 *)_this)->shuttle_charge);
#endif
		;
		/* merge: i = 0(62, 11, 62) */
		reached[2][11] = 1;
		(trpt+1)->bup.ovals[10] = ((P2 *)_this)->i;
		((P2 *)_this)->i = 0;
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:i", ((P2 *)_this)->i);
#endif
		;
		/* merge: i = 0(62, 12, 62) */
		reached[2][12] = 1;
		(trpt+1)->bup.ovals[11] = ((P2 *)_this)->i;
		((P2 *)_this)->i = 0;
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:i", ((P2 *)_this)->i);
#endif
		;
		/* merge: .(goto)(0, 63, 62) */
		reached[2][63] = 1;
		;
		_m = 3; goto P999; /* 12 */
	case 12: // STATE 13 - problem1.pml:188 - [((i<=(2-1)))] (22:0:2 - 1)
		IfNotBlocked
		reached[2][13] = 1;
		if (!((((P2 *)_this)->i<=(2-1))))
			continue;
		/* merge: printf('[Management System]: Broadcasting New Order\\n')(22, 14, 22) */
		reached[2][14] = 1;
		Printf("[Management System]: Broadcasting New Order\n");
		/* merge: j = 0(22, 15, 22) */
		reached[2][15] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P2 *)_this)->_10_5_j;
		((P2 *)_this)->_10_5_j = 0;
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:j", ((P2 *)_this)->_10_5_j);
#endif
		;
		/* merge: j = 0(22, 16, 22) */
		reached[2][16] = 1;
		(trpt+1)->bup.ovals[1] = ((P2 *)_this)->_10_5_j;
		((P2 *)_this)->_10_5_j = 0;
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:j", ((P2 *)_this)->_10_5_j);
#endif
		;
		/* merge: .(goto)(0, 23, 22) */
		reached[2][23] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 13: // STATE 17 - problem1.pml:191 - [((j<=(4-1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][17] = 1;
		if (!((((P2 *)_this)->_10_5_j<=(4-1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 14: // STATE 18 - problem1.pml:192 - [managementTOshuttle[j]!orders[i].start,orders[i].end,orders[i].size] (0:0:0 - 1)
		IfNotBlocked
		reached[2][18] = 1;
		if (q_full(now.managementTOshuttle[ Index(((P2 *)_this)->_10_5_j, 4) ]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.managementTOshuttle[ Index(((P2 *)_this)->_10_5_j, 4) ]);
		sprintf(simtmp, "%d", ((P2 *)_this)->orders[ Index(((P2 *)_this)->i, 2) ].start); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P2 *)_this)->orders[ Index(((P2 *)_this)->i, 2) ].end); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P2 *)_this)->orders[ Index(((P2 *)_this)->i, 2) ].size); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.managementTOshuttle[ Index(((P2 *)_this)->_10_5_j, 4) ], 0, ((P2 *)_this)->orders[ Index(((P2 *)_this)->i, 2) ].start, ((P2 *)_this)->orders[ Index(((P2 *)_this)->i, 2) ].end, ((P2 *)_this)->orders[ Index(((P2 *)_this)->i, 2) ].size, 3);
		_m = 2; goto P999; /* 0 */
	case 15: // STATE 19 - problem1.pml:191 - [j = (j+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[2][19] = 1;
		(trpt+1)->bup.oval = ((P2 *)_this)->_10_5_j;
		((P2 *)_this)->_10_5_j = (((P2 *)_this)->_10_5_j+1);
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:j", ((P2 *)_this)->_10_5_j);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 16: // STATE 25 - problem1.pml:194 - [printf('[Management System]: Waiting for replies\\n')] (0:40:1 - 3)
		IfNotBlocked
		reached[2][25] = 1;
		Printf("[Management System]: Waiting for replies\n");
		/* merge: j = 0(40, 26, 40) */
		reached[2][26] = 1;
		(trpt+1)->bup.oval = ((P2 *)_this)->_10_5_j;
		((P2 *)_this)->_10_5_j = 0;
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:j", ((P2 *)_this)->_10_5_j);
#endif
		;
		/* merge: .(goto)(0, 41, 40) */
		reached[2][41] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 17: // STATE 27 - problem1.pml:195 - [((j<=(4-1)))] (29:0:0 - 1)
		IfNotBlocked
		reached[2][27] = 1;
		if (!((((P2 *)_this)->_10_5_j<=(4-1))))
			continue;
		/* merge: (0, 28, 29) */
		reached[2][28] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 18: // STATE 29 - problem1.pml:197 - [shuttleTOmanagement?offer.id,offer.charge,offer.refuse] (0:0:3 - 1)
		reached[2][29] = 1;
		if (q_len(now.shuttleTOmanagement) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P2 *)_this)->_10_5_2_offer.id;
		(trpt+1)->bup.ovals[1] = ((P2 *)_this)->_10_5_2_offer.charge;
		(trpt+1)->bup.ovals[2] = ((int)((P2 *)_this)->_10_5_2_offer.refuse);
		;
		((P2 *)_this)->_10_5_2_offer.id = qrecv(now.shuttleTOmanagement, XX-1, 0, 0);
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:offer.id", ((P2 *)_this)->_10_5_2_offer.id);
#endif
		;
		((P2 *)_this)->_10_5_2_offer.charge = qrecv(now.shuttleTOmanagement, XX-1, 1, 0);
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:offer.charge", ((P2 *)_this)->_10_5_2_offer.charge);
#endif
		;
		((P2 *)_this)->_10_5_2_offer.refuse = qrecv(now.shuttleTOmanagement, XX-1, 2, 1);
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:offer.refuse", ((int)((P2 *)_this)->_10_5_2_offer.refuse));
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.shuttleTOmanagement);
		sprintf(simtmp, "%d", ((P2 *)_this)->_10_5_2_offer.id); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P2 *)_this)->_10_5_2_offer.charge); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P2 *)_this)->_10_5_2_offer.refuse)); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 19: // STATE 30 - problem1.pml:199 - [(((offer.charge<min_charge)&&!(offer.refuse)))] (40:0:4 - 1)
		IfNotBlocked
		reached[2][30] = 1;
		if (!(((((P2 *)_this)->_10_5_2_offer.charge<((P2 *)_this)->min_charge)&& !(((int)((P2 *)_this)->_10_5_2_offer.refuse)))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: min_charge */  (trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((P2 *)_this)->min_charge;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P2 *)_this)->min_charge = 0;
		/* merge: min_charge = offer.charge(40, 31, 40) */
		reached[2][31] = 1;
		(trpt+1)->bup.ovals[1] = ((P2 *)_this)->min_charge;
		((P2 *)_this)->min_charge = ((P2 *)_this)->_10_5_2_offer.charge;
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:min_charge", ((P2 *)_this)->min_charge);
#endif
		;
		/* merge: min_id = offer.id(40, 32, 40) */
		reached[2][32] = 1;
		(trpt+1)->bup.ovals[2] = ((P2 *)_this)->min_id;
		((P2 *)_this)->min_id = ((P2 *)_this)->_10_5_2_offer.id;
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:min_id", ((P2 *)_this)->min_id);
#endif
		;
		/* merge: .(goto)(40, 36, 40) */
		reached[2][36] = 1;
		;
		/* merge: j = (j+1)(40, 37, 40) */
		reached[2][37] = 1;
		(trpt+1)->bup.ovals[3] = ((P2 *)_this)->_10_5_j;
		((P2 *)_this)->_10_5_j = (((P2 *)_this)->_10_5_j+1);
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:j", ((P2 *)_this)->_10_5_j);
#endif
		;
		/* merge: .(goto)(0, 41, 40) */
		reached[2][41] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 20: // STATE 34 - problem1.pml:200 - [(1)] (40:0:1 - 1)
		IfNotBlocked
		reached[2][34] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(40, 36, 40) */
		reached[2][36] = 1;
		;
		/* merge: j = (j+1)(40, 37, 40) */
		reached[2][37] = 1;
		(trpt+1)->bup.oval = ((P2 *)_this)->_10_5_j;
		((P2 *)_this)->_10_5_j = (((P2 *)_this)->_10_5_j+1);
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:j", ((P2 *)_this)->_10_5_j);
#endif
		;
		/* merge: .(goto)(0, 41, 40) */
		reached[2][41] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 21: // STATE 37 - problem1.pml:195 - [j = (j+1)] (0:40:1 - 3)
		IfNotBlocked
		reached[2][37] = 1;
		(trpt+1)->bup.oval = ((P2 *)_this)->_10_5_j;
		((P2 *)_this)->_10_5_j = (((P2 *)_this)->_10_5_j+1);
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:j", ((P2 *)_this)->_10_5_j);
#endif
		;
		/* merge: .(goto)(0, 41, 40) */
		reached[2][41] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 22: // STATE 43 - problem1.pml:203 - [printf('[Management System]: New Order assigned to Shuttle %d\\n',min_id)] (0:56:1 - 3)
		IfNotBlocked
		reached[2][43] = 1;
		Printf("[Management System]: New Order assigned to Shuttle %d\n", ((P2 *)_this)->min_id);
		/* merge: j = 0(56, 44, 56) */
		reached[2][44] = 1;
		(trpt+1)->bup.oval = ((P2 *)_this)->_10_5_j;
		((P2 *)_this)->_10_5_j = 0;
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:j", ((P2 *)_this)->_10_5_j);
#endif
		;
		/* merge: .(goto)(0, 57, 56) */
		reached[2][57] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 23: // STATE 45 - problem1.pml:204 - [((j<=(4-1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][45] = 1;
		if (!((((P2 *)_this)->_10_5_j<=(4-1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 24: // STATE 46 - problem1.pml:206 - [((j==min_id))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][46] = 1;
		if (!((((P2 *)_this)->_10_5_j==((P2 *)_this)->min_id)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 25: // STATE 47 - problem1.pml:206 - [managementTOshuttle[j]!orders[i].start,orders[i].end,orders[i].size] (0:0:0 - 1)
		IfNotBlocked
		reached[2][47] = 1;
		if (q_full(now.managementTOshuttle[ Index(((P2 *)_this)->_10_5_j, 4) ]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.managementTOshuttle[ Index(((P2 *)_this)->_10_5_j, 4) ]);
		sprintf(simtmp, "%d", ((P2 *)_this)->orders[ Index(((P2 *)_this)->i, 2) ].start); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P2 *)_this)->orders[ Index(((P2 *)_this)->i, 2) ].end); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P2 *)_this)->orders[ Index(((P2 *)_this)->i, 2) ].size); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.managementTOshuttle[ Index(((P2 *)_this)->_10_5_j, 4) ], 0, ((P2 *)_this)->orders[ Index(((P2 *)_this)->i, 2) ].start, ((P2 *)_this)->orders[ Index(((P2 *)_this)->i, 2) ].end, ((P2 *)_this)->orders[ Index(((P2 *)_this)->i, 2) ].size, 3);
		_m = 2; goto P999; /* 0 */
	case 26: // STATE 49 - problem1.pml:207 - [] (0:0:0 - 1)
		IfNotBlocked
		reached[2][49] = 1;
		;
		_m = 3; goto P999; /* 0 */
	case 27: // STATE 50 - problem1.pml:207 - [managementTOshuttle[j]!dummy.start,dummy.end,dummy.size] (0:0:0 - 1)
		IfNotBlocked
		reached[2][50] = 1;
		if (q_full(now.managementTOshuttle[ Index(((P2 *)_this)->_10_5_j, 4) ]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.managementTOshuttle[ Index(((P2 *)_this)->_10_5_j, 4) ]);
		sprintf(simtmp, "%d", ((P2 *)_this)->_10_5_3_dummy.start); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P2 *)_this)->_10_5_3_dummy.end); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P2 *)_this)->_10_5_3_dummy.size); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.managementTOshuttle[ Index(((P2 *)_this)->_10_5_j, 4) ], 0, ((P2 *)_this)->_10_5_3_dummy.start, ((P2 *)_this)->_10_5_3_dummy.end, ((P2 *)_this)->_10_5_3_dummy.size, 3);
		_m = 2; goto P999; /* 0 */
	case 28: // STATE 53 - problem1.pml:204 - [j = (j+1)] (0:56:1 - 3)
		IfNotBlocked
		reached[2][53] = 1;
		(trpt+1)->bup.oval = ((P2 *)_this)->_10_5_j;
		((P2 *)_this)->_10_5_j = (((P2 *)_this)->_10_5_j+1);
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:j", ((P2 *)_this)->_10_5_j);
#endif
		;
		/* merge: .(goto)(0, 57, 56) */
		reached[2][57] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 29: // STATE 59 - problem1.pml:188 - [i = (i+1)] (0:62:1 - 3)
		IfNotBlocked
		reached[2][59] = 1;
		(trpt+1)->bup.oval = ((P2 *)_this)->i;
		((P2 *)_this)->i = (((P2 *)_this)->i+1);
#ifdef VAR_RANGES
		logval("ShuttleManagementSystem:i", ((P2 *)_this)->i);
#endif
		;
		/* merge: .(goto)(0, 63, 62) */
		reached[2][63] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 30: // STATE 65 - problem1.pml:211 - [-end-] (0:0:0 - 3)
		IfNotBlocked
		reached[2][65] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC RailwayNetwork */
	case 31: // STATE 1 - problem1.pml:162 - [(nempty(shuttleTOrailway))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][1] = 1;
		if (!((q_len(now.shuttleTOrailway)>0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 32: // STATE 2 - problem1.pml:163 - [shuttleTOrailway?req.track,req.direction,req.shuttle_id] (0:0:3 - 1)
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
	case 33: // STATE 3 - problem1.pml:165 - [((req.direction==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][3] = 1;
		if (!((((P1 *)_this)->req.direction==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 34: // STATE 4 - problem1.pml:167 - [(!(track_clockwise[req.track]))] (6:0:1 - 1)
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
	case 35: // STATE 6 - problem1.pml:167 - [railwayTOshuttle[req.shuttle_id]!1] (0:0:0 - 1)
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
	case 36: // STATE 9 - problem1.pml:168 - [railwayTOshuttle[shuttle_id]!0] (0:0:0 - 1)
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
	case 37: // STATE 12 - problem1.pml:170 - [((req.direction==-(1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][12] = 1;
		if (!((((P1 *)_this)->req.direction== -(1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 38: // STATE 13 - problem1.pml:172 - [(!(track_anti_clockwise[req.track]))] (15:0:1 - 1)
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
	case 39: // STATE 15 - problem1.pml:172 - [railwayTOshuttle[req.shuttle_id]!1] (0:0:0 - 1)
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
	case 40: // STATE 18 - problem1.pml:173 - [railwayTOshuttle[shuttle_id]!0] (0:0:0 - 1)
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
	case 41: // STATE 26 - problem1.pml:177 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][26] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Shuttle */
	case 42: // STATE 1 - problem1.pml:119 - [track_req.shuttle_id = id] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->track_req.shuttle_id;
		((P0 *)_this)->track_req.shuttle_id = ((P0 *)_this)->id;
#ifdef VAR_RANGES
		logval("Shuttle:track_req.shuttle_id", ((P0 *)_this)->track_req.shuttle_id);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 43: // STATE 2 - problem1.pml:122 - [managementTOshuttle[id]?receive_order.start,receive_order.end,receive_order.size] (0:0:3 - 1)
		reached[0][2] = 1;
		if (q_len(now.managementTOshuttle[ Index(((P0 *)_this)->id, 4) ]) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->receive_order.start;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->receive_order.end;
		(trpt+1)->bup.ovals[2] = ((P0 *)_this)->receive_order.size;
		;
		((P0 *)_this)->receive_order.start = qrecv(now.managementTOshuttle[ Index(((P0 *)_this)->id, 4) ], XX-1, 0, 0);
#ifdef VAR_RANGES
		logval("Shuttle:receive_order.start", ((P0 *)_this)->receive_order.start);
#endif
		;
		((P0 *)_this)->receive_order.end = qrecv(now.managementTOshuttle[ Index(((P0 *)_this)->id, 4) ], XX-1, 1, 0);
#ifdef VAR_RANGES
		logval("Shuttle:receive_order.end", ((P0 *)_this)->receive_order.end);
#endif
		;
		((P0 *)_this)->receive_order.size = qrecv(now.managementTOshuttle[ Index(((P0 *)_this)->id, 4) ], XX-1, 2, 1);
#ifdef VAR_RANGES
		logval("Shuttle:receive_order.size", ((P0 *)_this)->receive_order.size);
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.managementTOshuttle[ Index(((P0 *)_this)->id, 4) ]);
		sprintf(simtmp, "%d", ((P0 *)_this)->receive_order.start); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->receive_order.end); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->receive_order.size); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 44: // STATE 3 - problem1.pml:124 - [temp_station = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][3] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->temp_station;
		((P0 *)_this)->temp_station = 0;
#ifdef VAR_RANGES
		logval("Shuttle:temp_station", ((P0 *)_this)->temp_station);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 45: // STATE 4 - problem1.pml:125 - [(isMoving)] (22:0:4 - 1)
		IfNotBlocked
		reached[0][4] = 1;
		if (!(((int)((P0 *)_this)->isMoving)))
			continue;
		/* merge: temp_station = next_station(22, 5, 22) */
		reached[0][5] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->temp_station;
		((P0 *)_this)->temp_station = ((P0 *)_this)->next_station;
#ifdef VAR_RANGES
		logval("Shuttle:temp_station", ((P0 *)_this)->temp_station);
#endif
		;
		/* merge: .(goto)(22, 9, 22) */
		reached[0][9] = 1;
		;
		/* merge: distance_a = ( ((temp_station>receive_order.start)) -> ((temp_station-receive_order.start)) : ((receive_order.start-temp_station)) )(22, 10, 22) */
		reached[0][10] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->distance_a;
		((P0 *)_this)->distance_a = ( ((((P0 *)_this)->temp_station>((P0 *)_this)->receive_order.start)) ? ((((P0 *)_this)->temp_station-((P0 *)_this)->receive_order.start)) : ((((P0 *)_this)->receive_order.start-((P0 *)_this)->temp_station)) );
#ifdef VAR_RANGES
		logval("Shuttle:distance_a", ((P0 *)_this)->distance_a);
#endif
		;
		/* merge: distance_b = ((4-( ((temp_station>receive_order.start)) -> (temp_station) : (receive_order.start) ))+( ((temp_station<receive_order.start)) -> (temp_station) : (receive_order.start) ))(22, 11, 22) */
		reached[0][11] = 1;
		(trpt+1)->bup.ovals[2] = ((P0 *)_this)->distance_b;
		((P0 *)_this)->distance_b = ((4-( ((((P0 *)_this)->temp_station>((P0 *)_this)->receive_order.start)) ? (((P0 *)_this)->temp_station) : (((P0 *)_this)->receive_order.start) ))+( ((((P0 *)_this)->temp_station<((P0 *)_this)->receive_order.start)) ? (((P0 *)_this)->temp_station) : (((P0 *)_this)->receive_order.start) ));
#ifdef VAR_RANGES
		logval("Shuttle:distance_b", ((P0 *)_this)->distance_b);
#endif
		;
		/* merge: station_distance = ( ((distance_a<distance_b)) -> (distance_a) : (distance_b) )(22, 12, 22) */
		reached[0][12] = 1;
		(trpt+1)->bup.ovals[3] = ((P0 *)_this)->station_distance;
		((P0 *)_this)->station_distance = ( ((((P0 *)_this)->distance_a<((P0 *)_this)->distance_b)) ? (((P0 *)_this)->distance_a) : (((P0 *)_this)->distance_b) );
#ifdef VAR_RANGES
		logval("Shuttle:station_distance", ((P0 *)_this)->station_distance);
#endif
		;
		/* merge: (22, 13, 22) */
		reached[0][13] = 1;
		;
		_m = 3; goto P999; /* 6 */
	case 46: // STATE 7 - problem1.pml:126 - [temp_station = current_station] (0:22:4 - 1)
		IfNotBlocked
		reached[0][7] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->temp_station;
		((P0 *)_this)->temp_station = ((P0 *)_this)->current_station;
#ifdef VAR_RANGES
		logval("Shuttle:temp_station", ((P0 *)_this)->temp_station);
#endif
		;
		/* merge: .(goto)(22, 9, 22) */
		reached[0][9] = 1;
		;
		/* merge: distance_a = ( ((temp_station>receive_order.start)) -> ((temp_station-receive_order.start)) : ((receive_order.start-temp_station)) )(22, 10, 22) */
		reached[0][10] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->distance_a;
		((P0 *)_this)->distance_a = ( ((((P0 *)_this)->temp_station>((P0 *)_this)->receive_order.start)) ? ((((P0 *)_this)->temp_station-((P0 *)_this)->receive_order.start)) : ((((P0 *)_this)->receive_order.start-((P0 *)_this)->temp_station)) );
#ifdef VAR_RANGES
		logval("Shuttle:distance_a", ((P0 *)_this)->distance_a);
#endif
		;
		/* merge: distance_b = ((4-( ((temp_station>receive_order.start)) -> (temp_station) : (receive_order.start) ))+( ((temp_station<receive_order.start)) -> (temp_station) : (receive_order.start) ))(22, 11, 22) */
		reached[0][11] = 1;
		(trpt+1)->bup.ovals[2] = ((P0 *)_this)->distance_b;
		((P0 *)_this)->distance_b = ((4-( ((((P0 *)_this)->temp_station>((P0 *)_this)->receive_order.start)) ? (((P0 *)_this)->temp_station) : (((P0 *)_this)->receive_order.start) ))+( ((((P0 *)_this)->temp_station<((P0 *)_this)->receive_order.start)) ? (((P0 *)_this)->temp_station) : (((P0 *)_this)->receive_order.start) ));
#ifdef VAR_RANGES
		logval("Shuttle:distance_b", ((P0 *)_this)->distance_b);
#endif
		;
		/* merge: station_distance = ( ((distance_a<distance_b)) -> (distance_a) : (distance_b) )(22, 12, 22) */
		reached[0][12] = 1;
		(trpt+1)->bup.ovals[3] = ((P0 *)_this)->station_distance;
		((P0 *)_this)->station_distance = ( ((((P0 *)_this)->distance_a<((P0 *)_this)->distance_b)) ? (((P0 *)_this)->distance_a) : (((P0 *)_this)->distance_b) );
#ifdef VAR_RANGES
		logval("Shuttle:station_distance", ((P0 *)_this)->station_distance);
#endif
		;
		/* merge: (22, 13, 22) */
		reached[0][13] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 47: // STATE 10 - problem1.pml:129 - [distance_a = ( ((temp_station>receive_order.start)) -> ((temp_station-receive_order.start)) : ((receive_order.start-temp_station)) )] (0:22:3 - 3)
		IfNotBlocked
		reached[0][10] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->distance_a;
		((P0 *)_this)->distance_a = ( ((((P0 *)_this)->temp_station>((P0 *)_this)->receive_order.start)) ? ((((P0 *)_this)->temp_station-((P0 *)_this)->receive_order.start)) : ((((P0 *)_this)->receive_order.start-((P0 *)_this)->temp_station)) );
#ifdef VAR_RANGES
		logval("Shuttle:distance_a", ((P0 *)_this)->distance_a);
#endif
		;
		/* merge: distance_b = ((4-( ((temp_station>receive_order.start)) -> (temp_station) : (receive_order.start) ))+( ((temp_station<receive_order.start)) -> (temp_station) : (receive_order.start) ))(22, 11, 22) */
		reached[0][11] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->distance_b;
		((P0 *)_this)->distance_b = ((4-( ((((P0 *)_this)->temp_station>((P0 *)_this)->receive_order.start)) ? (((P0 *)_this)->temp_station) : (((P0 *)_this)->receive_order.start) ))+( ((((P0 *)_this)->temp_station<((P0 *)_this)->receive_order.start)) ? (((P0 *)_this)->temp_station) : (((P0 *)_this)->receive_order.start) ));
#ifdef VAR_RANGES
		logval("Shuttle:distance_b", ((P0 *)_this)->distance_b);
#endif
		;
		/* merge: station_distance = ( ((distance_a<distance_b)) -> (distance_a) : (distance_b) )(22, 12, 22) */
		reached[0][12] = 1;
		(trpt+1)->bup.ovals[2] = ((P0 *)_this)->station_distance;
		((P0 *)_this)->station_distance = ( ((((P0 *)_this)->distance_a<((P0 *)_this)->distance_b)) ? (((P0 *)_this)->distance_a) : (((P0 *)_this)->distance_b) );
#ifdef VAR_RANGES
		logval("Shuttle:station_distance", ((P0 *)_this)->station_distance);
#endif
		;
		/* merge: (22, 13, 22) */
		reached[0][13] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 48: // STATE 14 - problem1.pml:133 - [((((current_cap+receive_order.size)<=max_cap)&&(station_distance<=2)))] (24:0:4 - 1)
		IfNotBlocked
		reached[0][14] = 1;
		if (!((((((P0 *)_this)->current_cap+((P0 *)_this)->receive_order.size)<=((P0 *)_this)->max_cap)&&(((P0 *)_this)->station_distance<=2))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: station_distance */  (trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->station_distance;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->station_distance = 0;
		/* merge: offer.id = id(24, 15, 24) */
		reached[0][15] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->offer.id;
		((P0 *)_this)->offer.id = ((P0 *)_this)->id;
#ifdef VAR_RANGES
		logval("Shuttle:offer.id", ((P0 *)_this)->offer.id);
#endif
		;
		/* merge: offer.charge = charge(24, 16, 24) */
		reached[0][16] = 1;
		(trpt+1)->bup.ovals[2] = ((P0 *)_this)->offer.charge;
		((P0 *)_this)->offer.charge = ((P0 *)_this)->charge;
#ifdef VAR_RANGES
		logval("Shuttle:offer.charge", ((P0 *)_this)->offer.charge);
#endif
		;
		/* merge: offer.refuse = 0(24, 17, 24) */
		reached[0][17] = 1;
		(trpt+1)->bup.ovals[3] = ((int)((P0 *)_this)->offer.refuse);
		((P0 *)_this)->offer.refuse = 0;
#ifdef VAR_RANGES
		logval("Shuttle:offer.refuse", ((int)((P0 *)_this)->offer.refuse));
#endif
		;
		/* merge: .(goto)(0, 23, 24) */
		reached[0][23] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 49: // STATE 19 - problem1.pml:136 - [offer.id = id] (0:24:3 - 1)
		IfNotBlocked
		reached[0][19] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->offer.id;
		((P0 *)_this)->offer.id = ((P0 *)_this)->id;
#ifdef VAR_RANGES
		logval("Shuttle:offer.id", ((P0 *)_this)->offer.id);
#endif
		;
		/* merge: offer.charge = charge(24, 20, 24) */
		reached[0][20] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->offer.charge;
		((P0 *)_this)->offer.charge = ((P0 *)_this)->charge;
#ifdef VAR_RANGES
		logval("Shuttle:offer.charge", ((P0 *)_this)->offer.charge);
#endif
		;
		/* merge: offer.refuse = 1(24, 21, 24) */
		reached[0][21] = 1;
		(trpt+1)->bup.ovals[2] = ((int)((P0 *)_this)->offer.refuse);
		((P0 *)_this)->offer.refuse = 1;
#ifdef VAR_RANGES
		logval("Shuttle:offer.refuse", ((int)((P0 *)_this)->offer.refuse));
#endif
		;
		/* merge: .(goto)(0, 23, 24) */
		reached[0][23] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 50: // STATE 24 - problem1.pml:138 - [shuttleTOmanagement!offer.id,offer.charge,offer.refuse] (0:0:0 - 3)
		IfNotBlocked
		reached[0][24] = 1;
		if (q_full(now.shuttleTOmanagement))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.shuttleTOmanagement);
		sprintf(simtmp, "%d", ((P0 *)_this)->offer.id); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->offer.charge); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P0 *)_this)->offer.refuse)); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.shuttleTOmanagement, 0, ((P0 *)_this)->offer.id, ((P0 *)_this)->offer.charge, ((int)((P0 *)_this)->offer.refuse), 3);
		_m = 2; goto P999; /* 0 */
	case 51: // STATE 25 - problem1.pml:139 - [managementTOshuttle[id]?receive_order.start,receive_order.end,receive_order.size] (0:0:3 - 1)
		reached[0][25] = 1;
		if (q_len(now.managementTOshuttle[ Index(((P0 *)_this)->id, 4) ]) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->receive_order.start;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->receive_order.end;
		(trpt+1)->bup.ovals[2] = ((P0 *)_this)->receive_order.size;
		;
		((P0 *)_this)->receive_order.start = qrecv(now.managementTOshuttle[ Index(((P0 *)_this)->id, 4) ], XX-1, 0, 0);
#ifdef VAR_RANGES
		logval("Shuttle:receive_order.start", ((P0 *)_this)->receive_order.start);
#endif
		;
		((P0 *)_this)->receive_order.end = qrecv(now.managementTOshuttle[ Index(((P0 *)_this)->id, 4) ], XX-1, 1, 0);
#ifdef VAR_RANGES
		logval("Shuttle:receive_order.end", ((P0 *)_this)->receive_order.end);
#endif
		;
		((P0 *)_this)->receive_order.size = qrecv(now.managementTOshuttle[ Index(((P0 *)_this)->id, 4) ], XX-1, 2, 1);
#ifdef VAR_RANGES
		logval("Shuttle:receive_order.size", ((P0 *)_this)->receive_order.size);
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.managementTOshuttle[ Index(((P0 *)_this)->id, 4) ]);
		sprintf(simtmp, "%d", ((P0 *)_this)->receive_order.start); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->receive_order.end); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->receive_order.size); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 52: // STATE 26 - problem1.pml:141 - [((receive_order.size!=0))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][26] = 1;
		if (!((((P0 *)_this)->receive_order.size!=0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 53: // STATE 27 - problem1.pml:141 - [order_queue!receive_order.start,receive_order.end,receive_order.size] (0:0:0 - 1)
		IfNotBlocked
		reached[0][27] = 1;
		if (q_full(((P0 *)_this)->order_queue))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", ((P0 *)_this)->order_queue);
		sprintf(simtmp, "%d", ((P0 *)_this)->receive_order.start); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->receive_order.end); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->receive_order.size); strcat(simvals, simtmp);		}
#endif
		
		qsend(((P0 *)_this)->order_queue, 0, ((P0 *)_this)->receive_order.start, ((P0 *)_this)->receive_order.end, ((P0 *)_this)->receive_order.size, 3);
		_m = 2; goto P999; /* 0 */
	case 54: // STATE 32 - problem1.pml:144 - [((isMoving||!(isFree)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][32] = 1;
		if (!((((int)((P0 *)_this)->isMoving)|| !(((int)((P0 *)_this)->isFree)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 55: // STATE 33 - problem1.pml:44 - [((((current_station==destination)&&(destination==current_order.end))&&!(isMoving)))] (97:0:4 - 1)
		IfNotBlocked
		reached[0][33] = 1;
		if (!((((((P0 *)_this)->current_station==((P0 *)_this)->destination)&&(((P0 *)_this)->destination==((P0 *)_this)->current_order.end))&& !(((int)((P0 *)_this)->isMoving)))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: isMoving */  (trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->isMoving;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->isMoving = 0;
		/* merge: current_cap = (current_cap-current_order.size)(97, 34, 97) */
		reached[0][34] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->current_cap;
		((P0 *)_this)->current_cap = (((P0 *)_this)->current_cap-((P0 *)_this)->current_order.size);
#ifdef VAR_RANGES
		logval("Shuttle:current_cap", ((P0 *)_this)->current_cap);
#endif
		;
		/* merge: isFree = 1(97, 35, 97) */
		reached[0][35] = 1;
		(trpt+1)->bup.ovals[2] = ((int)((P0 *)_this)->isFree);
		((P0 *)_this)->isFree = 1;
#ifdef VAR_RANGES
		logval("Shuttle:isFree", ((int)((P0 *)_this)->isFree));
#endif
		;
		/* merge: isMoving = 0(97, 36, 97) */
		reached[0][36] = 1;
		(trpt+1)->bup.ovals[3] = ((int)((P0 *)_this)->isMoving);
		((P0 *)_this)->isMoving = 0;
#ifdef VAR_RANGES
		logval("Shuttle:isMoving", ((int)((P0 *)_this)->isMoving));
#endif
		;
		/* merge: printf('[Shuttle %d] Unloading %d passengers at station %d \\n',id,current_order.size,current_order.end)(97, 37, 97) */
		reached[0][37] = 1;
		Printf("[Shuttle %d] Unloading %d passengers at station %d \n", ((P0 *)_this)->id, ((P0 *)_this)->current_order.size, ((P0 *)_this)->current_order.end);
		/* merge: goto L2(0, 38, 97) */
		reached[0][38] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 56: // STATE 39 - problem1.pml:50 - [((((current_station==destination)&&(destination==current_order.start))&&!(isMoving)))] (45:0:3 - 1)
		IfNotBlocked
		reached[0][39] = 1;
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
		/* merge: destination = current_order.end(0, 40, 45) */
		reached[0][40] = 1;
		(trpt+1)->bup.ovals[2] = ((P0 *)_this)->destination;
		((P0 *)_this)->destination = ((P0 *)_this)->current_order.end;
#ifdef VAR_RANGES
		logval("Shuttle:destination", ((P0 *)_this)->destination);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 57: // STATE 41 - problem1.pml:53 - [((((current_station+(4/2))%4)>=destination))] (98:0:5 - 1)
		IfNotBlocked
		reached[0][41] = 1;
		if (!((((((P0 *)_this)->current_station+(4/2))%4)>=((P0 *)_this)->destination)))
			continue;
		/* merge: direction = 1(98, 42, 98) */
		reached[0][42] = 1;
		(trpt+1)->bup.ovals = grab_ints(5);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->direction;
		((P0 *)_this)->direction = 1;
#ifdef VAR_RANGES
		logval("Shuttle:direction", ((P0 *)_this)->direction);
#endif
		;
		/* merge: .(goto)(98, 46, 98) */
		reached[0][46] = 1;
		;
		/* merge: current_cap = (current_cap+current_order.size)(98, 47, 98) */
		reached[0][47] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->current_cap;
		((P0 *)_this)->current_cap = (((P0 *)_this)->current_cap+((P0 *)_this)->current_order.size);
#ifdef VAR_RANGES
		logval("Shuttle:current_cap", ((P0 *)_this)->current_cap);
#endif
		;
		/* merge: isFree = 0(98, 48, 98) */
		reached[0][48] = 1;
		(trpt+1)->bup.ovals[2] = ((int)((P0 *)_this)->isFree);
		((P0 *)_this)->isFree = 0;
#ifdef VAR_RANGES
		logval("Shuttle:isFree", ((int)((P0 *)_this)->isFree));
#endif
		;
		/* merge: isMoving = 0(98, 49, 98) */
		reached[0][49] = 1;
		(trpt+1)->bup.ovals[3] = ((int)((P0 *)_this)->isMoving);
		((P0 *)_this)->isMoving = 0;
#ifdef VAR_RANGES
		logval("Shuttle:isMoving", ((int)((P0 *)_this)->isMoving));
#endif
		;
		/* merge: track_distance = 1(98, 50, 98) */
		reached[0][50] = 1;
		(trpt+1)->bup.ovals[4] = ((P0 *)_this)->track_distance;
		((P0 *)_this)->track_distance = 1;
#ifdef VAR_RANGES
		logval("Shuttle:track_distance", ((P0 *)_this)->track_distance);
#endif
		;
		/* merge: printf('[Shuttle %d] Loading %d passengers from station %d \\n',id,current_order.size,current_order.start)(98, 51, 98) */
		reached[0][51] = 1;
		Printf("[Shuttle %d] Loading %d passengers from station %d \n", ((P0 *)_this)->id, ((P0 *)_this)->current_order.size, ((P0 *)_this)->current_order.start);
		/* merge: goto L1(0, 52, 98) */
		reached[0][52] = 1;
		;
		_m = 3; goto P999; /* 8 */
	case 58: // STATE 44 - problem1.pml:54 - [direction = -(1)] (0:98:5 - 1)
		IfNotBlocked
		reached[0][44] = 1;
		(trpt+1)->bup.ovals = grab_ints(5);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->direction;
		((P0 *)_this)->direction =  -(1);
#ifdef VAR_RANGES
		logval("Shuttle:direction", ((P0 *)_this)->direction);
#endif
		;
		/* merge: .(goto)(98, 46, 98) */
		reached[0][46] = 1;
		;
		/* merge: current_cap = (current_cap+current_order.size)(98, 47, 98) */
		reached[0][47] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->current_cap;
		((P0 *)_this)->current_cap = (((P0 *)_this)->current_cap+((P0 *)_this)->current_order.size);
#ifdef VAR_RANGES
		logval("Shuttle:current_cap", ((P0 *)_this)->current_cap);
#endif
		;
		/* merge: isFree = 0(98, 48, 98) */
		reached[0][48] = 1;
		(trpt+1)->bup.ovals[2] = ((int)((P0 *)_this)->isFree);
		((P0 *)_this)->isFree = 0;
#ifdef VAR_RANGES
		logval("Shuttle:isFree", ((int)((P0 *)_this)->isFree));
#endif
		;
		/* merge: isMoving = 0(98, 49, 98) */
		reached[0][49] = 1;
		(trpt+1)->bup.ovals[3] = ((int)((P0 *)_this)->isMoving);
		((P0 *)_this)->isMoving = 0;
#ifdef VAR_RANGES
		logval("Shuttle:isMoving", ((int)((P0 *)_this)->isMoving));
#endif
		;
		/* merge: track_distance = 1(98, 50, 98) */
		reached[0][50] = 1;
		(trpt+1)->bup.ovals[4] = ((P0 *)_this)->track_distance;
		((P0 *)_this)->track_distance = 1;
#ifdef VAR_RANGES
		logval("Shuttle:track_distance", ((P0 *)_this)->track_distance);
#endif
		;
		/* merge: printf('[Shuttle %d] Loading %d passengers from station %d \\n',id,current_order.size,current_order.start)(98, 51, 98) */
		reached[0][51] = 1;
		Printf("[Shuttle %d] Loading %d passengers from station %d \n", ((P0 *)_this)->id, ((P0 *)_this)->current_order.size, ((P0 *)_this)->current_order.start);
		/* merge: goto L1(0, 52, 98) */
		reached[0][52] = 1;
		;
		_m = 3; goto P999; /* 7 */
	case 59: // STATE 47 - problem1.pml:56 - [current_cap = (current_cap+current_order.size)] (0:98:4 - 3)
		IfNotBlocked
		reached[0][47] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->current_cap;
		((P0 *)_this)->current_cap = (((P0 *)_this)->current_cap+((P0 *)_this)->current_order.size);
#ifdef VAR_RANGES
		logval("Shuttle:current_cap", ((P0 *)_this)->current_cap);
#endif
		;
		/* merge: isFree = 0(98, 48, 98) */
		reached[0][48] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P0 *)_this)->isFree);
		((P0 *)_this)->isFree = 0;
#ifdef VAR_RANGES
		logval("Shuttle:isFree", ((int)((P0 *)_this)->isFree));
#endif
		;
		/* merge: isMoving = 0(98, 49, 98) */
		reached[0][49] = 1;
		(trpt+1)->bup.ovals[2] = ((int)((P0 *)_this)->isMoving);
		((P0 *)_this)->isMoving = 0;
#ifdef VAR_RANGES
		logval("Shuttle:isMoving", ((int)((P0 *)_this)->isMoving));
#endif
		;
		/* merge: track_distance = 1(98, 50, 98) */
		reached[0][50] = 1;
		(trpt+1)->bup.ovals[3] = ((P0 *)_this)->track_distance;
		((P0 *)_this)->track_distance = 1;
#ifdef VAR_RANGES
		logval("Shuttle:track_distance", ((P0 *)_this)->track_distance);
#endif
		;
		/* merge: printf('[Shuttle %d] Loading %d passengers from station %d \\n',id,current_order.size,current_order.start)(98, 51, 98) */
		reached[0][51] = 1;
		Printf("[Shuttle %d] Loading %d passengers from station %d \n", ((P0 *)_this)->id, ((P0 *)_this)->current_order.size, ((P0 *)_this)->current_order.start);
		/* merge: goto L1(0, 52, 98) */
		reached[0][52] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 60: // STATE 57 - problem1.pml:66 - [(!(isMoving))] (0:0:1 - 1)
		IfNotBlocked
		reached[0][57] = 1;
		if (!( !(((int)((P0 *)_this)->isMoving))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: isMoving */  (trpt+1)->bup.oval = ((P0 *)_this)->isMoving;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->isMoving = 0;
		_m = 3; goto P999; /* 0 */
	case 61: // STATE 58 - problem1.pml:68 - [((direction==1))] (69:0:2 - 1)
		IfNotBlocked
		reached[0][58] = 1;
		if (!((((P0 *)_this)->direction==1)))
			continue;
		/* merge: next_station = ((current_station+1)%4)(69, 59, 69) */
		reached[0][59] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->next_station;
		((P0 *)_this)->next_station = ((((P0 *)_this)->current_station+1)%4);
#ifdef VAR_RANGES
		logval("Shuttle:next_station", ((P0 *)_this)->next_station);
#endif
		;
		/* merge: .(goto)(69, 63, 69) */
		reached[0][63] = 1;
		;
		/* merge: track_req.direction = direction(69, 64, 69) */
		reached[0][64] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->track_req.direction;
		((P0 *)_this)->track_req.direction = ((P0 *)_this)->direction;
#ifdef VAR_RANGES
		logval("Shuttle:track_req.direction", ((P0 *)_this)->track_req.direction);
#endif
		;
		_m = 3; goto P999; /* 3 */
	case 62: // STATE 60 - problem1.pml:69 - [((direction==-(1)))] (69:0:2 - 1)
		IfNotBlocked
		reached[0][60] = 1;
		if (!((((P0 *)_this)->direction== -(1))))
			continue;
		/* merge: next_station = (((current_station-1)+4)%4)(69, 61, 69) */
		reached[0][61] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->next_station;
		((P0 *)_this)->next_station = (((((P0 *)_this)->current_station-1)+4)%4);
#ifdef VAR_RANGES
		logval("Shuttle:next_station", ((P0 *)_this)->next_station);
#endif
		;
		/* merge: .(goto)(69, 63, 69) */
		reached[0][63] = 1;
		;
		/* merge: track_req.direction = direction(69, 64, 69) */
		reached[0][64] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->track_req.direction;
		((P0 *)_this)->track_req.direction = ((P0 *)_this)->direction;
#ifdef VAR_RANGES
		logval("Shuttle:track_req.direction", ((P0 *)_this)->track_req.direction);
#endif
		;
		_m = 3; goto P999; /* 3 */
	case 63: // STATE 64 - problem1.pml:72 - [track_req.direction = direction] (0:69:1 - 3)
		IfNotBlocked
		reached[0][64] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->track_req.direction;
		((P0 *)_this)->track_req.direction = ((P0 *)_this)->direction;
#ifdef VAR_RANGES
		logval("Shuttle:track_req.direction", ((P0 *)_this)->track_req.direction);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 64: // STATE 65 - problem1.pml:74 - [((current_station==(4-1)))] (82:0:2 - 1)
		IfNotBlocked
		reached[0][65] = 1;
		if (!((((P0 *)_this)->current_station==(4-1))))
			continue;
		/* merge: track_req.track = current_station(82, 66, 82) */
		reached[0][66] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->track_req.track;
		((P0 *)_this)->track_req.track = ((P0 *)_this)->current_station;
#ifdef VAR_RANGES
		logval("Shuttle:track_req.track", ((P0 *)_this)->track_req.track);
#endif
		;
		/* merge: .(goto)(82, 70, 82) */
		reached[0][70] = 1;
		;
		/* merge: got_track = 0(82, 71, 82) */
		reached[0][71] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P0 *)_this)->_8_2_got_track);
		((P0 *)_this)->_8_2_got_track = 0;
#ifdef VAR_RANGES
		logval("Shuttle:got_track", ((int)((P0 *)_this)->_8_2_got_track));
#endif
		;
		/* merge: .(goto)(0, 83, 82) */
		reached[0][83] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 65: // STATE 68 - problem1.pml:75 - [track_req.track = ( ((current_station<next_station)) -> (current_station) : (next_station) )] (0:82:2 - 1)
		IfNotBlocked
		reached[0][68] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->track_req.track;
		((P0 *)_this)->track_req.track = ( ((((P0 *)_this)->current_station<((P0 *)_this)->next_station)) ? (((P0 *)_this)->current_station) : (((P0 *)_this)->next_station) );
#ifdef VAR_RANGES
		logval("Shuttle:track_req.track", ((P0 *)_this)->track_req.track);
#endif
		;
		/* merge: .(goto)(82, 70, 82) */
		reached[0][70] = 1;
		;
		/* merge: got_track = 0(82, 71, 82) */
		reached[0][71] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P0 *)_this)->_8_2_got_track);
		((P0 *)_this)->_8_2_got_track = 0;
#ifdef VAR_RANGES
		logval("Shuttle:got_track", ((int)((P0 *)_this)->_8_2_got_track));
#endif
		;
		/* merge: .(goto)(0, 83, 82) */
		reached[0][83] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 66: // STATE 71 - problem1.pml:80 - [got_track = 0] (0:82:1 - 3)
		IfNotBlocked
		reached[0][71] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)_this)->_8_2_got_track);
		((P0 *)_this)->_8_2_got_track = 0;
#ifdef VAR_RANGES
		logval("Shuttle:got_track", ((int)((P0 *)_this)->_8_2_got_track));
#endif
		;
		/* merge: .(goto)(0, 83, 82) */
		reached[0][83] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 67: // STATE 72 - problem1.pml:81 - [shuttleTOrailway!track_req.track,track_req.direction,track_req.shuttle_id] (0:0:0 - 1)
		IfNotBlocked
		reached[0][72] = 1;
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
	case 68: // STATE 73 - problem1.pml:82 - [railwayTOshuttle[id]?got_track] (0:0:1 - 1)
		reached[0][73] = 1;
		if (q_len(now.railwayTOshuttle[ Index(((P0 *)_this)->id, 4) ]) == 0) continue;

		XX=1;
		(trpt+1)->bup.oval = ((int)((P0 *)_this)->_8_2_got_track);
		;
		((P0 *)_this)->_8_2_got_track = qrecv(now.railwayTOshuttle[ Index(((P0 *)_this)->id, 4) ], XX-1, 0, 1);
#ifdef VAR_RANGES
		logval("Shuttle:got_track", ((int)((P0 *)_this)->_8_2_got_track));
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.railwayTOshuttle[ Index(((P0 *)_this)->id, 4) ]);
		sprintf(simtmp, "%d", ((int)((P0 *)_this)->_8_2_got_track)); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 69: // STATE 74 - problem1.pml:84 - [(got_track)] (112:0:3 - 1)
		IfNotBlocked
		reached[0][74] = 1;
		if (!(((int)((P0 *)_this)->_8_2_got_track)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: _8_2_got_track */  (trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->_8_2_got_track;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->_8_2_got_track = 0;
		/* merge: track_distance = 1(112, 75, 112) */
		reached[0][75] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->track_distance;
		((P0 *)_this)->track_distance = 1;
#ifdef VAR_RANGES
		logval("Shuttle:track_distance", ((P0 *)_this)->track_distance);
#endif
		;
		/* merge: isMoving = 1(112, 76, 112) */
		reached[0][76] = 1;
		(trpt+1)->bup.ovals[2] = ((int)((P0 *)_this)->isMoving);
		((P0 *)_this)->isMoving = 1;
#ifdef VAR_RANGES
		logval("Shuttle:isMoving", ((int)((P0 *)_this)->isMoving));
#endif
		;
		/* merge: goto :b1(0, 77, 112) */
		reached[0][77] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 70: // STATE 85 - problem1.pml:89 - [((isMoving&&(track_distance>0)))] (112:0:1 - 1)
		IfNotBlocked
		reached[0][85] = 1;
		if (!((((int)((P0 *)_this)->isMoving)&&(((P0 *)_this)->track_distance>0))))
			continue;
		/* merge: track_distance = (track_distance-1)(112, 86, 112) */
		reached[0][86] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->track_distance;
		((P0 *)_this)->track_distance = (((P0 *)_this)->track_distance-1);
#ifdef VAR_RANGES
		logval("Shuttle:track_distance", ((P0 *)_this)->track_distance);
#endif
		;
		/* merge: printf('[Shuttle %d] Moving from station %d to station %d\\n',id,current_station,next_station)(112, 87, 112) */
		reached[0][87] = 1;
		Printf("[Shuttle %d] Moving from station %d to station %d\n", ((P0 *)_this)->id, ((P0 *)_this)->current_station, ((P0 *)_this)->next_station);
		/* merge: .(goto)(0, 99, 112) */
		reached[0][99] = 1;
		;
		/* merge: .(goto)(0, 113, 112) */
		reached[0][113] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 71: // STATE 88 - problem1.pml:92 - [((isMoving&&(track_distance==0)))] (94:0:2 - 1)
		IfNotBlocked
		reached[0][88] = 1;
		if (!((((int)((P0 *)_this)->isMoving)&&(((P0 *)_this)->track_distance==0))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: isMoving */  (trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->isMoving;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->isMoving = 0;
		/* merge: current_station = next_station(0, 89, 94) */
		reached[0][89] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->current_station;
		((P0 *)_this)->current_station = ((P0 *)_this)->next_station;
#ifdef VAR_RANGES
		logval("Shuttle:current_station", ((P0 *)_this)->current_station);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 72: // STATE 90 - problem1.pml:95 - [((direction==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][90] = 1;
		if (!((((P0 *)_this)->direction==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 73: // STATE 91 - problem1.pml:95 - [track_clockwise[track_req.track] = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][91] = 1;
		(trpt+1)->bup.oval = ((int)now.track_clockwise[ Index(((P0 *)_this)->track_req.track, 4) ]);
		now.track_clockwise[ Index(((P0 *)_this)->track_req.track, 4) ] = 0;
#ifdef VAR_RANGES
		logval("track_clockwise[Shuttle:track_req.track]", ((int)now.track_clockwise[ Index(((P0 *)_this)->track_req.track, 4) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 74: // STATE 92 - problem1.pml:96 - [((direction==-(1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][92] = 1;
		if (!((((P0 *)_this)->direction== -(1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 75: // STATE 93 - problem1.pml:96 - [track_anti_clockwise[track_req.track] = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][93] = 1;
		(trpt+1)->bup.oval = ((int)now.track_anti_clockwise[ Index(((P0 *)_this)->track_req.track, 4) ]);
		now.track_anti_clockwise[ Index(((P0 *)_this)->track_req.track, 4) ] = 0;
#ifdef VAR_RANGES
		logval("track_anti_clockwise[Shuttle:track_req.track]", ((int)now.track_anti_clockwise[ Index(((P0 *)_this)->track_req.track, 4) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 76: // STATE 96 - problem1.pml:98 - [isMoving = 0] (0:97:1 - 3)
		IfNotBlocked
		reached[0][96] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)_this)->isMoving);
		((P0 *)_this)->isMoving = 0;
#ifdef VAR_RANGES
		logval("Shuttle:isMoving", ((int)((P0 *)_this)->isMoving));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 77: // STATE 101 - problem1.pml:145 - [((isFree&&nempty(order_queue)))] (0:0:1 - 1)
		IfNotBlocked
		reached[0][101] = 1;
		if (!((((int)((P0 *)_this)->isFree)&&(q_len(((P0 *)_this)->order_queue)>0))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: isFree */  (trpt+1)->bup.oval = ((P0 *)_this)->isFree;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->isFree = 0;
		_m = 3; goto P999; /* 0 */
	case 78: // STATE 102 - problem1.pml:146 - [order_queue?current_order.start,current_order.end,current_order.size] (0:0:3 - 1)
		reached[0][102] = 1;
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
	case 79: // STATE 103 - problem1.pml:147 - [isFree = 0] (0:110:2 - 1)
		IfNotBlocked
		reached[0][103] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P0 *)_this)->isFree);
		((P0 *)_this)->isFree = 0;
#ifdef VAR_RANGES
		logval("Shuttle:isFree", ((int)((P0 *)_this)->isFree));
#endif
		;
		/* merge: destination = current_order.start(110, 104, 110) */
		reached[0][104] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->destination;
		((P0 *)_this)->destination = ((P0 *)_this)->current_order.start;
#ifdef VAR_RANGES
		logval("Shuttle:destination", ((P0 *)_this)->destination);
#endif
		;
		/* merge: printf('[Shuttle %d] Starting new order from station %d to station %d\\n',id,current_order.start,current_order.end)(110, 105, 110) */
		reached[0][105] = 1;
		Printf("[Shuttle %d] Starting new order from station %d to station %d\n", ((P0 *)_this)->id, ((P0 *)_this)->current_order.start, ((P0 *)_this)->current_order.end);
		_m = 3; goto P999; /* 2 */
	case 80: // STATE 106 - problem1.pml:151 - [((((current_station+(4/2))%4)>=destination))] (112:0:1 - 1)
		IfNotBlocked
		reached[0][106] = 1;
		if (!((((((P0 *)_this)->current_station+(4/2))%4)>=((P0 *)_this)->destination)))
			continue;
		/* merge: direction = 1(0, 107, 112) */
		reached[0][107] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->direction;
		((P0 *)_this)->direction = 1;
#ifdef VAR_RANGES
		logval("Shuttle:direction", ((P0 *)_this)->direction);
#endif
		;
		/* merge: .(goto)(0, 111, 112) */
		reached[0][111] = 1;
		;
		/* merge: .(goto)(0, 113, 112) */
		reached[0][113] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 81: // STATE 109 - problem1.pml:152 - [direction = -(1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][109] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->direction;
		((P0 *)_this)->direction =  -(1);
#ifdef VAR_RANGES
		logval("Shuttle:direction", ((P0 *)_this)->direction);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 82: // STATE 115 - problem1.pml:155 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][115] = 1;
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


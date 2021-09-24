#ifdef PEG
struct T_SRC {
	char *fl; int ln;
} T_SRC[NTRANS];

void
tr_2_src(int m, char *file, int ln)
{	T_SRC[m].fl = file;
	T_SRC[m].ln = ln;
}

void
putpeg(int n, int m)
{	printf("%5d	trans %4d ", m, n);
	printf("%s:%d\n",
		T_SRC[n].fl, T_SRC[n].ln);
}
#endif

void
settable(void)
{	Trans *T;
	Trans *settr(int, int, int, int, int, char *, int, int, int);

	trans = (Trans ***) emalloc(5*sizeof(Trans **));

	/* proctype 3: :init: */

	trans[3] = (Trans **) emalloc(19*sizeof(Trans *));

	T = trans[ 3][17] = settr(206,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(206,2,1,0,0,"ATOMIC", 1, 3, 0);
	trans[3][1]	= settr(190,2,2,3,3,"(run Shuttle(4,2,1,0,shuttleTOmanagement,managementTOshuttle[0],shuttleTOrailway,railwayTOshuttle[0]))", 1, 3, 0);
	trans[3][2]	= settr(191,2,3,4,4,"(run Shuttle(2,4,1,1,shuttleTOmanagement,managementTOshuttle[1],shuttleTOrailway,railwayTOshuttle[1]))", 1, 3, 0);
	trans[3][3]	= settr(192,2,4,5,5,"(run Shuttle(5,1,2,2,shuttleTOmanagement,managementTOshuttle[2],shuttleTOrailway,railwayTOshuttle[2]))", 1, 3, 0);
	trans[3][4]	= settr(193,2,5,6,6,"(run Shuttle(3,3,3,3,shuttleTOmanagement,managementTOshuttle[3],shuttleTOrailway,railwayTOshuttle[3]))", 1, 3, 0);
	trans[3][5]	= settr(194,2,13,7,7,"", 1, 3, 0); /* m: 6 -> 0,13 */
	reached3[6] = 1;
	trans[3][6]	= settr(0,0,0,0,0,"first.start = 1",0,0,0);
	trans[3][7]	= settr(0,0,0,0,0,"first.end = 3",0,0,0);
	trans[3][8]	= settr(0,0,0,0,0,"first.size = 4",0,0,0);
	trans[3][9]	= settr(0,0,0,0,0,"",0,0,0);
	trans[3][10]	= settr(0,0,0,0,0,"second.start = 2",0,0,0);
	trans[3][11]	= settr(0,0,0,0,0,"second.end = 3",0,0,0);
	trans[3][12]	= settr(0,0,0,0,0,"second.size = 2",0,0,0);
	trans[3][13]	= settr(202,2,14,8,8,"order_stack!first.start,first.end,first.size", 1, 3, 0);
	trans[3][14]	= settr(203,2,15,9,9,"order_stack!second.start,second.end,second.size", 1, 3, 0);
	trans[3][15]	= settr(204,2,16,10,10,"(run RailwayNetwork())", 1, 3, 0);
	trans[3][16]	= settr(205,0,18,11,11,"(run ManagementSystem())", 1, 3, 0);
	trans[3][18]	= settr(207,0,0,12,12,"-end-", 0, 3500, 0);

	/* proctype 2: ManagementSystem */

	trans[2] = (Trans **) emalloc(51*sizeof(Trans *));

	trans[2][48]	= settr(187,0,47,1,0,".(goto)", 0, 2, 0);
	T = trans[2][47] = settr(186,0,0,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(186,0,1,0,0,"DO", 0, 2, 0);
	trans[2][1]	= settr(140,0,2,13,0,"(nempty(order_stack))", 1, 503, 0);
	trans[2][2]	= settr(141,0,3,14,0,"printf('[Management System]: Broadcasting New Order\\n')", 0, 2, 0);
	trans[2][3]	= settr(142,0,4,15,15,"order_stack?current.start,current.end,current.size", 1, 503, 0);
	trans[2][4]	= settr(143,0,10,16,16,"i = 0", 0, 2, 0);
	trans[2][11]	= settr(150,0,10,1,0,".(goto)", 0, 2, 0);
	T = trans[2][10] = settr(149,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(149,0,5,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(149,0,8,0,0,"DO", 0, 2, 0);
	trans[2][5]	= settr(144,0,6,17,0,"((i<=(4-1)))", 0, 2, 0);
	trans[2][6]	= settr(145,0,7,18,18,"managementTOshuttle[i]!current.start,current.end,current.size", 1, 5, 0);
	trans[2][7]	= settr(146,0,10,19,19,"i = (i+1)", 0, 2, 0);
	trans[2][8]	= settr(147,0,13,2,0,"else", 0, 2, 0);
	trans[2][9]	= settr(148,0,13,1,0,"goto :b4", 0, 2, 0); /* m: 13 -> 0,28 */
	reached2[13] = 1;
	trans[2][12]	= settr(151,0,13,1,0,"break", 0, 2, 0);
	trans[2][13]	= settr(152,0,28,20,20,"i = 0", 0, 2, 0); /* m: 14 -> 0,28 */
	reached2[14] = 1;
	trans[2][14]	= settr(0,0,0,0,0,"printf('[Management System]: Waiting for replies\\n')",0,0,0);
	trans[2][15]	= settr(0,0,0,0,0,"i = 0",0,0,0);
	trans[2][29]	= settr(168,0,28,1,0,".(goto)", 0, 2, 0);
	T = trans[2][28] = settr(167,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(167,0,16,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(167,0,26,0,0,"DO", 0, 2, 0);
	trans[2][16]	= settr(155,0,17,21,0,"((i<=(4-1)))", 0, 2, 0);
	trans[2][17]	= settr(156,0,23,22,22,"shuttleTOmanagement?shuttle_charge,shuttle_id", 1, 504, 0);
	T = trans[2][23] = settr(162,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(162,0,18,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(162,0,21,0,0,"IF", 0, 2, 0);
	trans[2][18]	= settr(157,0,28,23,23,"((shuttle_charge<min_charge))", 0, 2, 0); /* m: 19 -> 28,0 */
	reached2[19] = 1;
	trans[2][19]	= settr(0,0,0,0,0,"min_charge = shuttle_charge",0,0,0);
	trans[2][20]	= settr(0,0,0,0,0,"offer_id = shuttle_id",0,0,0);
	trans[2][24]	= settr(163,0,25,1,0,".(goto)", 0, 2, 0); /* m: 25 -> 0,28 */
	reached2[25] = 1;
	trans[2][21]	= settr(160,0,22,2,0,"else", 0, 2, 0);
	trans[2][22]	= settr(161,0,28,24,24,"(1)", 0, 2, 0); /* m: 25 -> 28,0 */
	reached2[25] = 1;
	trans[2][25]	= settr(164,0,28,25,25,"i = (i+1)", 0, 2, 0);
	trans[2][26]	= settr(165,0,31,2,0,"else", 0, 2, 0);
	trans[2][27]	= settr(166,0,31,1,0,"goto :b5", 0, 2, 0); /* m: 31 -> 0,44 */
	reached2[31] = 1;
	trans[2][30]	= settr(169,0,31,1,0,"break", 0, 2, 0);
	trans[2][31]	= settr(170,0,44,26,26,"i = 0", 0, 2, 0); /* m: 32 -> 0,44 */
	reached2[32] = 1;
	trans[2][32]	= settr(0,0,0,0,0,"printf('[Management System]: New Order assigned to Shuttle %d\\n',offer_id)",0,0,0);
	trans[2][33]	= settr(0,0,0,0,0,"i = 0",0,0,0);
	trans[2][45]	= settr(184,0,44,1,0,".(goto)", 0, 2, 0);
	T = trans[2][44] = settr(183,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(183,0,34,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(183,0,42,0,0,"DO", 0, 2, 0);
	trans[2][34]	= settr(173,0,39,27,0,"((i<=(4-1)))", 0, 2, 0);
	T = trans[2][39] = settr(178,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(178,0,35,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(178,0,37,0,0,"IF", 0, 2, 0);
	trans[2][35]	= settr(174,0,36,28,0,"((i==offer_id))", 0, 2, 0);
	trans[2][36]	= settr(175,0,41,29,29,"managementTOshuttle[i]!current.start,current.end,current.size", 1, 5, 0);
	trans[2][40]	= settr(179,0,41,1,0,".(goto)", 0, 2, 0); /* m: 41 -> 0,44 */
	reached2[41] = 1;
	trans[2][37]	= settr(176,0,38,2,0,"else", 0, 2, 0);
	trans[2][38]	= settr(177,0,41,30,30,"managementTOshuttle[i]!reject.start,reject.end,reject.size", 1, 5, 0);
	trans[2][41]	= settr(180,0,44,31,31,"i = (i+1)", 0, 2, 0);
	trans[2][42]	= settr(181,0,47,2,0,"else", 0, 2, 0);
	trans[2][43]	= settr(182,0,47,1,0,"goto :b6", 0, 2, 0);
	trans[2][46]	= settr(185,0,47,1,0,"break", 0, 2, 0);
	trans[2][49]	= settr(188,0,50,1,0,"break", 0, 2, 0);
	trans[2][50]	= settr(189,0,0,32,32,"-end-", 0, 3500, 0);

	/* proctype 1: RailwayNetwork */

	trans[1] = (Trans **) emalloc(27*sizeof(Trans *));

	trans[1][24]	= settr(137,0,23,1,0,".(goto)", 0, 2, 0);
	T = trans[1][23] = settr(136,0,0,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(136,0,1,0,0,"DO", 0, 2, 0);
	trans[1][1]	= settr(114,0,2,33,0,"(nempty(shuttleTOrailway))", 1, 506, 0);
	trans[1][2]	= settr(115,0,21,34,34,"shuttleTOrailway?req.track,req.direction,req.shuttle_id", 1, 506, 0);
	T = trans[1][21] = settr(134,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(134,0,3,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(134,0,12,0,0,"IF", 0, 2, 0);
	trans[1][3]	= settr(116,0,10,35,0,"((req.direction==1))", 0, 2, 0);
	T = trans[1][10] = settr(123,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(123,0,7,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(123,0,8,0,0,"IF", 0, 2, 0);
	T = trans[ 1][7] = settr(120,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(120,2,4,0,0,"ATOMIC", 1, 7, 0);
	trans[1][4]	= settr(117,2,6,36,36,"(!(track_clockwise[req.track]))", 1, 7, 0); /* m: 5 -> 6,0 */
	reached1[5] = 1;
	trans[1][5]	= settr(0,0,0,0,0,"track_clockwise[req.track] = 1",0,0,0);
	trans[1][6]	= settr(119,0,23,37,37,"railwayTOshuttle[req.shuttle_id]!1", 1, 7, 0);
	trans[1][11]	= settr(124,0,23,1,0,".(goto)", 0, 2, 0);
	trans[1][8]	= settr(121,0,9,2,0,"else", 0, 2, 0);
	trans[1][9]	= settr(122,0,23,38,38,"railwayTOshuttle[shuttle_id]!0", 1, 7, 0);
	trans[1][22]	= settr(135,0,23,1,0,".(goto)", 0, 2, 0);
	trans[1][12]	= settr(125,0,19,39,0,"((req.direction==-(1)))", 0, 2, 0);
	T = trans[1][19] = settr(132,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(132,0,16,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(132,0,17,0,0,"IF", 0, 2, 0);
	T = trans[ 1][16] = settr(129,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(129,2,13,0,0,"ATOMIC", 1, 7, 0);
	trans[1][13]	= settr(126,2,15,40,40,"(!(track_anti_clockwise[req.track]))", 1, 7, 0); /* m: 14 -> 15,0 */
	reached1[14] = 1;
	trans[1][14]	= settr(0,0,0,0,0,"track_anti_clockwise[req.track] = 1",0,0,0);
	trans[1][15]	= settr(128,0,23,41,41,"railwayTOshuttle[req.shuttle_id]!1", 1, 7, 0);
	trans[1][20]	= settr(133,0,23,1,0,".(goto)", 0, 2, 0);
	trans[1][17]	= settr(130,0,18,2,0,"else", 0, 2, 0);
	trans[1][18]	= settr(131,0,23,42,42,"railwayTOshuttle[shuttle_id]!0", 1, 7, 0);
	trans[1][25]	= settr(138,0,26,1,0,"break", 0, 2, 0);
	trans[1][26]	= settr(139,0,0,43,43,"-end-", 0, 3500, 0);

	/* proctype 0: Shuttle */

	trans[0] = (Trans **) emalloc(115*sizeof(Trans *));

	trans[0][1]	= settr(0,0,111,44,44,"track_req.shuttle_id = id", 0, 2, 0);
	trans[0][112]	= settr(111,0,111,1,0,".(goto)", 0, 2, 0);
	T = trans[0][111] = settr(110,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(110,0,2,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(110,0,28,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(110,0,98,0,0,"DO", 0, 2, 0);
	trans[0][2]	= settr(1,0,27,45,45,"om_in?recieve_order.start,recieve_order.end,recieve_order.size", 1, 509, 0);
	T = trans[ 0][27] = settr(26,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(26,0,3,0,0,"sub-sequence", 0, 2, 0);
	trans[0][3]	= settr(2,0,8,46,46,"temp_station = 0", 0, 2, 0);
	T = trans[0][8] = settr(7,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(7,0,4,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(7,0,6,0,0,"IF", 0, 2, 0);
	trans[0][4]	= settr(3,0,13,47,47,"(isMoving)", 0, 2, 0); /* m: 5 -> 13,0 */
	reached0[5] = 1;
	trans[0][5]	= settr(0,0,0,0,0,"temp_station = next_station",0,0,0);
	trans[0][9]	= settr(8,0,13,1,0,".(goto)", 0, 2, 0);
	trans[0][6]	= settr(5,0,7,2,0,"else", 0, 2, 0);
	trans[0][7]	= settr(6,0,13,48,48,"temp_station = current_station", 0, 2, 0);
	T = trans[ 0][13] = settr(12,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(12,0,10,0,0,"sub-sequence", 0, 2, 0);
	trans[0][10]	= settr(9,0,18,49,49,"distance_a = ( ((temp_station>recieve_order.start)) -> ((temp_station-recieve_order.start)) : ((recieve_order.start-temp_station)) )", 0, 2, 0); /* m: 11 -> 0,18 */
	reached0[11] = 1;
	trans[0][11]	= settr(0,0,0,0,0,"distance_b = ((4-( ((temp_station>recieve_order.start)) -> (temp_station) : (recieve_order.start) ))+( ((temp_station<recieve_order.start)) -> (temp_station) : (recieve_order.start) ))",0,0,0);
	trans[0][12]	= settr(0,0,0,0,0,"station_distance = ( ((distance_a<distance_b)) -> (distance_a) : (distance_b) )",0,0,0);
	T = trans[0][18] = settr(17,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(17,0,14,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(17,0,16,0,0,"IF", 0, 2, 0);
	trans[0][14]	= settr(13,0,15,50,50,"((((current_cap+recieve_order.size)<=max_cap)&&(station_distance<=2)))", 0, 2, 0);
	trans[0][15]	= settr(14,0,20,51,51,"om_out!charge,id", 1, 8, 0);
	trans[0][19]	= settr(18,0,20,1,0,".(goto)", 0, 2, 0);
	trans[0][16]	= settr(15,0,17,2,0,"else", 0, 2, 0);
	trans[0][17]	= settr(16,0,20,52,52,"om_out!0,id", 1, 8, 0);
	trans[0][20]	= settr(19,0,25,53,53,"om_in?recieve_order.start,recieve_order.end,recieve_order.size", 1, 509, 0);
	T = trans[0][25] = settr(24,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(24,0,21,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(24,0,23,0,0,"IF", 0, 2, 0);
	trans[0][21]	= settr(20,0,22,54,0,"((recieve_order.size!=0))", 0, 2, 0);
	trans[0][22]	= settr(21,0,111,55,55,"order_queue!recieve_order.start,recieve_order.end,recieve_order.size", 1, 12, 0);
	trans[0][26]	= settr(25,0,111,1,0,".(goto)", 0, 2, 0);
	trans[0][23]	= settr(22,0,24,2,0,"else", 0, 2, 0);
	trans[0][24]	= settr(23,0,111,1,0,"(1)", 0, 2, 0);
	trans[0][28]	= settr(27,0,97,56,0,"((isMoving||!(isFree)))", 0, 2, 0);
	T = trans[ 0][97] = settr(96,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(96,0,52,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][52] = settr(51,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(51,0,29,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(51,0,35,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(51,0,50,0,0,"IF", 0, 2, 0);
	trans[0][29]	= settr(28,0,94,57,57,"((((current_station==destination)&&(destination==current_order.end))&&!(isMoving)))", 0, 2, 0); /* m: 30 -> 94,0 */
	reached0[30] = 1;
	trans[0][30]	= settr(0,0,0,0,0,"current_cap = (current_cap-current_order.size)",0,0,0);
	trans[0][31]	= settr(0,0,0,0,0,"isFree = 1",0,0,0);
	trans[0][32]	= settr(0,0,0,0,0,"isMoving = 0",0,0,0);
	trans[0][33]	= settr(0,0,0,0,0,"printf('[Shuttle %d] Unloading %d passengers at station %d \\n',id,current_order.size,current_order.end)",0,0,0);
	trans[0][34]	= settr(33,0,94,1,0,"goto L2", 0, 2, 0);
	trans[0][53]	= settr(52,0,95,1,0,".(goto)", 0, 2, 0);
	trans[0][35]	= settr(34,0,43,58,58,"((((current_station==destination)&&(destination==current_order.start))&&!(isMoving)))", 0, 2, 0); /* m: 36 -> 43,0 */
	reached0[36] = 1;
	trans[0][36]	= settr(0,0,0,0,0,"destination = current_order.end",0,0,0);
	T = trans[ 0][43] = settr(42,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(42,0,41,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][41] = settr(40,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(40,0,37,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(40,0,39,0,0,"IF", 0, 2, 0);
	trans[0][37]	= settr(36,0,95,59,59,"((((current_station+(4/2))%4)>=destination))", 0, 2, 0); /* m: 38 -> 95,0 */
	reached0[38] = 1;
	trans[0][38]	= settr(0,0,0,0,0,"direction = 1",0,0,0);
	trans[0][42]	= settr(41,0,44,1,0,".(goto)", 0, 2, 0); /* m: 44 -> 0,95 */
	reached0[44] = 1;
	trans[0][39]	= settr(38,0,40,2,0,"else", 0, 2, 0);
	trans[0][40]	= settr(39,0,95,60,60,"direction = -(1)", 0, 2, 0); /* m: 44 -> 0,95 */
	reached0[44] = 1;
	trans[0][44]	= settr(43,0,95,61,61,"current_cap = (current_cap+current_order.size)", 0, 2, 0); /* m: 45 -> 0,95 */
	reached0[45] = 1;
	trans[0][45]	= settr(0,0,0,0,0,"isFree = 0",0,0,0);
	trans[0][46]	= settr(0,0,0,0,0,"isMoving = 0",0,0,0);
	trans[0][47]	= settr(0,0,0,0,0,"track_distance = 3",0,0,0);
	trans[0][48]	= settr(0,0,0,0,0,"printf('[Shuttle %d] Loading %d passengers from station %d \\n',id,current_order.size,current_order.start)",0,0,0);
	trans[0][49]	= settr(48,0,95,1,0,"goto L1", 0, 2, 0);
	trans[0][50]	= settr(49,0,95,2,0,"else", 0, 2, 0);
	trans[0][51]	= settr(50,0,95,1,0,"goto L1", 0, 2, 0);
	T = trans[0][95] = settr(94,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(94,0,54,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(94,0,82,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(94,0,85,0,0,"IF", 0, 2, 0);
	trans[0][54]	= settr(53,0,59,62,62,"(!(isMoving))", 0, 2, 0);
	T = trans[0][59] = settr(58,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(58,0,55,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(58,0,57,0,0,"IF", 0, 2, 0);
	trans[0][55]	= settr(54,0,66,63,63,"((direction==1))", 0, 2, 0); /* m: 56 -> 66,0 */
	reached0[56] = 1;
	trans[0][56]	= settr(0,0,0,0,0,"next_station = ((current_station+1)%4)",0,0,0);
	trans[0][60]	= settr(59,0,61,1,0,".(goto)", 0, 2, 0); /* m: 61 -> 0,66 */
	reached0[61] = 1;
	trans[0][57]	= settr(56,0,66,64,64,"((direction==-(1)))", 0, 2, 0); /* m: 58 -> 66,0 */
	reached0[58] = 1;
	trans[0][58]	= settr(0,0,0,0,0,"next_station = (((current_station-1)+4)%4)",0,0,0);
	trans[0][61]	= settr(60,0,66,65,65,"track_req.direction = direction", 0, 2, 0);
	T = trans[0][66] = settr(65,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(65,0,62,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(65,0,64,0,0,"IF", 0, 2, 0);
	trans[0][62]	= settr(61,0,79,66,66,"((current_station==(4-1)))", 0, 2, 0); /* m: 63 -> 79,0 */
	reached0[63] = 1;
	trans[0][63]	= settr(0,0,0,0,0,"track_req.track = current_station",0,0,0);
	trans[0][67]	= settr(66,0,68,1,0,".(goto)", 0, 2, 0); /* m: 68 -> 0,79 */
	reached0[68] = 1;
	trans[0][64]	= settr(63,0,65,2,0,"else", 0, 2, 0);
	trans[0][65]	= settr(64,0,79,67,67,"track_req.track = ( ((current_station<next_station)) -> (current_station) : (next_station) )", 0, 2, 0); /* m: 68 -> 0,79 */
	reached0[68] = 1;
	trans[0][68]	= settr(67,0,79,68,68,"got_track = 0", 0, 2, 0);
	trans[0][80]	= settr(79,0,79,1,0,".(goto)", 0, 2, 0);
	T = trans[0][79] = settr(78,0,0,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(78,0,69,0,0,"DO", 0, 2, 0);
	trans[0][69]	= settr(68,0,70,69,69,"rm_out!track_req.track,track_req.direction,track_req.shuttle_id", 1, 10, 0);
	trans[0][70]	= settr(69,0,77,70,70,"rm_in?got_track", 1, 511, 0);
	T = trans[0][77] = settr(76,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(76,0,71,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(76,0,75,0,0,"IF", 0, 2, 0);
	trans[0][71]	= settr(70,0,111,71,71,"(got_track)", 0, 2, 0); /* m: 72 -> 111,0 */
	reached0[72] = 1;
	trans[0][72]	= settr(0,0,0,0,0,"track_distance = 3",0,0,0);
	trans[0][73]	= settr(0,0,0,0,0,"isMoving = 1",0,0,0);
	trans[0][74]	= settr(73,0,111,1,0,"goto :b1", 0, 2, 0);
	trans[0][78]	= settr(77,0,79,1,0,".(goto)", 0, 2, 0);
	trans[0][75]	= settr(74,0,76,2,0,"else", 0, 2, 0);
	trans[0][76]	= settr(75,0,79,1,0,"(1)", 0, 2, 0);
	trans[0][81]	= settr(80,0,111,1,0,"break", 0, 2, 0);
	trans[0][96]	= settr(95,0,111,1,0,".(goto)", 0, 2, 0);
	trans[0][82]	= settr(81,0,111,72,72,"((isMoving&&(track_distance>0)))", 0, 2, 0); /* m: 83 -> 111,0 */
	reached0[83] = 1;
	trans[0][83]	= settr(0,0,0,0,0,"track_distance = (track_distance-1)",0,0,0);
	trans[0][84]	= settr(0,0,0,0,0,"printf('[Shuttle %d] Moving from station %d to station %d\\n',id,current_station,next_station)",0,0,0);
	trans[0][85]	= settr(84,0,91,73,73,"((isMoving&&(track_distance==0)))", 0, 2, 0); /* m: 86 -> 91,0 */
	reached0[86] = 1;
	trans[0][86]	= settr(0,0,0,0,0,"current_station = next_station",0,0,0);
	T = trans[0][91] = settr(90,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(90,0,87,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(90,0,89,0,0,"IF", 0, 2, 0);
	trans[0][87]	= settr(86,0,88,74,0,"((direction==1))", 0, 2, 0);
	trans[0][88]	= settr(87,0,93,75,75,"track_clockwise[track_req.track] = 0", 1, 2, 0);
	trans[0][92]	= settr(91,0,93,1,0,".(goto)", 0, 2, 0); /* m: 93 -> 0,94 */
	reached0[93] = 1;
	trans[0][89]	= settr(88,0,90,76,0,"((direction==-(1)))", 0, 2, 0);
	trans[0][90]	= settr(89,0,93,77,77,"track_anti_clockwise[track_req.track] = 0", 1, 2, 0);
	trans[0][93]	= settr(92,0,94,78,78,"isMoving = 0", 0, 2, 0);
	trans[0][94]	= settr(93,0,111,1,0,"(1)", 0, 2, 0);
	trans[0][98]	= settr(97,0,110,79,79,"((isFree&&nempty(order_queue)))", 1, 512, 0);
	T = trans[ 0][110] = settr(109,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(109,0,99,0,0,"sub-sequence", 0, 2, 0);
	trans[0][99]	= settr(98,0,100,80,80,"order_queue?current_order.start,current_order.end,current_order.size", 1, 512, 0);
	trans[0][100]	= settr(99,0,109,81,81,"isFree = 0", 0, 2, 0); /* m: 101 -> 0,109 */
	reached0[101] = 1;
	trans[0][101]	= settr(0,0,0,0,0,"destination = current_order.start",0,0,0);
	trans[0][102]	= settr(0,0,0,0,0,"printf('[Shuttle %d] Starting new order from station %d to station %d\\n',id,current_order.start,current_order.end)",0,0,0);
	T = trans[ 0][109] = settr(108,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(108,0,107,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][107] = settr(106,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(106,0,103,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(106,0,105,0,0,"IF", 0, 2, 0);
	trans[0][103]	= settr(102,0,111,82,82,"((((current_station+(4/2))%4)>=destination))", 0, 2, 0); /* m: 104 -> 111,0 */
	reached0[104] = 1;
	trans[0][104]	= settr(0,0,0,0,0,"direction = 1",0,0,0);
	trans[0][108]	= settr(107,0,111,1,0,".(goto)", 0, 2, 0);
	trans[0][105]	= settr(104,0,106,2,0,"else", 0, 2, 0);
	trans[0][106]	= settr(105,0,111,83,83,"direction = -(1)", 0, 2, 0);
	trans[0][113]	= settr(112,0,114,1,0,"break", 0, 2, 0);
	trans[0][114]	= settr(113,0,0,84,84,"-end-", 0, 3500, 0);
	/* np_ demon: */
	trans[_NP_] = (Trans **) emalloc(3*sizeof(Trans *));
	T = trans[_NP_][0] = settr(9997,0,1,_T5,0,"(np_)", 1,2,0);
	    T->nxt	  = settr(9998,0,0,_T2,0,"(1)",   0,2,0);
	T = trans[_NP_][1] = settr(9999,0,1,_T5,0,"(np_)", 1,2,0);
}

Trans *
settr(	int t_id, int a, int b, int c, int d,
	char *t, int g, int tpe0, int tpe1)
{	Trans *tmp = (Trans *) emalloc(sizeof(Trans));

	tmp->atom  = a&(6|32);	/* only (2|8|32) have meaning */
	if (!g) tmp->atom |= 8;	/* no global references */
	tmp->st    = b;
	tmp->tpe[0] = tpe0;
	tmp->tpe[1] = tpe1;
	tmp->tp    = t;
	tmp->t_id  = t_id;
	tmp->forw  = c;
	tmp->back  = d;
	return tmp;
}

Trans *
cpytr(Trans *a)
{	Trans *tmp = (Trans *) emalloc(sizeof(Trans));

	int i;
	tmp->atom  = a->atom;
	tmp->st    = a->st;
#ifdef HAS_UNLESS
	tmp->e_trans = a->e_trans;
	for (i = 0; i < HAS_UNLESS; i++)
		tmp->escp[i] = a->escp[i];
#endif
	tmp->tpe[0] = a->tpe[0];
	tmp->tpe[1] = a->tpe[1];
	for (i = 0; i < 6; i++)
	{	tmp->qu[i] = a->qu[i];
		tmp->ty[i] = a->ty[i];
	}
	tmp->tp    = (char *) emalloc(strlen(a->tp)+1);
	strcpy(tmp->tp, a->tp);
	tmp->t_id  = a->t_id;
	tmp->forw  = a->forw;
	tmp->back  = a->back;
	return tmp;
}

#ifndef NOREDUCE
int
srinc_set(int n)
{	if (n <= 2) return LOCAL;
	if (n <= 2+  DELTA) return Q_FULL_F; /* 's' or nfull  */
	if (n <= 2+2*DELTA) return Q_EMPT_F; /* 'r' or nempty */
	if (n <= 2+3*DELTA) return Q_EMPT_T; /* empty */
	if (n <= 2+4*DELTA) return Q_FULL_T; /* full  */
	if (n ==   5*DELTA) return GLOBAL;
	if (n ==   6*DELTA) return TIMEOUT_F;
	if (n ==   7*DELTA) return ALPHA_F;
	Uerror("cannot happen srinc_class");
	return BAD;
}
int
srunc(int n, int m)
{	switch(m) {
	case Q_FULL_F: return n-2;
	case Q_EMPT_F: return n-2-DELTA;
	case Q_EMPT_T: return n-2-2*DELTA;
	case Q_FULL_T: return n-2-3*DELTA;
	case ALPHA_F:
	case TIMEOUT_F: return 257; /* non-zero, and > MAXQ */
	}
	Uerror("cannot happen srunc");
	return 0;
}
#endif
int cnt;
#ifdef HAS_UNLESS
int
isthere(Trans *a, int b)
{	Trans *t;
	for (t = a; t; t = t->nxt)
		if (t->t_id == b)
			return 1;
	return 0;
}
#endif
#ifndef NOREDUCE
int
mark_safety(Trans *t) /* for conditional safety */
{	int g = 0, i, j, k;

	if (!t) return 0;
	if (t->qu[0])
		return (t->qu[1])?2:1;	/* marked */

	for (i = 0; i < 2; i++)
	{	j = srinc_set(t->tpe[i]);
		if (j >= GLOBAL && j != ALPHA_F)
			return -1;
		if (j != LOCAL)
		{	k = srunc(t->tpe[i], j);
			if (g == 0
			||  t->qu[0] != k
			||  t->ty[0] != j)
			{	t->qu[g] = k;
				t->ty[g] = j;
				g++;
	}	}	}
	return g;
}
#endif
void
retrans(int n, int m, int is, short srcln[], uchar reach[], uchar lpstate[])
	/* process n, with m states, is=initial state */
{	Trans *T0, *T1, *T2, *T3;
	Trans *T4, *T5; /* t_reverse or has_unless */
	int i;
#if defined(HAS_UNLESS) || !defined(NOREDUCE)
	int k;
#endif
#ifndef NOREDUCE
	int g, h, j, aa;
#endif
#ifdef HAS_UNLESS
	int p;
#endif
	if (state_tables >= 4)
	{	printf("STEP 1 %s\n", 
			procname[n]);
		for (i = 1; i < m; i++)
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
			crack(n, i, T0, srcln);
		return;
	}
	do {
		for (i = 1, cnt = 0; i < m; i++)
		{	T2 = trans[n][i];
			T1 = T2?T2->nxt:(Trans *)0;
/* prescan: */		for (T0 = T1; T0; T0 = T0->nxt)
/* choice in choice */	{	if (T0->st && trans[n][T0->st]
				&&  trans[n][T0->st]->nxt)
					break;
			}
#if 0
		if (T0)
		printf("\tstate %d / %d: choice in choice\n",
		i, T0->st);
#endif
			if (T0)
			for (T0 = T1; T0; T0 = T0->nxt)
			{	T3 = trans[n][T0->st];
				if (!T3->nxt)
				{	T2->nxt = cpytr(T0);
					T2 = T2->nxt;
					imed(T2, T0->st, n, i);
					continue;
				}
				do {	T3 = T3->nxt;
					T2->nxt = cpytr(T3);
					T2 = T2->nxt;
					imed(T2, T0->st, n, i);
				} while (T3->nxt);
				cnt++;
			}
		}
	} while (cnt);
	if (state_tables >= 3)
	{	printf("STEP 2 %s\n", 
			procname[n]);
		for (i = 1; i < m; i++)
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
			crack(n, i, T0, srcln);
		return;
	}
	for (i = 1; i < m; i++)
	{	if (trans[n][i] && trans[n][i]->nxt) /* optimize */
		{	T1 = trans[n][i]->nxt;
#if 0
			printf("\t\tpull %d (%d) to %d\n",
			T1->st, T1->forw, i);
#endif
			srcln[i] = srcln[T1->st];	/* Oyvind Teig, 5.2.0 */

			if (!trans[n][T1->st]) continue;
			T0 = cpytr(trans[n][T1->st]);
			trans[n][i] = T0;
			reach[T1->st] = 1;
			imed(T0, T1->st, n, i);
			for (T1 = T1->nxt; T1; T1 = T1->nxt)
			{
#if 0
			printf("\t\tpull %d (%d) to %d\n",
				T1->st, T1->forw, i);
#endif
		/*		srcln[i] = srcln[T1->st];  gh: not useful */
				if (!trans[n][T1->st]) continue;
				T0->nxt = cpytr(trans[n][T1->st]);
				T0 = T0->nxt;
				reach[T1->st] = 1;
				imed(T0, T1->st, n, i);
	}	}	}
	if (state_tables >= 2)
	{	printf("STEP 3 %s\n", 
			procname[n]);
		for (i = 1; i < m; i++)
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
			crack(n, i, T0, srcln);
		return;
	}
#ifdef HAS_UNLESS
	for (i = 1; i < m; i++)
	{	if (!trans[n][i]) continue;
		/* check for each state i if an
		 * escape to some state p is defined
		 * if so, copy and mark p's transitions
		 * and prepend them to the transition-
		 * list of state i
		 */
	 if (!like_java) /* the default */
	 {	for (T0 = trans[n][i]; T0; T0 = T0->nxt)
		for (k = HAS_UNLESS-1; k >= 0; k--)
		{	if (p = T0->escp[k])
			for (T1 = trans[n][p]; T1; T1 = T1->nxt)
			{	if (isthere(trans[n][i], T1->t_id))
					continue;
				T2 = cpytr(T1);
				T2->e_trans = p;
				T2->nxt = trans[n][i];
				trans[n][i] = T2;
		}	}
	 } else /* outermost unless checked first */
	 {	T4 = T3 = (Trans *) 0;
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
		for (k = HAS_UNLESS-1; k >= 0; k--)
		{	if (p = T0->escp[k])
			for (T1 = trans[n][p]; T1; T1 = T1->nxt)
			{	if (isthere(trans[n][i], T1->t_id))
					continue;
				T2 = cpytr(T1);
				T2->nxt = (Trans *) 0;
				T2->e_trans = p;
				if (T3)	T3->nxt = T2;
				else	T4 = T2;
				T3 = T2;
		}	}
		if (T4)
		{	T3->nxt = trans[n][i];
			trans[n][i] = T4;
		}
	 }
	}
#endif
#ifndef NOREDUCE
	for (i = 1; i < m; i++)
	{	if (a_cycles)
		{ /* moves through these states are visible */
	#if PROG_LAB>0 && defined(HAS_NP)
			if (progstate[n][i])
				goto degrade;
			for (T1 = trans[n][i]; T1; T1 = T1->nxt)
				if (progstate[n][T1->st])
					goto degrade;
	#endif
			if (accpstate[n][i] || visstate[n][i])
				goto degrade;
			for (T1 = trans[n][i]; T1; T1 = T1->nxt)
				if (accpstate[n][T1->st])
					goto degrade;
		}
		T1 = trans[n][i];
		if (!T1) continue;
		g = mark_safety(T1);	/* V3.3.1 */
		if (g < 0) goto degrade; /* global */
		/* check if mixing of guards preserves reduction */
		if (T1->nxt)
		{	k = 0;
			for (T0 = T1; T0; T0 = T0->nxt)
			{	if (!(T0->atom&8))
					goto degrade;
				for (aa = 0; aa < 2; aa++)
				{	j = srinc_set(T0->tpe[aa]);
					if (j >= GLOBAL && j != ALPHA_F)
						goto degrade;
					if (T0->tpe[aa]
					&&  T0->tpe[aa]
					!=  T1->tpe[0])
						k = 1;
			}	}
			/* g = 0;	V3.3.1 */
			if (k)	/* non-uniform selection */
			for (T0 = T1; T0; T0 = T0->nxt)
			for (aa = 0; aa < 2; aa++)
			{	j = srinc_set(T0->tpe[aa]);
				if (j != LOCAL)
				{	k = srunc(T0->tpe[aa], j);
					for (h = 0; h < 6; h++)
						if (T1->qu[h] == k
						&&  T1->ty[h] == j)
							break;
					if (h >= 6)
					{	T1->qu[g%6] = k;
						T1->ty[g%6] = j;
						g++;
			}	}	}
			if (g > 6)
			{	T1->qu[0] = 0;	/* turn it off */
				printf("pan: warning, line %d, ",
					srcln[i]);
			 	printf("too many stmnt types (%d)",
					g);
			  	printf(" in selection\n");
			  goto degrade;
			}
		}
		/* mark all options global if >=1 is global */
		for (T1 = trans[n][i]; T1; T1 = T1->nxt)
			if (!(T1->atom&8)) break;
		if (T1)
degrade:	for (T1 = trans[n][i]; T1; T1 = T1->nxt)
			T1->atom &= ~8;	/* mark as unsafe */
		/* can only mix 'r's or 's's if on same chan */
		/* and not mixed with other local operations */
		T1 = trans[n][i];
		if (!T1 || T1->qu[0]) continue;
		j = T1->tpe[0];
		if (T1->nxt && T1->atom&8)
		{ if (j == 5*DELTA)
		  {	printf("warning: line %d ", srcln[i]);
			printf("mixed condition ");
			printf("(defeats reduction)\n");
			goto degrade;
		  }
		  for (T0 = T1; T0; T0 = T0->nxt)
		  for (aa = 0; aa < 2; aa++)
		  if  (T0->tpe[aa] && T0->tpe[aa] != j)
		  {	printf("warning: line %d ", srcln[i]);
			printf("[%d-%d] mixed %stion ",
				T0->tpe[aa], j, 
				(j==5*DELTA)?"condi":"selec");
			printf("(defeats reduction)\n");
			printf("	'%s' <-> '%s'\n",
				T1->tp, T0->tp);
			goto degrade;
		} }
	}
#endif
	for (i = 1; i < m; i++)
	{	T2 = trans[n][i];
		if (!T2
		||  T2->nxt
		||  strncmp(T2->tp, ".(goto)", 7)
		||  !stopstate[n][i])
			continue;
		stopstate[n][T2->st] = 1;
	}
	if (state_tables && !verbose)
	{	if (dodot)
		{	char buf[256], *q = buf, *p = procname[n];
			while (*p != '\0')
			{	if (*p != ':')
				{	*q++ = *p;
				}
				p++;
			}
			*q = '\0';
			printf("digraph ");
			switch (Btypes[n]) {
			case I_PROC:  printf("init {\n"); break;
			case N_CLAIM: printf("claim_%s {\n", buf); break;
			case E_TRACE: printf("notrace {\n"); break;
			case N_TRACE: printf("trace {\n"); break;
			default:      printf("p_%s {\n", buf); break;
			}
			printf("size=\"8,10\";\n");
			printf("  GT [shape=box,style=dotted,label=\"%s\"];\n", buf);
			printf("  GT -> S%d;\n", is);
		} else
		{	switch (Btypes[n]) {
			case I_PROC:  printf("init\n"); break;
			case N_CLAIM: printf("claim %s\n", procname[n]); break;
			case E_TRACE: printf("notrace assertion\n"); break;
			case N_TRACE: printf("trace assertion\n"); break;
			default:      printf("proctype %s\n", procname[n]); break;
		}	}
		for (i = 1; i < m; i++)
		{	reach[i] = 1;
		}
		tagtable(n, m, is, srcln, reach);
		if (dodot) printf("}\n");
	} else
	for (i = 1; i < m; i++)
	{	int nrelse;
		if (Btypes[n] != N_CLAIM)
		{	for (T0 = trans[n][i]; T0; T0 = T0->nxt)
			{	if (T0->st == i
				&& strcmp(T0->tp, "(1)") == 0)
				{	printf("error: proctype '%s' ",
						procname[n]);
		  			printf("line %d, state %d: has un",
						srcln[i], i);
					printf("conditional self-loop\n");
					pan_exit(1);
		}	}	}
		nrelse = 0;
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
		{	if (strcmp(T0->tp, "else") == 0)
				nrelse++;
		}
		if (nrelse > 1)
		{	printf("error: proctype '%s' state",
				procname[n]);
		  	printf(" %d, inherits %d", i, nrelse);
		  	printf(" 'else' stmnts\n");
			pan_exit(1);
	}	}
#if !defined(LOOPSTATE) && !defined(BFS_PAR)
	if (state_tables)
#endif
	do_dfs(n, m, is, srcln, reach, lpstate);

	if (!t_reverse)
	{	return;
	}
	/* process n, with m states, is=initial state -- reverse list */
	if (!state_tables && Btypes[n] != N_CLAIM)
	{	for (i = 1; i < m; i++)
		{	Trans *Tx = (Trans *) 0; /* list of escapes */
			Trans *Ty = (Trans *) 0; /* its tail element */
			T1 = (Trans *) 0; /* reversed list */
			T2 = (Trans *) 0; /* its tail */
			T3 = (Trans *) 0; /* remembers possible 'else' */

			/* find unless-escapes, they should go first */
			T4 = T5 = T0 = trans[n][i];
	#ifdef HAS_UNLESS
			while (T4 && T4->e_trans) /* escapes are first in orig list */
			{	T5 = T4;	  /* remember predecessor */
				T4 = T4->nxt;
			}
	#endif
			/* T4 points to first non-escape, T5 to its parent, T0 to original list */
			if (T4 != T0)		 /* there was at least one escape */
			{	T3 = T5->nxt;		 /* start of non-escapes */
				T5->nxt = (Trans *) 0;	 /* separate */
				Tx = T0;		 /* start of the escapes */
				Ty = T5;		 /* its tail */
				T0 = T3;		 /* the rest, to be reversed */
			}
			/* T0 points to first non-escape, Tx to the list of escapes, Ty to its tail */

			/* first tail-add non-escape transitions, reversed */
			T3 = (Trans *) 0;
			for (T5 = T0; T5; T5 = T4)
			{	T4 = T5->nxt;
	#ifdef HAS_UNLESS
				if (T5->e_trans)
				{	printf("error: cannot happen!\n");
					continue;
				}
	#endif
				if (strcmp(T5->tp, "else") == 0)
				{	T3 = T5;
					T5->nxt = (Trans *) 0;
				} else
				{	T5->nxt = T1;
					if (!T1) { T2 = T5; }
					T1 = T5;
			}	}
			/* T3 points to a possible else, which is removed from the list */
			/* T1 points to the reversed list so far (without escapes) */
			/* T2 points to the tail element -- where the else should go */
			if (T2 && T3)
			{	T2->nxt = T3;	/* add else */
			} else
			{	if (T3) /* there was an else, but there's no tail */
				{	if (!T1)	/* and no reversed list */
					{	T1 = T3; /* odd, but possible */
					} else		/* even stranger */
					{	T1->nxt = T3;
			}	}	}

			/* add in the escapes, to that they appear at the front */
			if (Tx && Ty) { Ty->nxt = T1; T1 = Tx; }

			trans[n][i] = T1;
			/* reversed, with escapes first and else last */
	}	}
	if (state_tables && verbose)
	{	printf("FINAL proctype %s\n", 
			procname[n]);
		for (i = 1; i < m; i++)
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
			crack(n, i, T0, srcln);
	}
}
void
imed(Trans *T, int v, int n, int j)	/* set intermediate state */
{	progstate[n][T->st] |= progstate[n][v];
	accpstate[n][T->st] |= accpstate[n][v];
	stopstate[n][T->st] |= stopstate[n][v];
	mapstate[n][j] = T->st;
}
void
tagtable(int n, int m, int is, short srcln[], uchar reach[])
{	Trans *z;

	if (is >= m || !trans[n][is]
	||  is <= 0 || reach[is] == 0)
		return;
	reach[is] = 0;
	if (state_tables)
	for (z = trans[n][is]; z; z = z->nxt)
	{	if (dodot)
			dot_crack(n, is, z);
		else
			crack(n, is, z, srcln);
	}

	for (z = trans[n][is]; z; z = z->nxt)
	{
#ifdef HAS_UNLESS
		int i, j;
#endif
		tagtable(n, m, z->st, srcln, reach);
#ifdef HAS_UNLESS
		for (i = 0; i < HAS_UNLESS; i++)
		{	j = trans[n][is]->escp[i];
			if (!j) break;
			tagtable(n, m, j, srcln, reach);
		}
#endif
	}
}

extern Trans *t_id_lkup[];

void
dfs_table(int n, int m, int is, short srcln[], uchar reach[], uchar lpstate[])
{	Trans *z;

	if (is >= m || is <= 0 || !trans[n][is])
		return;
	if ((reach[is] & (4|8|16)) != 0)
	{	if ((reach[is] & (8|16)) == 16)	/* on stack, not yet recorded */
		{	lpstate[is] = 1;
			reach[is] |= 8; /* recorded */
			if (state_tables && verbose)
			{	printf("state %d line %d is a loopstate\n", is, srcln[is]);
		}	}
		return;
	}
	reach[is] |= (4|16);	/* visited | onstack */
	for (z = trans[n][is]; z; z = z->nxt)
	{	t_id_lkup[z->t_id] = z;
#ifdef HAS_UNLESS
		int i, j;
#endif
		dfs_table(n, m, z->st, srcln, reach, lpstate);
#ifdef HAS_UNLESS
		for (i = 0; i < HAS_UNLESS; i++)
		{	j = trans[n][is]->escp[i];
			if (!j) break;
			dfs_table(n, m, j, srcln, reach, lpstate);
		}
#endif
	}
	reach[is] &= ~16; /* no longer on stack */
}
void
do_dfs(int n, int m, int is, short srcln[], uchar reach[], uchar lpstate[])
{	int i;
	dfs_table(n, m, is, srcln, reach, lpstate);
	for (i = 0; i < m; i++)
		reach[i] &= ~(4|8|16);
}
void
crack(int n, int j, Trans *z, short srcln[])
{	int i;

	if (!z) return;
	printf("	state %3d -(tr %3d)-> state %3d  ",
		j, z->forw, z->st);
	printf("[id %3d tp %3d", z->t_id, z->tpe[0]);
	if (z->tpe[1]) printf(",%d", z->tpe[1]);
#ifdef HAS_UNLESS
	if (z->e_trans)
		printf(" org %3d", z->e_trans);
	else if (state_tables >= 2)
	for (i = 0; i < HAS_UNLESS; i++)
	{	if (!z->escp[i]) break;
		printf(" esc %d", z->escp[i]);
	}
#endif
	printf("]");
	printf(" [%s%s%s%s%s] %s:%d => ",
		z->atom&6?"A":z->atom&32?"D":"-",
		accpstate[n][j]?"a" :"-",
		stopstate[n][j]?"e" : "-",
		progstate[n][j]?"p" : "-",
		z->atom & 8 ?"L":"G",
		PanSource, srcln[j]);
	for (i = 0; z->tp[i]; i++)
		if (z->tp[i] == '\n')
			printf("\\n");
		else
			putchar(z->tp[i]);
	if (verbose && z->qu[0])
	{	printf("\t[");
		for (i = 0; i < 6; i++)
			if (z->qu[i])
				printf("(%d,%d)",
				z->qu[i], z->ty[i]);
		printf("]");
	}
	printf("\n");
	fflush(stdout);
}
/* spin -a m.pml; cc -o pan pan.c; ./pan -D | dot -Tps > foo.ps; ps2pdf foo.ps */
void
dot_crack(int n, int j, Trans *z)
{	int i;

	if (!z) return;
	printf("	S%d -> S%d  [color=black", j, z->st);

	if (z->atom&6) printf(",style=dashed");
	else if (z->atom&32) printf(",style=dotted");
	else if (z->atom&8) printf(",style=solid");
	else printf(",style=bold");

	printf(",label=\"");
	for (i = 0; z->tp[i]; i++)
	{	if (z->tp[i] == '\\'
		&&  z->tp[i+1] == 'n')
		{	i++; printf(" ");
		} else
		{	putchar(z->tp[i]);
	}	}
	printf("\"];\n");
	if (accpstate[n][j]) printf("  S%d [color=red,style=bold];\n", j);
	else if (progstate[n][j]) printf("  S%d [color=green,style=bold];\n", j);
	if (stopstate[n][j]) printf("  S%d [color=blue,style=bold,shape=box];\n", j);
}

#ifdef VAR_RANGES
#define BYTESIZE	32	/* 2^8 : 2^3 = 256:8 = 32 */

typedef struct Vr_Ptr {
	char	*nm;
	uchar	vals[BYTESIZE];
	struct Vr_Ptr *nxt;
} Vr_Ptr;
Vr_Ptr *ranges = (Vr_Ptr *) 0;

void
logval(char *s, int v)
{	Vr_Ptr *tmp;

	if (v<0 || v > 255) return;
	for (tmp = ranges; tmp; tmp = tmp->nxt)
		if (!strcmp(tmp->nm, s))
			goto found;
	tmp = (Vr_Ptr *) emalloc(sizeof(Vr_Ptr));
	tmp->nxt = ranges;
	ranges = tmp;
	tmp->nm = s;
found:
	tmp->vals[(v)/8] |= 1<<((v)%8);
}

void
dumpval(uchar X[], int range)
{	int w, x, i, j = -1;

	for (w = i = 0; w < range; w++)
	for (x = 0; x < 8; x++, i++)
	{
from:		if ((X[w] & (1<<x)))
		{	printf("%d", i);
			j = i;
			goto upto;
	}	}
	return;
	for (w = 0; w < range; w++)
	for (x = 0; x < 8; x++, i++)
	{
upto:		if (!(X[w] & (1<<x)))
		{	if (i-1 == j)
				printf(", ");
			else
				printf("-%d, ", i-1);
			goto from;
	}	}
	if (j >= 0 && j != 255)
		printf("-255");
}

void
dumpranges(void)
{	Vr_Ptr *tmp;
	printf("\nValues assigned within ");
	printf("interval [0..255]:\n");
	for (tmp = ranges; tmp; tmp = tmp->nxt)
	{	printf("\t%s\t: ", tmp->nm);
		dumpval(tmp->vals, BYTESIZE);
		printf("\n");
	}
}
#endif
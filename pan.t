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

	trans = (Trans ***) emalloc(6*sizeof(Trans **));

	/* proctype 4: p1 */

	trans[4] = (Trans **) emalloc(23*sizeof(Trans *));

	trans[4][8]	= settr(251,0,7,1,0,".(goto)", 0, 2, 0);
	T = trans[4][7] = settr(250,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(250,0,1,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(250,0,3,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(250,0,5,0,0,"DO", 0, 2, 0);
	trans[4][1]	= settr(244,0,12,3,0,"(!(((((!(travelling[0])&&!(travelling[1]))&&!(travelling[2]))&&!(travelling[3]))&&((((currentLoad[0]==0)&&(currentLoad[1]==0))&&(currentLoad[2]==0))&&(currentLoad[3]==0)))))", 1, 2, 0);
	trans[4][2]	= settr(245,0,12,1,0,"goto accept_S3", 0, 2, 0);
	trans[4][3]	= settr(246,0,19,1,0,"(1)", 0, 2, 0);
	trans[4][4]	= settr(247,0,19,1,0,"goto T0_S3", 0, 2, 0);
	trans[4][5]	= settr(248,0,7,1,0,"(1)", 0, 2, 0);
	trans[4][6]	= settr(249,0,7,1,0,"goto T0_init", 0, 2, 0);
	trans[4][9]	= settr(252,0,12,1,0,"break", 0, 2, 0);
	trans[4][13]	= settr(256,0,12,1,0,".(goto)", 0, 2, 0);
	T = trans[4][12] = settr(255,0,0,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(255,0,10,0,0,"DO", 0, 2, 0);
	trans[4][10]	= settr(253,0,19,1,0,"(1)", 0, 2, 0);
	trans[4][11]	= settr(254,0,19,1,0,"goto T0_S3", 0, 2, 0);
	trans[4][14]	= settr(257,0,19,1,0,"break", 0, 2, 0);
	trans[4][20]	= settr(263,0,19,1,0,".(goto)", 0, 2, 0);
	T = trans[4][19] = settr(262,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(262,0,15,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(262,0,17,0,0,"DO", 0, 2, 0);
	trans[4][15]	= settr(258,0,12,4,0,"(!(((((!(travelling[0])&&!(travelling[1]))&&!(travelling[2]))&&!(travelling[3]))&&((((currentLoad[0]==0)&&(currentLoad[1]==0))&&(currentLoad[2]==0))&&(currentLoad[3]==0)))))", 1, 2, 0);
	trans[4][16]	= settr(259,0,12,1,0,"goto accept_S3", 0, 2, 0);
	trans[4][17]	= settr(260,0,19,1,0,"(1)", 0, 2, 0);
	trans[4][18]	= settr(261,0,19,1,0,"goto T0_S3", 0, 2, 0);
	trans[4][21]	= settr(264,0,22,1,0,"break", 0, 2, 0);
	trans[4][22]	= settr(265,0,0,5,5,"-end-", 0, 3500, 0);

	/* proctype 3: :init: */

	trans[3] = (Trans **) emalloc(17*sizeof(Trans *));

	T = trans[ 3][15] = settr(242,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(242,2,1,0,0,"ATOMIC", 0, 2, 0);
	trans[3][1]	= settr(228,2,2,6,6,"(run Shuttle(4,2,(1-1),0))", 0, 2, 0);
	trans[3][2]	= settr(229,2,3,7,7,"(run Shuttle(2,4,(1-1),1))", 0, 2, 0);
	trans[3][3]	= settr(230,2,4,8,8,"(run Shuttle(5,1,(2-1),2))", 0, 2, 0);
	trans[3][4]	= settr(231,2,5,9,9,"(run Shuttle(3,3,(3-1),3))", 0, 2, 0);
	trans[3][5]	= settr(232,2,13,10,10,"", 0, 2, 0); /* m: 6 -> 0,13 */
	reached3[6] = 1;
	trans[3][6]	= settr(0,0,0,0,0,"first.size = 4",0,0,0);
	trans[3][7]	= settr(0,0,0,0,0,"first.start = (1-1)",0,0,0);
	trans[3][8]	= settr(0,0,0,0,0,"first.end = (3-1)",0,0,0);
	trans[3][9]	= settr(0,0,0,0,0,"",0,0,0);
	trans[3][10]	= settr(0,0,0,0,0,"second.size = 2",0,0,0);
	trans[3][11]	= settr(0,0,0,0,0,"second.start = (2-1)",0,0,0);
	trans[3][12]	= settr(0,0,0,0,0,"second.end = (3-1)",0,0,0);
	trans[3][13]	= settr(240,2,14,11,11,"(run ShuttleManagementSystem(first.start,first.end,first.size,second.start,second.end,second.size))", 0, 2, 0);
	trans[3][14]	= settr(241,0,16,12,12,"(run RailwayNetwork())", 0, 2, 0);
	trans[3][16]	= settr(243,0,0,13,13,"-end-", 0, 3500, 0);

	/* proctype 2: RailwayNetwork */

	trans[2] = (Trans **) emalloc(30*sizeof(Trans *));

	trans[2][27]	= settr(225,0,26,1,0,".(goto)", 0, 2, 0);
	T = trans[2][26] = settr(224,0,0,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(224,0,1,0,0,"DO", 0, 2, 0);
	trans[2][1]	= settr(199,0,2,14,14,"shuttleRequests?request.track,request.direction,request.id", 1, 505, 0);
	trans[2][2]	= settr(200,0,23,15,15,"", 0, 2, 0);
	T = trans[2][23] = settr(221,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(221,0,3,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(221,0,13,0,0,"IF", 0, 2, 0);
	trans[2][3]	= settr(201,0,11,16,0,"((request.direction==1))", 0, 2, 0);
	T = trans[2][11] = settr(209,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(209,0,4,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(209,0,8,0,0,"IF", 0, 2, 0);
	trans[2][4]	= settr(202,0,5,17,0,"(!(tracks.trackL2R[request.track]))", 1, 2, 0);
	trans[2][5]	= settr(203,0,6,18,18,"tracks.trackL2R[request.track] = 1", 1, 2, 0);
	trans[2][6]	= settr(204,0,25,19,19,"reply.granted = 1", 0, 2, 0); /* m: 7 -> 0,25 */
	reached2[7] = 1;
	trans[2][7]	= settr(0,0,0,0,0,"printf('Railway Network: granting access to track from station %d to station %d\\n',request.track,((request.track+1)%4))",0,0,0);
	trans[2][12]	= settr(210,0,25,1,0,".(goto)", 0, 2, 0);
	trans[2][8]	= settr(206,0,9,2,0,"else", 0, 2, 0);
	trans[2][9]	= settr(207,0,25,20,20,"reply.granted = 0", 0, 2, 0); /* m: 10 -> 0,25 */
	reached2[10] = 1;
	trans[2][10]	= settr(0,0,0,0,0,"printf('Railway Network: rejecting access to track from station %d to station %d\\n',request.track,((request.track+1)%4))",0,0,0);
	trans[2][24]	= settr(222,0,25,1,0,".(goto)", 0, 2, 0);
	trans[2][13]	= settr(211,0,21,2,0,"else", 0, 2, 0);
	T = trans[2][21] = settr(219,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(219,0,14,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(219,0,18,0,0,"IF", 0, 2, 0);
	trans[2][14]	= settr(212,0,15,21,0,"(!(tracks.trackR2L[request.track]))", 1, 2, 0);
	trans[2][15]	= settr(213,0,16,22,22,"tracks.trackR2L[request.track] = 1", 1, 2, 0);
	trans[2][16]	= settr(214,0,25,23,23,"reply.granted = 1", 0, 2, 0); /* m: 17 -> 0,25 */
	reached2[17] = 1;
	trans[2][17]	= settr(0,0,0,0,0,"printf('Railway Network: granting access to track from station %d to station %d\\n',(((request.track+1)+1)%4),((request.track+1)%4))",0,0,0);
	trans[2][22]	= settr(220,0,25,1,0,".(goto)", 0, 2, 0);
	trans[2][18]	= settr(216,0,19,2,0,"else", 0, 2, 0);
	trans[2][19]	= settr(217,0,25,24,24,"reply.granted = 0", 0, 2, 0); /* m: 20 -> 0,25 */
	reached2[20] = 1;
	trans[2][20]	= settr(0,0,0,0,0,"printf('Railway Network: rejecting access to track from station %d to station %d\\n',(((request.track+1)+1)%4),((request.track+1)%4))",0,0,0);
	trans[2][25]	= settr(223,0,26,25,25,"railwayReplies[request.id]!reply.granted", 1, 6, 0);
	trans[2][28]	= settr(226,0,29,1,0,"break", 0, 2, 0);
	trans[2][29]	= settr(227,0,0,26,26,"-end-", 0, 3500, 0);

	/* proctype 1: Shuttle */

	trans[1] = (Trans **) emalloc(135*sizeof(Trans *));

	trans[1][1]	= settr(65,0,2,27,27,"currentLoad[id] = 0", 1, 2, 0);
	trans[1][2]	= settr(66,0,3,28,28,"capacity[id] = shuttleCapacity", 1, 2, 0);
	trans[1][3]	= settr(67,0,6,29,29,"direction = 0", 0, 2, 0); /* m: 4 -> 0,6 */
	reached1[4] = 1;
	trans[1][4]	= settr(0,0,0,0,0,"destination = 0",0,0,0);
	trans[1][5]	= settr(0,0,0,0,0,"processingOrder = 0",0,0,0);
	trans[1][6]	= settr(70,0,131,30,30,"travelling[id] = 0", 1, 2, 0);
	trans[1][132]	= settr(196,0,131,1,0,".(goto)", 0, 2, 0);
	T = trans[1][131] = settr(195,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(195,0,7,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(195,0,53,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(195,0,67,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(195,0,109,0,0,"DO", 0, 2, 0);
	trans[1][7]	= settr(71,0,8,31,31,"managementOrders[id]?order.start,order.end,order.size", 1, 503, 0);
	trans[1][8]	= settr(72,0,14,32,32,"printf('Shuttle %d: processing offer for newly received order\\n',(id+1))", 0, 2, 0); /* m: 9 -> 0,14 */
	reached1[9] = 1;
	trans[1][9]	= settr(0,0,0,0,0,"currentPosition = 0",0,0,0);
	T = trans[1][14] = settr(78,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(78,0,10,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(78,0,12,0,0,"IF", 0, 2, 0);
	trans[1][10]	= settr(74,0,11,33,0,"(travelling[id])", 1, 2, 0);
	trans[1][11]	= settr(75,0,21,34,34,"currentPosition = (currentStation+direction)", 0, 2, 0); /* m: 16 -> 0,21 */
	reached1[16] = 1;
	trans[1][15]	= settr(79,0,16,1,0,".(goto)", 0, 2, 0); /* m: 16 -> 0,21 */
	reached1[16] = 1;
	trans[1][12]	= settr(76,0,13,2,0,"else", 0, 2, 0);
	trans[1][13]	= settr(77,0,21,35,35,"currentPosition = currentStation", 0, 2, 0); /* m: 16 -> 0,21 */
	reached1[16] = 1;
	trans[1][16]	= settr(80,0,21,36,36,"distance = 0", 0, 2, 0);
	T = trans[1][21] = settr(85,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(85,0,17,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(85,0,19,0,0,"IF", 0, 2, 0);
	trans[1][17]	= settr(81,0,27,37,37,"((currentPosition>order.start))", 0, 2, 0); /* m: 18 -> 27,0 */
	reached1[18] = 1;
	trans[1][18]	= settr(0,0,0,0,0,"distance = (currentPosition-order.start)",0,0,0);
	trans[1][22]	= settr(86,0,27,1,0,".(goto)", 0, 2, 0);
	trans[1][19]	= settr(83,0,20,2,0,"else", 0, 2, 0);
	trans[1][20]	= settr(84,0,27,38,38,"distance = (order.start-currentPosition)", 0, 2, 0);
	T = trans[1][27] = settr(91,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(91,0,23,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(91,0,25,0,0,"IF", 0, 2, 0);
	trans[1][23]	= settr(87,0,30,39,39,"((distance>(4/2)))", 0, 2, 0); /* m: 24 -> 30,0 */
	reached1[24] = 1;
	trans[1][24]	= settr(0,0,0,0,0,"distance = (4-distance)",0,0,0);
	trans[1][28]	= settr(92,0,29,1,0,".(goto)", 0, 2, 0); /* m: 29 -> 0,30 */
	reached1[29] = 1;
	trans[1][25]	= settr(89,0,26,2,0,"else", 0, 2, 0);
	trans[1][26]	= settr(90,0,30,40,40,"distance = distance", 0, 2, 0); /* m: 29 -> 0,30 */
	reached1[29] = 1;
	trans[1][29]	= settr(93,0,30,41,41,"printf('Shuttle %d: start destination of the order is %d station(s) away from its current position\\n',(id+1),distance)", 0, 2, 0);
	trans[1][30]	= settr(94,0,31,42,0,"printf('Shuttle %d: current load is %d, order size is %d, capacity is %d\\n',(id+1),currentLoad[id],order.size,capacity[id])", 1, 2, 0);
	trans[1][31]	= settr(95,0,42,43,43,"", 0, 2, 0);
	T = trans[1][42] = settr(106,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(106,0,32,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(106,0,37,0,0,"IF", 0, 2, 0);
	trans[1][32]	= settr(96,0,33,44,44,"((((currentLoad[id]+order.size)<=capacity[id])&&(distance<=2)))", 1, 2, 0);
	trans[1][33]	= settr(97,0,44,45,45,"offer.id = id", 0, 2, 0); /* m: 34 -> 0,44 */
	reached1[34] = 1;
	trans[1][34]	= settr(0,0,0,0,0,"offer.charge = charge",0,0,0);
	trans[1][35]	= settr(0,0,0,0,0,"offer.refuse = 0",0,0,0);
	trans[1][36]	= settr(0,0,0,0,0,"printf('Shuttle %d: order accepted\\n',(id+1))",0,0,0);
	trans[1][43]	= settr(107,0,44,1,0,".(goto)", 0, 2, 0);
	trans[1][37]	= settr(101,0,38,2,0,"else", 0, 2, 0);
	trans[1][38]	= settr(102,0,44,46,46,"offer.id = id", 0, 2, 0); /* m: 39 -> 0,44 */
	reached1[39] = 1;
	trans[1][39]	= settr(0,0,0,0,0,"offer.charge = charge",0,0,0);
	trans[1][40]	= settr(0,0,0,0,0,"offer.refuse = 1",0,0,0);
	trans[1][41]	= settr(0,0,0,0,0,"printf('Shuttle %d: order refused\\n',(id+1))",0,0,0);
	trans[1][44]	= settr(108,0,45,47,47,"shuttleOffers!offer.id,offer.charge,offer.refuse", 1, 4, 0);
	trans[1][45]	= settr(109,0,51,48,48,"managementOrders[id]?order.start,order.end,order.size", 1, 503, 0);
	T = trans[1][51] = settr(115,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(115,0,46,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(115,0,49,0,0,"IF", 0, 2, 0);
	trans[1][46]	= settr(110,0,47,49,0,"((order.size>=0))", 0, 2, 0);
	trans[1][47]	= settr(111,0,48,50,50,"orders!order.start,order.end,order.size", 1, 7, 0);
	trans[1][48]	= settr(112,0,131,51,0,"printf('Shuttle %d: offer accepted by management\\n',(id+1))", 0, 2, 0);
	trans[1][52]	= settr(116,0,131,1,0,".(goto)", 0, 2, 0);
	trans[1][49]	= settr(113,0,50,2,0,"else", 0, 2, 0);
	trans[1][50]	= settr(114,0,131,1,0,"(1)", 0, 2, 0);
	trans[1][53]	= settr(117,0,54,52,52,"((nempty(orders)&&!(processingOrder)))", 1, 507, 0);
	trans[1][54]	= settr(118,0,55,53,53,"orders?currentOrder.start,currentOrder.end,currentOrder.size", 1, 507, 0);
	trans[1][55]	= settr(119,0,57,54,54,"processingOrder = 1", 0, 2, 0); /* m: 56 -> 0,57 */
	reached1[56] = 1;
	trans[1][56]	= settr(0,0,0,0,0,"destination = currentOrder.start",0,0,0);
	trans[1][57]	= settr(121,0,58,55,55,"travelling[id] = 1", 1, 2, 0);
	trans[1][58]	= settr(122,0,65,56,0,"printf('Shuttle %d: beginning new order from station %d to station %d with size %d\\n',(id+1),(currentOrder.start+1),(currentOrder.end+1),currentOrder.size)", 0, 2, 0);
	T = trans[1][65] = settr(129,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(129,0,59,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(129,0,62,0,0,"IF", 0, 2, 0);
	trans[1][59]	= settr(123,0,131,57,57,"(((currentOrder.start>=currentStation)&&((currentOrder.start-currentStation)<(4/2))))", 0, 2, 0); /* m: 60 -> 131,0 */
	reached1[60] = 1;
	trans[1][60]	= settr(0,0,0,0,0,"direction = 1",0,0,0);
	trans[1][61]	= settr(0,0,0,0,0,"printf('Shuttle %d: travelling left to right\\n',(id+1))",0,0,0);
	trans[1][66]	= settr(130,0,131,1,0,".(goto)", 0, 2, 0);
	trans[1][62]	= settr(126,0,63,2,0,"else", 0, 2, 0);
	trans[1][63]	= settr(127,0,131,58,58,"direction = -(1)", 0, 2, 0); /* m: 64 -> 0,131 */
	reached1[64] = 1;
	trans[1][64]	= settr(0,0,0,0,0,"printf('Shuttle %d: travelling right to left\\n',(id+1))",0,0,0);
	trans[1][67]	= settr(131,0,68,59,0,"((travelling[id]&&processingOrder))", 1, 2, 0);
	trans[1][68]	= settr(132,0,76,60,60,"nextStation = 0", 0, 2, 0); /* m: 69 -> 0,76 */
	reached1[69] = 1;
	trans[1][69]	= settr(0,0,0,0,0,"nextStation = (currentStation+direction)",0,0,0);
	T = trans[1][76] = settr(140,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(140,0,70,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(140,0,72,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(140,0,74,0,0,"IF", 0, 2, 0);
	trans[1][70]	= settr(134,0,92,61,61,"((nextStation>=4))", 0, 2, 0); /* m: 71 -> 92,0 */
	reached1[71] = 1;
	trans[1][71]	= settr(0,0,0,0,0,"nextStation = 0",0,0,0);
	trans[1][77]	= settr(141,0,78,1,0,".(goto)", 0, 2, 0); /* m: 78 -> 0,92 */
	reached1[78] = 1;
	trans[1][72]	= settr(136,0,92,62,62,"((nextStation<0))", 0, 2, 0); /* m: 73 -> 92,0 */
	reached1[73] = 1;
	trans[1][73]	= settr(0,0,0,0,0,"nextStation = (4-1)",0,0,0);
	trans[1][74]	= settr(138,0,75,2,0,"else", 0, 2, 0);
	trans[1][75]	= settr(139,0,92,63,63,"(1)", 0, 2, 0); /* m: 78 -> 92,0 */
	reached1[78] = 1;
	trans[1][78]	= settr(142,0,92,64,64,"", 0, 2, 0); /* m: 79 -> 0,92 */
	reached1[79] = 1;
	trans[1][79]	= settr(0,0,0,0,0,"request.id = id",0,0,0);
	trans[1][80]	= settr(0,0,0,0,0,"request.direction = direction",0,0,0);
	trans[1][81]	= settr(0,0,0,0,0,"request.track = nextStation",0,0,0);
	trans[1][82]	= settr(0,0,0,0,0,"",0,0,0);
	trans[1][83]	= settr(0,0,0,0,0,"printf('Shuttle %d: requesting access to travel from station %d to station %d\\n',(id+1),(currentStation+1),(nextStation+1))",0,0,0);
	trans[1][93]	= settr(157,0,92,1,0,".(goto)", 0, 2, 0);
	T = trans[1][92] = settr(156,0,0,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(156,0,84,0,0,"DO", 0, 2, 0);
	trans[1][84]	= settr(148,0,85,65,65,"shuttleRequests!request.track,request.direction,request.id", 1, 5, 0);
	trans[1][85]	= settr(149,0,90,66,66,"railwayReplies[id]?reply.granted", 1, 506, 0);
	T = trans[1][90] = settr(154,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(154,0,86,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(154,0,88,0,0,"IF", 0, 2, 0);
	trans[1][86]	= settr(150,0,101,67,67,"(reply.granted)", 0, 2, 0); /* m: 95 -> 101,0 */
	reached1[95] = 1;
	trans[1][87]	= settr(151,0,95,1,0,"goto :b5", 0, 2, 0); /* m: 95 -> 0,101 */
	reached1[95] = 1;
	trans[1][91]	= settr(155,0,92,1,0,".(goto)", 0, 2, 0);
	trans[1][88]	= settr(152,0,89,2,0,"else", 0, 2, 0);
	trans[1][89]	= settr(153,0,92,1,0,"(1)", 0, 2, 0);
	trans[1][94]	= settr(158,0,95,1,0,"break", 0, 2, 0);
	trans[1][95]	= settr(159,0,101,68,68,"printf('Shuttle %d: travelling from station %d to station %d\\n',(id+1),(currentStation+1),(nextStation+1))", 0, 2, 0); /* m: 96 -> 0,101 */
	reached1[96] = 1;
	trans[1][96]	= settr(0,0,0,0,0,"currentStation = nextStation",0,0,0);
	T = trans[1][101] = settr(165,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(165,0,97,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(165,0,99,0,0,"IF", 0, 2, 0);
	trans[1][97]	= settr(161,0,98,69,0,"((direction==1))", 0, 2, 0);
	trans[1][98]	= settr(162,0,107,70,70,"tracks.trackL2R[request.track] = 0", 1, 2, 0);
	trans[1][102]	= settr(166,0,107,1,0,".(goto)", 0, 2, 0);
	trans[1][99]	= settr(163,0,100,71,0,"((direction==-(1)))", 0, 2, 0);
	trans[1][100]	= settr(164,0,107,72,72,"tracks.trackR2L[request.track] = 0", 1, 2, 0);
	T = trans[1][107] = settr(171,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(171,0,103,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(171,0,105,0,0,"IF", 0, 2, 0);
	trans[1][103]	= settr(167,0,104,73,0,"((currentStation==destination))", 0, 2, 0);
	trans[1][104]	= settr(168,0,131,74,74,"travelling[id] = 0", 1, 2, 0);
	trans[1][108]	= settr(172,0,131,1,0,".(goto)", 0, 2, 0);
	trans[1][105]	= settr(169,0,106,2,0,"else", 0, 2, 0);
	trans[1][106]	= settr(170,0,131,75,75,"travelling[id] = 1", 1, 2, 0);
	trans[1][109]	= settr(173,0,129,76,0,"((!(travelling[id])&&processingOrder))", 1, 2, 0);
	T = trans[1][129] = settr(193,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(193,0,110,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(193,0,123,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(193,0,127,0,0,"IF", 0, 2, 0);
	trans[1][110]	= settr(174,0,112,77,77,"((destination==currentOrder.start))", 0, 2, 0); /* m: 111 -> 112,0 */
	reached1[111] = 1;
	trans[1][111]	= settr(0,0,0,0,0,"printf('Shuttle %d: loading %d people at station %d\\n',(id+1),currentOrder.size,(currentOrder.start+1))",0,0,0);
	trans[1][112]	= settr(176,0,113,78,78,"currentLoad[id] = (currentLoad[id]+currentOrder.size)", 1, 2, 0);
	trans[1][113]	= settr(177,0,114,79,79,"destination = currentOrder.end", 0, 2, 0);
	trans[1][114]	= settr(178,0,121,80,80,"travelling[id] = 1", 1, 2, 0);
	T = trans[1][121] = settr(185,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(185,0,115,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(185,0,118,0,0,"IF", 0, 2, 0);
	trans[1][115]	= settr(179,0,131,81,81,"(((currentOrder.start>=currentStation)&&((currentOrder.start-currentStation)<(4/2))))", 0, 2, 0); /* m: 116 -> 131,0 */
	reached1[116] = 1;
	trans[1][116]	= settr(0,0,0,0,0,"direction = 1",0,0,0);
	trans[1][117]	= settr(0,0,0,0,0,"printf('Shuttle %d: travelling left to right\\n',(id+1))",0,0,0);
	trans[1][122]	= settr(186,0,131,1,0,".(goto)", 0, 2, 0);
	trans[1][118]	= settr(182,0,119,2,0,"else", 0, 2, 0);
	trans[1][119]	= settr(183,0,131,82,82,"direction = -(1)", 0, 2, 0); /* m: 120 -> 0,131 */
	reached1[120] = 1;
	trans[1][120]	= settr(0,0,0,0,0,"printf('Shuttle %d: travelling right to left\\n',(id+1))",0,0,0);
	trans[1][130]	= settr(194,0,131,1,0,".(goto)", 0, 2, 0);
	trans[1][123]	= settr(187,0,125,83,83,"((destination==currentOrder.end))", 0, 2, 0); /* m: 124 -> 125,0 */
	reached1[124] = 1;
	trans[1][124]	= settr(0,0,0,0,0,"printf('Shuttle %d: unloading %d people at station %d\\n',(id+1),currentOrder.size,(currentOrder.end+1))",0,0,0);
	trans[1][125]	= settr(189,0,126,84,84,"currentLoad[id] = (currentLoad[id]-currentOrder.size)", 1, 2, 0);
	trans[1][126]	= settr(190,0,131,85,85,"processingOrder = 0", 0, 2, 0);
	trans[1][127]	= settr(191,0,128,2,0,"else", 0, 2, 0);
	trans[1][128]	= settr(192,0,131,1,0,"(1)", 0, 2, 0);
	trans[1][133]	= settr(197,0,134,1,0,"break", 0, 2, 0);
	trans[1][134]	= settr(198,0,0,86,86,"-end-", 0, 3500, 0);

	/* proctype 0: ShuttleManagementSystem */

	trans[0] = (Trans **) emalloc(66*sizeof(Trans *));

	trans[0][1]	= settr(0,0,62,87,87,"orders[0].start = first.start", 0, 2, 0); /* m: 2 -> 0,62 */
	reached0[2] = 1;
	trans[0][2]	= settr(0,0,0,0,0,"orders[0].end = first.end",0,0,0);
	trans[0][3]	= settr(0,0,0,0,0,"orders[0].size = first.size",0,0,0);
	trans[0][4]	= settr(0,0,0,0,0,"orders[1].start = second.start",0,0,0);
	trans[0][5]	= settr(0,0,0,0,0,"orders[1].end = second.end",0,0,0);
	trans[0][6]	= settr(0,0,0,0,0,"orders[1].size = second.size",0,0,0);
	trans[0][7]	= settr(0,0,0,0,0,"i = 0",0,0,0);
	trans[0][8]	= settr(0,0,0,0,0,"i = 0",0,0,0);
	trans[0][63]	= settr(62,0,62,1,0,".(goto)", 0, 2, 0);
	T = trans[0][62] = settr(61,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(61,0,9,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(61,0,60,0,0,"DO", 0, 2, 0);
	trans[0][9]	= settr(8,0,18,88,88,"((i<=(2-1)))", 0, 2, 0); /* m: 10 -> 18,0 */
	reached0[10] = 1;
	trans[0][10]	= settr(0,0,0,0,0,"j = 0",0,0,0);
	trans[0][11]	= settr(0,0,0,0,0,"j = 0",0,0,0);
	trans[0][19]	= settr(18,0,18,1,0,".(goto)", 0, 2, 0);
	T = trans[0][18] = settr(17,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(17,0,12,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(17,0,16,0,0,"DO", 0, 2, 0);
	trans[0][12]	= settr(11,0,14,89,89,"((j<=(4-1)))", 0, 2, 0); /* m: 13 -> 14,0 */
	reached0[13] = 1;
	trans[0][13]	= settr(0,0,0,0,0,"printf('Shuttle Management System: sending order %d to shuttle %d\\n',(i+1),(j+1))",0,0,0);
	trans[0][14]	= settr(13,0,15,90,90,"managementOrders[j]!orders[i].start,orders[i].end,orders[i].size", 1, 3, 0);
	trans[0][15]	= settr(14,0,18,91,91,"j = (j+1)", 0, 2, 0);
	trans[0][16]	= settr(15,0,21,2,0,"else", 0, 2, 0);
	trans[0][17]	= settr(16,0,21,1,0,"goto :b1", 0, 2, 0); /* m: 21 -> 0,39 */
	reached0[21] = 1;
	trans[0][20]	= settr(19,0,21,1,0,"break", 0, 2, 0);
	trans[0][21]	= settr(20,0,39,92,92,"minCharge = 2147483647", 0, 2, 0); /* m: 22 -> 0,39 */
	reached0[22] = 1;
	trans[0][22]	= settr(0,0,0,0,0,"assignedId = 0",0,0,0);
	trans[0][23]	= settr(0,0,0,0,0,"j = 0",0,0,0);
	trans[0][40]	= settr(39,0,39,1,0,".(goto)", 0, 2, 0);
	T = trans[0][39] = settr(38,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(38,0,24,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(38,0,37,0,0,"DO", 0, 2, 0);
	trans[0][24]	= settr(23,0,27,93,93,"((j<=(4-1)))", 0, 2, 0); /* m: 25 -> 27,0 */
	reached0[25] = 1;
	trans[0][25]	= settr(0,0,0,0,0,"",0,0,0);
	trans[0][26]	= settr(0,0,0,0,0,"printf('Shuttle Management System: waiting for offer for order %d from shuttle %d\\n',(i+1),(j+1))",0,0,0);
	trans[0][27]	= settr(26,0,34,94,94,"shuttleOffers?offer.id,offer.charge,offer.refuse", 1, 504, 0);
	T = trans[0][34] = settr(33,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(33,0,28,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(33,0,31,0,0,"IF", 0, 2, 0);
	trans[0][28]	= settr(27,0,39,95,95,"(((offer.charge<minCharge)&&!(offer.refuse)))", 0, 2, 0); /* m: 29 -> 39,0 */
	reached0[29] = 1;
	trans[0][29]	= settr(0,0,0,0,0,"minCharge = offer.charge",0,0,0);
	trans[0][30]	= settr(0,0,0,0,0,"assignedId = offer.id",0,0,0);
	trans[0][35]	= settr(34,0,36,1,0,".(goto)", 0, 2, 0); /* m: 36 -> 0,39 */
	reached0[36] = 1;
	trans[0][31]	= settr(30,0,32,2,0,"else", 0, 2, 0);
	trans[0][32]	= settr(31,0,39,96,96,"minCharge = minCharge", 0, 2, 0); /* m: 33 -> 0,39 */
	reached0[33] = 1;
	trans[0][33]	= settr(0,0,0,0,0,"assignedId = assignedId",0,0,0);
	trans[0][36]	= settr(35,0,39,97,97,"j = (j+1)", 0, 2, 0);
	trans[0][37]	= settr(36,0,42,2,0,"else", 0, 2, 0);
	trans[0][38]	= settr(37,0,42,1,0,"goto :b2", 0, 2, 0); /* m: 42 -> 0,56 */
	reached0[42] = 1;
	trans[0][41]	= settr(40,0,42,1,0,"break", 0, 2, 0);
	trans[0][42]	= settr(41,0,56,98,98,"printf('Shuttle Management System: order %d assigned to shuttle %d\\n',(i+1),(assignedId+1))", 0, 2, 0); /* m: 43 -> 0,56 */
	reached0[43] = 1;
	trans[0][43]	= settr(0,0,0,0,0,"j = 0",0,0,0);
	trans[0][57]	= settr(56,0,56,1,0,".(goto)", 0, 2, 0);
	T = trans[0][56] = settr(55,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(55,0,44,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(55,0,54,0,0,"DO", 0, 2, 0);
	trans[0][44]	= settr(43,0,51,99,0,"((j<=(4-1)))", 0, 2, 0);
	T = trans[0][51] = settr(50,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(50,0,45,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(50,0,47,0,0,"IF", 0, 2, 0);
	trans[0][45]	= settr(44,0,46,100,0,"((j==assignedId))", 0, 2, 0);
	trans[0][46]	= settr(45,0,53,101,101,"managementOrders[j]!orders[i].start,orders[i].end,orders[i].size", 1, 3, 0);
	trans[0][52]	= settr(51,0,53,1,0,".(goto)", 0, 2, 0); /* m: 53 -> 0,56 */
	reached0[53] = 1;
	trans[0][47]	= settr(46,0,48,2,0,"else", 0, 2, 0);
	trans[0][48]	= settr(47,0,50,102,102,"", 0, 2, 0); /* m: 49 -> 0,50 */
	reached0[49] = 1;
	trans[0][49]	= settr(0,0,0,0,0,"dummy.size = -(1)",0,0,0);
	trans[0][50]	= settr(49,0,53,103,103,"managementOrders[j]!dummy.start,dummy.end,dummy.size", 1, 3, 0);
	trans[0][53]	= settr(52,0,56,104,104,"j = (j+1)", 0, 2, 0);
	trans[0][54]	= settr(53,0,59,2,0,"else", 0, 2, 0);
	trans[0][55]	= settr(54,0,59,1,0,"goto :b3", 0, 2, 0); /* m: 59 -> 0,62 */
	reached0[59] = 1;
	trans[0][58]	= settr(57,0,59,1,0,"break", 0, 2, 0);
	trans[0][59]	= settr(58,0,62,105,105,"i = (i+1)", 0, 2, 0);
	trans[0][60]	= settr(59,0,65,2,0,"else", 0, 2, 0);
	trans[0][61]	= settr(60,0,65,1,0,"goto :b0", 0, 2, 0);
	trans[0][64]	= settr(63,0,65,1,0,"break", 0, 2, 0);
	trans[0][65]	= settr(64,0,0,106,106,"-end-", 0, 3500, 0);
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

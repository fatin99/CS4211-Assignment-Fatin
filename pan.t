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

	trans[3] = (Trans **) emalloc(9*sizeof(Trans *));

	T = trans[ 3][7] = settr(310,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(310,2,1,0,0,"ATOMIC", 0, 2, 0);
	trans[3][1]	= settr(304,2,2,3,3,"(run Client(0))", 0, 2, 0);
	trans[3][2]	= settr(305,2,3,4,4,"(run Client(1))", 0, 2, 0);
	trans[3][3]	= settr(306,2,4,5,5,"(run Client(2))", 0, 2, 0);
	trans[3][4]	= settr(307,2,5,6,6,"(run Client(3))", 0, 2, 0);
	trans[3][5]	= settr(308,2,6,7,7,"(run CommsManager())", 0, 2, 0);
	trans[3][6]	= settr(309,0,8,8,8,"(run ControlPanel())", 0, 2, 0);
	trans[3][8]	= settr(311,0,0,9,9,"-end-", 0, 3500, 0);

	/* proctype 2: ControlPanel */

	trans[2] = (Trans **) emalloc(15*sizeof(Trans *));

	trans[2][12]	= settr(301,0,11,1,0,".(goto)", 0, 2, 0);
	T = trans[2][11] = settr(300,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(300,0,1,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(300,0,8,0,0,"DO", 0, 2, 0);
	trans[2][1]	= settr(290,0,6,10,10,"cmAbleWcp?ability", 1, 508, 0);
	T = trans[2][6] = settr(295,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(295,0,2,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(295,0,4,0,0,"IF", 0, 2, 0);
	trans[2][2]	= settr(291,0,11,11,11,"((ability==2))", 0, 2, 0); /* m: 3 -> 11,0 */
	reached2[3] = 1;
	trans[2][3]	= settr(0,0,0,0,0,"disabled = 0",0,0,0);
	trans[2][7]	= settr(296,0,11,1,0,".(goto)", 0, 2, 0);
	trans[2][4]	= settr(293,0,5,2,0,"else", 0, 2, 0);
	trans[2][5]	= settr(294,0,11,12,12,"disabled = 1", 0, 2, 0);
	trans[2][8]	= settr(297,0,10,13,13,"(!(disabled))", 0, 2, 0); /* m: 9 -> 10,0 */
	reached2[9] = 1;
	trans[2][9]	= settr(0,0,0,0,0,"button = 1",0,0,0);
	trans[2][10]	= settr(299,0,11,14,14,"wcpRequest!button", 1, 7, 0);
	trans[2][13]	= settr(302,0,14,1,0,"break", 0, 2, 0);
	trans[2][14]	= settr(303,0,0,15,15,"-end-", 0, 3500, 0);

	/* proctype 1: CommsManager */

	trans[1] = (Trans **) emalloc(178*sizeof(Trans *));

	trans[1][1]	= settr(113,0,7,16,16,"i = 0", 0, 2, 0);
	trans[1][8]	= settr(120,0,7,1,0,".(goto)", 0, 2, 0);
	T = trans[1][7] = settr(119,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(119,0,2,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(119,0,5,0,0,"DO", 0, 2, 0);
	trans[1][2]	= settr(114,0,7,17,17,"((i<=(4-1)))", 0, 2, 0); /* m: 3 -> 7,0 */
	reached1[3] = 1;
	trans[1][3]	= settr(0,0,0,0,0,"connectedClients[i] = 0",0,0,0);
	trans[1][4]	= settr(0,0,0,0,0,"i = (i+1)",0,0,0);
	trans[1][5]	= settr(117,0,10,2,0,"else", 0, 2, 0);
	trans[1][6]	= settr(118,0,10,1,0,"goto :b1", 0, 2, 0); /* m: 10 -> 0,174 */
	reached1[10] = 1;
	trans[1][9]	= settr(121,0,10,1,0,"break", 0, 2, 0);
	trans[1][10]	= settr(122,0,174,18,18,"currStatus = 8", 0, 2, 0); /* m: 11 -> 0,174 */
	reached1[11] = 1;
	trans[1][11]	= settr(0,0,0,0,0,"reportStatus = 0",0,0,0);
	trans[1][12]	= settr(0,0,0,0,0,"button = 0",0,0,0);
	trans[1][175]	= settr(287,0,174,1,0,".(goto)", 0, 2, 0);
	T = trans[1][174] = settr(286,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(286,0,13,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(286,0,26,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(286,0,29,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(286,0,39,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(286,0,50,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(286,0,54,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(286,0,65,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(286,0,106,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(286,0,140,0,0,"DO", 0, 2, 0);
	trans[1][13]	= settr(125,0,14,19,0,"(nempty(cmConnectRequest))", 1, 503, 0);
	trans[1][14]	= settr(126,0,15,20,20,"cmConnectRequest?id", 1, 503, 0);
	trans[1][15]	= settr(127,0,23,21,21,"reply = 0", 0, 2, 0);
	T = trans[1][23] = settr(135,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(135,0,16,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(135,0,21,0,0,"IF", 0, 2, 0);
	trans[1][16]	= settr(128,0,20,22,22,"((currStatus==8))", 0, 2, 0); /* m: 17 -> 20,0 */
	reached1[17] = 1;
	trans[1][17]	= settr(0,0,0,0,0,"reply = 2",0,0,0);
	trans[1][18]	= settr(0,0,0,0,0,"currStatus = 7",0,0,0);
	trans[1][19]	= settr(0,0,0,0,0,"connectedClients[id] = 1",0,0,0);
	trans[1][20]	= settr(132,0,25,23,23,"cmAbleWcp!1", 1, 8, 0);
	trans[1][24]	= settr(136,0,25,1,0,".(goto)", 0, 2, 0);
	trans[1][21]	= settr(133,0,22,2,0,"else", 0, 2, 0);
	trans[1][22]	= settr(134,0,25,24,24,"reply = 1", 0, 2, 0);
	trans[1][25]	= settr(137,0,174,25,25,"cmConnectReply[id]!reply", 1, 4, 0);
	trans[1][26]	= settr(138,0,27,26,26,"((currStatus==7))", 0, 2, 0);
	trans[1][27]	= settr(139,0,28,27,27,"cmCommand[id]!4", 1, 5, 0);
	trans[1][28]	= settr(140,0,174,28,28,"currStatus = 6", 0, 2, 0);
	trans[1][29]	= settr(141,0,30,29,29,"((currStatus==6))", 0, 2, 0);
	trans[1][30]	= settr(142,0,37,30,30,"clientReport?reportStatus,id", 1, 506, 0);
	T = trans[1][37] = settr(149,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(149,0,31,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(149,0,34,0,0,"IF", 0, 2, 0);
	trans[1][31]	= settr(143,0,32,31,31,"((reportStatus==2))", 0, 2, 0);
	trans[1][32]	= settr(144,0,33,32,32,"cmCommand[id]!3", 1, 5, 0);
	trans[1][33]	= settr(145,0,174,33,33,"currStatus = 5", 0, 2, 0);
	trans[1][38]	= settr(150,0,174,1,0,".(goto)", 0, 2, 0);
	trans[1][34]	= settr(146,0,174,34,34,"((reportStatus==1))", 0, 2, 0); /* m: 35 -> 174,0 */
	reached1[35] = 1;
	trans[1][35]	= settr(0,0,0,0,0,"connectedClients[id] = 0",0,0,0);
	trans[1][36]	= settr(0,0,0,0,0,"currStatus = 8",0,0,0);
	trans[1][39]	= settr(151,0,40,35,35,"((currStatus==5))", 0, 2, 0);
	trans[1][40]	= settr(152,0,48,36,36,"clientReport?reportStatus,id", 1, 506, 0);
	T = trans[1][48] = settr(160,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(160,0,41,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(160,0,44,0,0,"IF", 0, 2, 0);
	trans[1][41]	= settr(153,0,43,37,37,"((reportStatus==2))", 0, 2, 0); /* m: 42 -> 43,0 */
	reached1[42] = 1;
	trans[1][42]	= settr(0,0,0,0,0,"currStatus = 8",0,0,0);
	trans[1][43]	= settr(155,0,174,38,38,"cmAbleWcp!2", 1, 8, 0);
	trans[1][49]	= settr(161,0,174,1,0,".(goto)", 0, 2, 0);
	trans[1][44]	= settr(156,0,47,39,39,"((reportStatus==1))", 0, 2, 0); /* m: 45 -> 47,0 */
	reached1[45] = 1;
	trans[1][45]	= settr(0,0,0,0,0,"connectedClients[id] = 0",0,0,0);
	trans[1][46]	= settr(0,0,0,0,0,"currStatus = 8",0,0,0);
	trans[1][47]	= settr(159,0,174,40,40,"cmAbleWcp!2", 1, 8, 0);
	trans[1][50]	= settr(162,0,51,41,41,"((nempty(wcpRequest)&&(currStatus==8)))", 1, 507, 0);
	trans[1][51]	= settr(163,0,52,42,42,"wcpRequest?button", 1, 507, 0);
	trans[1][52]	= settr(164,0,53,43,43,"currStatus = 4", 0, 2, 0);
	trans[1][53]	= settr(165,0,174,44,44,"cmAbleWcp!1", 1, 8, 0);
	trans[1][54]	= settr(166,0,61,45,45,"((currStatus==4))", 0, 2, 0); /* m: 55 -> 61,0 */
	reached1[55] = 1;
	trans[1][55]	= settr(0,0,0,0,0,"i = 0",0,0,0);
	trans[1][62]	= settr(174,0,61,1,0,".(goto)", 0, 2, 0);
	T = trans[1][61] = settr(173,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(173,0,56,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(173,0,59,0,0,"DO", 0, 2, 0);
	trans[1][56]	= settr(168,0,57,46,0,"((i<=(4-1)))", 0, 2, 0);
	trans[1][57]	= settr(169,0,58,47,47,"cmCommand[i]!4", 1, 5, 0);
	trans[1][58]	= settr(170,0,61,48,48,"i = (i+1)", 0, 2, 0);
	trans[1][59]	= settr(171,0,64,2,0,"else", 0, 2, 0);
	trans[1][60]	= settr(172,0,64,1,0,"goto :b3", 0, 2, 0); /* m: 64 -> 0,174 */
	reached1[64] = 1;
	trans[1][63]	= settr(175,0,64,1,0,"break", 0, 2, 0);
	trans[1][64]	= settr(176,0,174,49,49,"currStatus = 3", 0, 2, 0);
	trans[1][65]	= settr(177,0,79,50,50,"((currStatus==3))", 0, 2, 0); /* m: 66 -> 79,0 */
	reached1[66] = 1;
	trans[1][66]	= settr(0,0,0,0,0,"hasFail = 0",0,0,0);
	trans[1][67]	= settr(0,0,0,0,0,"i = 0",0,0,0);
	trans[1][80]	= settr(192,0,79,1,0,".(goto)", 0, 2, 0);
	T = trans[1][79] = settr(191,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(191,0,68,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(191,0,77,0,0,"DO", 0, 2, 0);
	trans[1][68]	= settr(180,0,69,51,0,"((i<=(4-1)))", 0, 2, 0);
	trans[1][69]	= settr(181,0,74,52,52,"clientReport?reportStatus,id", 1, 506, 0);
	T = trans[1][74] = settr(186,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(186,0,70,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(186,0,72,0,0,"IF", 0, 2, 0);
	trans[1][70]	= settr(182,0,79,53,53,"((reportStatus==1))", 0, 2, 0); /* m: 71 -> 79,0 */
	reached1[71] = 1;
	trans[1][71]	= settr(0,0,0,0,0,"hasFail = 1",0,0,0);
	trans[1][75]	= settr(187,0,76,1,0,".(goto)", 0, 2, 0); /* m: 76 -> 0,79 */
	reached1[76] = 1;
	trans[1][72]	= settr(184,0,73,2,0,"else", 0, 2, 0);
	trans[1][73]	= settr(185,0,79,54,54,"(1)", 0, 2, 0); /* m: 76 -> 79,0 */
	reached1[76] = 1;
	trans[1][76]	= settr(188,0,79,55,55,"i = (i+1)", 0, 2, 0);
	trans[1][77]	= settr(189,0,104,2,0,"else", 0, 2, 0);
	trans[1][78]	= settr(190,0,104,1,0,"goto :b4", 0, 2, 0);
	trans[1][81]	= settr(193,0,104,1,0,"break", 0, 2, 0);
	T = trans[1][104] = settr(216,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(216,0,82,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(216,0,93,0,0,"IF", 0, 2, 0);
	trans[1][82]	= settr(194,0,89,56,56,"(hasFail)", 0, 2, 0); /* m: 83 -> 89,0 */
	reached1[83] = 1;
	trans[1][83]	= settr(0,0,0,0,0,"i = 0",0,0,0);
	trans[1][90]	= settr(202,0,89,1,0,".(goto)", 0, 2, 0);
	T = trans[1][89] = settr(201,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(201,0,84,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(201,0,87,0,0,"DO", 0, 2, 0);
	trans[1][84]	= settr(196,0,85,57,0,"((i<=(4-1)))", 0, 2, 0);
	trans[1][85]	= settr(197,0,86,58,58,"cmCommand[i]!3", 1, 5, 0);
	trans[1][86]	= settr(198,0,89,59,59,"i = (i+1)", 0, 2, 0);
	trans[1][87]	= settr(199,0,92,2,0,"else", 0, 2, 0);
	trans[1][88]	= settr(200,0,92,1,0,"goto :b5", 0, 2, 0); /* m: 92 -> 0,174 */
	reached1[92] = 1;
	trans[1][91]	= settr(203,0,92,1,0,"break", 0, 2, 0);
	trans[1][92]	= settr(204,0,174,60,60,"currStatus = 1", 0, 2, 0);
	trans[1][105]	= settr(217,0,174,1,0,".(goto)", 0, 2, 0);
	trans[1][93]	= settr(205,0,94,2,0,"else", 0, 2, 0);
	trans[1][94]	= settr(206,0,100,61,61,"i = 0", 0, 2, 0);
	trans[1][101]	= settr(213,0,100,1,0,".(goto)", 0, 2, 0);
	T = trans[1][100] = settr(212,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(212,0,95,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(212,0,98,0,0,"DO", 0, 2, 0);
	trans[1][95]	= settr(207,0,96,62,0,"((i<=(4-1)))", 0, 2, 0);
	trans[1][96]	= settr(208,0,97,63,63,"cmCommand[i]!3", 1, 5, 0);
	trans[1][97]	= settr(209,0,100,64,64,"i = (i+1)", 0, 2, 0);
	trans[1][98]	= settr(210,0,103,2,0,"else", 0, 2, 0);
	trans[1][99]	= settr(211,0,103,1,0,"goto :b6", 0, 2, 0); /* m: 103 -> 0,174 */
	reached1[103] = 1;
	trans[1][102]	= settr(214,0,103,1,0,"break", 0, 2, 0);
	trans[1][103]	= settr(215,0,174,65,65,"currStatus = 2", 0, 2, 0);
	trans[1][106]	= settr(218,0,120,66,66,"((currStatus==2))", 0, 2, 0); /* m: 107 -> 120,0 */
	reached1[107] = 1;
	trans[1][107]	= settr(0,0,0,0,0,"hasFail = 0",0,0,0);
	trans[1][108]	= settr(0,0,0,0,0,"i = 0",0,0,0);
	trans[1][121]	= settr(233,0,120,1,0,".(goto)", 0, 2, 0);
	T = trans[1][120] = settr(232,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(232,0,109,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(232,0,118,0,0,"DO", 0, 2, 0);
	trans[1][109]	= settr(221,0,110,67,0,"((i<=(4-1)))", 0, 2, 0);
	trans[1][110]	= settr(222,0,115,68,68,"clientReport?reportStatus,id", 1, 506, 0);
	T = trans[1][115] = settr(227,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(227,0,111,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(227,0,113,0,0,"IF", 0, 2, 0);
	trans[1][111]	= settr(223,0,120,69,69,"((reportStatus==1))", 0, 2, 0); /* m: 112 -> 120,0 */
	reached1[112] = 1;
	trans[1][112]	= settr(0,0,0,0,0,"hasFail = 1",0,0,0);
	trans[1][116]	= settr(228,0,117,1,0,".(goto)", 0, 2, 0); /* m: 117 -> 0,120 */
	reached1[117] = 1;
	trans[1][113]	= settr(225,0,114,2,0,"else", 0, 2, 0);
	trans[1][114]	= settr(226,0,120,70,70,"(1)", 0, 2, 0); /* m: 117 -> 120,0 */
	reached1[117] = 1;
	trans[1][117]	= settr(229,0,120,71,71,"i = (i+1)", 0, 2, 0);
	trans[1][118]	= settr(230,0,138,2,0,"else", 0, 2, 0);
	trans[1][119]	= settr(231,0,138,1,0,"goto :b7", 0, 2, 0);
	trans[1][122]	= settr(234,0,138,1,0,"break", 0, 2, 0);
	T = trans[1][138] = settr(250,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(250,0,123,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(250,0,126,0,0,"IF", 0, 2, 0);
	trans[1][123]	= settr(235,0,125,72,72,"(hasFail)", 0, 2, 0); /* m: 124 -> 125,0 */
	reached1[124] = 1;
	trans[1][124]	= settr(0,0,0,0,0,"currStatus = 8",0,0,0);
	trans[1][125]	= settr(237,0,174,73,73,"cmAbleWcp!2", 1, 8, 0);
	trans[1][139]	= settr(251,0,174,1,0,".(goto)", 0, 2, 0);
	trans[1][126]	= settr(238,0,127,2,0,"else", 0, 2, 0);
	trans[1][127]	= settr(239,0,134,74,74,"currStatus = 8", 0, 2, 0); /* m: 128 -> 0,134 */
	reached1[128] = 1;
	trans[1][128]	= settr(0,0,0,0,0,"i = 0",0,0,0);
	trans[1][135]	= settr(247,0,134,1,0,".(goto)", 0, 2, 0);
	T = trans[1][134] = settr(246,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(246,0,129,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(246,0,132,0,0,"DO", 0, 2, 0);
	trans[1][129]	= settr(241,0,130,75,0,"((i<=(4-1)))", 0, 2, 0);
	trans[1][130]	= settr(242,0,131,76,76,"cmCommand[i]!1", 1, 5, 0);
	trans[1][131]	= settr(243,0,134,77,77,"i = (i+1)", 0, 2, 0);
	trans[1][132]	= settr(244,0,137,2,0,"else", 0, 2, 0);
	trans[1][133]	= settr(245,0,137,1,0,"goto :b8", 0, 2, 0);
	trans[1][136]	= settr(248,0,137,1,0,"break", 0, 2, 0);
	trans[1][137]	= settr(249,0,174,78,78,"cmAbleWcp!2", 1, 8, 0);
	trans[1][140]	= settr(252,0,154,79,79,"((currStatus==1))", 0, 2, 0); /* m: 141 -> 154,0 */
	reached1[141] = 1;
	trans[1][141]	= settr(0,0,0,0,0,"hasFail = 0",0,0,0);
	trans[1][142]	= settr(0,0,0,0,0,"i = 0",0,0,0);
	trans[1][155]	= settr(267,0,154,1,0,".(goto)", 0, 2, 0);
	T = trans[1][154] = settr(266,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(266,0,143,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(266,0,152,0,0,"DO", 0, 2, 0);
	trans[1][143]	= settr(255,0,144,80,0,"((i<=(4-1)))", 0, 2, 0);
	trans[1][144]	= settr(256,0,149,81,81,"clientReport?reportStatus,id", 1, 506, 0);
	T = trans[1][149] = settr(261,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(261,0,145,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(261,0,147,0,0,"IF", 0, 2, 0);
	trans[1][145]	= settr(257,0,154,82,82,"((reportStatus==1))", 0, 2, 0); /* m: 146 -> 154,0 */
	reached1[146] = 1;
	trans[1][146]	= settr(0,0,0,0,0,"hasFail = 1",0,0,0);
	trans[1][150]	= settr(262,0,151,1,0,".(goto)", 0, 2, 0); /* m: 151 -> 0,154 */
	reached1[151] = 1;
	trans[1][147]	= settr(259,0,148,2,0,"else", 0, 2, 0);
	trans[1][148]	= settr(260,0,154,83,83,"(1)", 0, 2, 0); /* m: 151 -> 154,0 */
	reached1[151] = 1;
	trans[1][151]	= settr(263,0,154,84,84,"i = (i+1)", 0, 2, 0);
	trans[1][152]	= settr(264,0,172,2,0,"else", 0, 2, 0);
	trans[1][153]	= settr(265,0,172,1,0,"goto :b9", 0, 2, 0);
	trans[1][156]	= settr(268,0,172,1,0,"break", 0, 2, 0);
	T = trans[1][172] = settr(284,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(284,0,157,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(284,0,160,0,0,"IF", 0, 2, 0);
	trans[1][157]	= settr(269,0,159,85,85,"(hasFail)", 0, 2, 0); /* m: 158 -> 159,0 */
	reached1[158] = 1;
	trans[1][158]	= settr(0,0,0,0,0,"currStatus = 8",0,0,0);
	trans[1][159]	= settr(271,0,174,86,86,"cmAbleWcp!2", 1, 8, 0);
	trans[1][173]	= settr(285,0,174,1,0,".(goto)", 0, 2, 0);
	trans[1][160]	= settr(272,0,161,2,0,"else", 0, 2, 0);
	trans[1][161]	= settr(273,0,168,87,87,"currStatus = 8", 0, 2, 0); /* m: 162 -> 0,168 */
	reached1[162] = 1;
	trans[1][162]	= settr(0,0,0,0,0,"i = 0",0,0,0);
	trans[1][169]	= settr(281,0,168,1,0,".(goto)", 0, 2, 0);
	T = trans[1][168] = settr(280,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(280,0,163,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(280,0,166,0,0,"DO", 0, 2, 0);
	trans[1][163]	= settr(275,0,164,88,0,"((i<=(4-1)))", 0, 2, 0);
	trans[1][164]	= settr(276,0,165,89,89,"cmCommand[i]!1", 1, 5, 0);
	trans[1][165]	= settr(277,0,168,90,90,"i = (i+1)", 0, 2, 0);
	trans[1][166]	= settr(278,0,171,2,0,"else", 0, 2, 0);
	trans[1][167]	= settr(279,0,171,1,0,"goto :b10", 0, 2, 0);
	trans[1][170]	= settr(282,0,171,1,0,"break", 0, 2, 0);
	trans[1][171]	= settr(283,0,174,91,91,"cmAbleWcp!2", 1, 8, 0);
	trans[1][176]	= settr(288,0,177,1,0,"break", 0, 2, 0);
	trans[1][177]	= settr(289,0,0,92,92,"-end-", 0, 3500, 0);

	/* proctype 0: Client */

	trans[0] = (Trans **) emalloc(114*sizeof(Trans *));

	trans[0][111]	= settr(110,0,110,1,0,".(goto)", 0, 2, 0);
	T = trans[0][110] = settr(109,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(109,0,1,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(109,0,11,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(109,0,19,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(109,0,35,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(109,0,45,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(109,0,47,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(109,0,55,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(109,0,76,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(109,0,93,0,0,"DO", 0, 2, 0);
	trans[0][1]	= settr(0,0,2,93,0,"(!(connected))", 0, 2, 0);
	trans[0][2]	= settr(1,0,3,94,94,"cmConnectRequest!id", 1, 3, 0);
	trans[0][3]	= settr(2,0,9,95,95,"cmConnectReply[id]?reply", 1, 504, 0);
	T = trans[0][9] = settr(8,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(8,0,4,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(8,0,7,0,0,"IF", 0, 2, 0);
	trans[0][4]	= settr(3,0,110,96,96,"((reply==2))", 0, 2, 0); /* m: 5 -> 110,0 */
	reached0[5] = 1;
	trans[0][5]	= settr(0,0,0,0,0,"currStatus = 7",0,0,0);
	trans[0][6]	= settr(0,0,0,0,0,"connected = 1",0,0,0);
	trans[0][10]	= settr(9,0,110,1,0,".(goto)", 0, 2, 0);
	trans[0][7]	= settr(6,0,8,2,0,"else", 0, 2, 0);
	trans[0][8]	= settr(7,0,110,1,0,"(1)", 0, 2, 0);
	trans[0][11]	= settr(10,0,12,97,0,"((currStatus==7))", 0, 2, 0);
	trans[0][12]	= settr(11,0,17,98,98,"cmCommand[id]?currCommand", 1, 505, 0);
	T = trans[0][17] = settr(16,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(16,0,13,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(16,0,15,0,0,"IF", 0, 2, 0);
	trans[0][13]	= settr(12,0,110,99,99,"((currCommand==4))", 0, 2, 0); /* m: 14 -> 110,0 */
	reached0[14] = 1;
	trans[0][14]	= settr(0,0,0,0,0,"currStatus = 6",0,0,0);
	trans[0][18]	= settr(17,0,110,1,0,".(goto)", 0, 2, 0);
	trans[0][15]	= settr(14,0,16,2,0,"else", 0, 2, 0);
	trans[0][16]	= settr(15,0,110,1,0,"(1)", 0, 2, 0);
	trans[0][19]	= settr(18,0,33,100,0,"((currStatus==6))", 0, 2, 0);
	T = trans[0][33] = settr(32,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(32,0,20,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(32,0,29,0,0,"IF", 0, 2, 0);
	trans[0][20]	= settr(19,0,21,101,0,"(getInfoSuccess)", 0, 2, 0);
	trans[0][21]	= settr(20,0,22,102,102,"clientReport!2,id", 1, 6, 0);
	trans[0][22]	= settr(21,0,27,103,103,"cmCommand[id]?currCommand", 1, 505, 0);
	T = trans[0][27] = settr(26,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(26,0,23,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(26,0,25,0,0,"IF", 0, 2, 0);
	trans[0][23]	= settr(22,0,110,104,104,"((currCommand==3))", 0, 2, 0); /* m: 24 -> 110,0 */
	reached0[24] = 1;
	trans[0][24]	= settr(0,0,0,0,0,"currStatus = 5",0,0,0);
	trans[0][28]	= settr(27,0,110,1,0,".(goto)", 0, 2, 0);
	trans[0][25]	= settr(24,0,26,2,0,"else", 0, 2, 0);
	trans[0][26]	= settr(25,0,110,1,0,"(1)", 0, 2, 0);
	trans[0][34]	= settr(33,0,110,1,0,".(goto)", 0, 2, 0);
	trans[0][29]	= settr(28,0,30,2,0,"else", 0, 2, 0);
	trans[0][30]	= settr(29,0,31,105,105,"clientReport!1,id", 1, 6, 0);
	trans[0][31]	= settr(30,0,110,106,106,"currStatus = 8", 0, 2, 0); /* m: 32 -> 0,110 */
	reached0[32] = 1;
	trans[0][32]	= settr(0,0,0,0,0,"connected = 0",0,0,0);
	trans[0][35]	= settr(34,0,43,107,107,"((currStatus==5))", 0, 2, 0);
	T = trans[0][43] = settr(42,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(42,0,36,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(42,0,39,0,0,"IF", 0, 2, 0);
	trans[0][36]	= settr(35,0,37,108,0,"(useNewInfoSuccess)", 0, 2, 0);
	trans[0][37]	= settr(36,0,38,109,109,"clientReport!2,id", 1, 6, 0);
	trans[0][38]	= settr(37,0,110,110,110,"currStatus = 8", 0, 2, 0);
	trans[0][44]	= settr(43,0,110,1,0,".(goto)", 0, 2, 0);
	trans[0][39]	= settr(38,0,40,2,0,"else", 0, 2, 0);
	trans[0][40]	= settr(39,0,41,111,111,"clientReport!1,id", 1, 6, 0);
	trans[0][41]	= settr(40,0,110,112,112,"connected = 0", 0, 2, 0); /* m: 42 -> 0,110 */
	reached0[42] = 1;
	trans[0][42]	= settr(0,0,0,0,0,"currStatus = 8",0,0,0);
	trans[0][45]	= settr(44,0,46,113,113,"(((nempty(wcpRequest)&&(currStatus==8))&&connected))", 1, 507, 0);
	trans[0][46]	= settr(45,0,110,114,114,"currStatus = 4", 0, 2, 0);
	trans[0][47]	= settr(46,0,48,115,0,"(((currStatus==4)&&connected))", 0, 2, 0);
	trans[0][48]	= settr(47,0,53,116,116,"cmCommand[id]?currCommand", 1, 505, 0);
	T = trans[0][53] = settr(52,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(52,0,49,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(52,0,51,0,0,"IF", 0, 2, 0);
	trans[0][49]	= settr(48,0,110,117,117,"((currCommand==4))", 0, 2, 0); /* m: 50 -> 110,0 */
	reached0[50] = 1;
	trans[0][50]	= settr(0,0,0,0,0,"currStatus = 3",0,0,0);
	trans[0][54]	= settr(53,0,110,1,0,".(goto)", 0, 2, 0);
	trans[0][51]	= settr(50,0,52,2,0,"else", 0, 2, 0);
	trans[0][52]	= settr(51,0,110,1,0,"(1)", 0, 2, 0);
	trans[0][55]	= settr(54,0,74,118,0,"(((currStatus==3)&&connected))", 0, 2, 0);
	T = trans[0][74] = settr(73,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(73,0,56,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(73,0,65,0,0,"IF", 0, 2, 0);
	trans[0][56]	= settr(55,0,57,119,0,"(getInfoSuccess)", 0, 2, 0);
	trans[0][57]	= settr(56,0,58,120,120,"clientReport!2,id", 1, 6, 0);
	trans[0][58]	= settr(57,0,63,121,121,"cmCommand[id]?currCommand", 1, 505, 0);
	T = trans[0][63] = settr(62,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(62,0,59,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(62,0,61,0,0,"IF", 0, 2, 0);
	trans[0][59]	= settr(58,0,110,122,122,"((currCommand==3))", 0, 2, 0); /* m: 60 -> 110,0 */
	reached0[60] = 1;
	trans[0][60]	= settr(0,0,0,0,0,"currStatus = 2",0,0,0);
	trans[0][64]	= settr(63,0,110,1,0,".(goto)", 0, 2, 0);
	trans[0][61]	= settr(60,0,62,2,0,"else", 0, 2, 0);
	trans[0][62]	= settr(61,0,110,1,0,"(1)", 0, 2, 0);
	trans[0][75]	= settr(74,0,110,1,0,".(goto)", 0, 2, 0);
	trans[0][65]	= settr(64,0,66,2,0,"else", 0, 2, 0);
	trans[0][66]	= settr(65,0,67,123,123,"clientReport!1,id", 1, 6, 0);
	trans[0][67]	= settr(66,0,72,124,124,"cmCommand[id]?currCommand", 1, 505, 0);
	T = trans[0][72] = settr(71,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(71,0,68,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(71,0,70,0,0,"IF", 0, 2, 0);
	trans[0][68]	= settr(67,0,110,125,125,"((currCommand==2))", 0, 2, 0); /* m: 69 -> 110,0 */
	reached0[69] = 1;
	trans[0][69]	= settr(0,0,0,0,0,"currStatus = 1",0,0,0);
	trans[0][73]	= settr(72,0,110,1,0,".(goto)", 0, 2, 0);
	trans[0][70]	= settr(69,0,71,2,0,"else", 0, 2, 0);
	trans[0][71]	= settr(70,0,110,1,0,"(1)", 0, 2, 0);
	trans[0][76]	= settr(75,0,84,126,126,"(((currStatus==2)&&connected))", 0, 2, 0);
	T = trans[0][84] = settr(83,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(83,0,77,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(83,0,80,0,0,"IF", 0, 2, 0);
	trans[0][77]	= settr(76,0,78,127,0,"(useNewInfoSuccess)", 0, 2, 0);
	trans[0][78]	= settr(77,0,79,128,128,"clientReport!2,id", 1, 6, 0);
	trans[0][79]	= settr(78,0,86,129,129,"currStatus = 8", 0, 2, 0);
	trans[0][85]	= settr(84,0,86,1,0,".(goto)", 0, 2, 0);
	trans[0][80]	= settr(79,0,81,2,0,"else", 0, 2, 0);
	trans[0][81]	= settr(80,0,82,130,130,"clientReport!1,id", 1, 6, 0);
	trans[0][82]	= settr(81,0,86,131,131,"connected = 0", 0, 2, 0); /* m: 83 -> 0,86 */
	reached0[83] = 1;
	trans[0][83]	= settr(0,0,0,0,0,"currStatus = 8",0,0,0);
	trans[0][86]	= settr(85,0,91,132,132,"cmCommand[id]?currCommand", 1, 505, 0);
	T = trans[0][91] = settr(90,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(90,0,87,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(90,0,89,0,0,"IF", 0, 2, 0);
	trans[0][87]	= settr(86,0,110,133,133,"((currCommand==1))", 0, 2, 0); /* m: 88 -> 110,0 */
	reached0[88] = 1;
	trans[0][88]	= settr(0,0,0,0,0,"connected = 0",0,0,0);
	trans[0][92]	= settr(91,0,110,1,0,".(goto)", 0, 2, 0);
	trans[0][89]	= settr(88,0,90,2,0,"else", 0, 2, 0);
	trans[0][90]	= settr(89,0,110,1,0,"(1)", 0, 2, 0);
	trans[0][93]	= settr(92,0,101,134,134,"(((currStatus==1)&&connected))", 0, 2, 0);
	T = trans[0][101] = settr(100,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(100,0,94,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(100,0,97,0,0,"IF", 0, 2, 0);
	trans[0][94]	= settr(93,0,95,135,0,"(useOldInfoSuccess)", 0, 2, 0);
	trans[0][95]	= settr(94,0,96,136,136,"clientReport!2,id", 1, 6, 0);
	trans[0][96]	= settr(95,0,103,137,137,"currStatus = 8", 0, 2, 0);
	trans[0][102]	= settr(101,0,103,1,0,".(goto)", 0, 2, 0);
	trans[0][97]	= settr(96,0,98,2,0,"else", 0, 2, 0);
	trans[0][98]	= settr(97,0,99,138,138,"clientReport!1,id", 1, 6, 0);
	trans[0][99]	= settr(98,0,103,139,139,"connected = 0", 0, 2, 0); /* m: 100 -> 0,103 */
	reached0[100] = 1;
	trans[0][100]	= settr(0,0,0,0,0,"currStatus = 8",0,0,0);
	trans[0][103]	= settr(102,0,108,140,140,"cmCommand[id]?currCommand", 1, 505, 0);
	T = trans[0][108] = settr(107,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(107,0,104,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(107,0,106,0,0,"IF", 0, 2, 0);
	trans[0][104]	= settr(103,0,110,141,141,"((currCommand==1))", 0, 2, 0); /* m: 105 -> 110,0 */
	reached0[105] = 1;
	trans[0][105]	= settr(0,0,0,0,0,"connected = 0",0,0,0);
	trans[0][109]	= settr(108,0,110,1,0,".(goto)", 0, 2, 0);
	trans[0][106]	= settr(105,0,107,2,0,"else", 0, 2, 0);
	trans[0][107]	= settr(106,0,110,1,0,"(1)", 0, 2, 0);
	trans[0][112]	= settr(111,0,113,1,0,"break", 0, 2, 0);
	trans[0][113]	= settr(112,0,0,142,142,"-end-", 0, 3500, 0);
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

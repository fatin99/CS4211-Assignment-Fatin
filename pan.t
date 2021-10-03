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

	T = trans[ 3][7] = settr(241,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(241,2,1,0,0,"ATOMIC", 0, 2, 0);
	trans[3][1]	= settr(235,2,2,3,3,"(run Client(0))", 0, 2, 0);
	trans[3][2]	= settr(236,2,3,4,4,"(run Client(1))", 0, 2, 0);
	trans[3][3]	= settr(237,2,4,5,5,"(run Client(2))", 0, 2, 0);
	trans[3][4]	= settr(238,2,5,6,6,"(run Client(3))", 0, 2, 0);
	trans[3][5]	= settr(239,2,6,7,7,"(run CommsManager())", 0, 2, 0);
	trans[3][6]	= settr(240,0,8,8,8,"(run ControlPanel())", 0, 2, 0);
	trans[3][8]	= settr(242,0,0,9,9,"-end-", 0, 3500, 0);

	/* proctype 2: ControlPanel */

	trans[2] = (Trans **) emalloc(15*sizeof(Trans *));

	trans[2][12]	= settr(232,0,11,1,0,".(goto)", 0, 2, 0);
	T = trans[2][11] = settr(231,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(231,0,1,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(231,0,8,0,0,"DO", 0, 2, 0);
	trans[2][1]	= settr(221,0,6,10,10,"cmAbleWcp?ability", 1, 508, 0);
	T = trans[2][6] = settr(226,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(226,0,2,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(226,0,4,0,0,"IF", 0, 2, 0);
	trans[2][2]	= settr(222,0,11,11,11,"((ability==2))", 0, 2, 0); /* m: 3 -> 11,0 */
	reached2[3] = 1;
	trans[2][3]	= settr(0,0,0,0,0,"disabled = 0",0,0,0);
	trans[2][7]	= settr(227,0,11,1,0,".(goto)", 0, 2, 0);
	trans[2][4]	= settr(224,0,5,2,0,"else", 0, 2, 0);
	trans[2][5]	= settr(225,0,11,12,12,"disabled = 1", 0, 2, 0);
	trans[2][8]	= settr(228,0,10,13,13,"(!(disabled))", 0, 2, 0); /* m: 9 -> 10,0 */
	reached2[9] = 1;
	trans[2][9]	= settr(0,0,0,0,0,"button = 1",0,0,0);
	trans[2][10]	= settr(230,0,11,14,14,"wcpRequest!button", 1, 7, 0);
	trans[2][13]	= settr(233,0,14,1,0,"break", 0, 2, 0);
	trans[2][14]	= settr(234,0,0,15,15,"-end-", 0, 3500, 0);

	/* proctype 1: CommsManager */

	trans[1] = (Trans **) emalloc(148*sizeof(Trans *));

	trans[1][145]	= settr(218,0,144,1,0,".(goto)", 0, 2, 0);
	T = trans[1][144] = settr(217,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(217,0,1,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(217,0,14,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(217,0,17,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(217,0,27,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(217,0,38,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(217,0,42,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(217,0,53,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(217,0,94,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(217,0,119,0,0,"DO", 0, 2, 0);
	trans[1][1]	= settr(74,0,2,16,0,"(nempty(cmConnectRequest))", 1, 503, 0);
	trans[1][2]	= settr(75,0,3,17,17,"cmConnectRequest?id", 1, 503, 0);
	trans[1][3]	= settr(76,0,11,18,18,"reply = 0", 0, 2, 0);
	T = trans[1][11] = settr(84,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(84,0,4,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(84,0,9,0,0,"IF", 0, 2, 0);
	trans[1][4]	= settr(77,0,7,19,19,"((currStatus==8))", 0, 2, 0); /* m: 5 -> 7,0 */
	reached1[5] = 1;
	trans[1][5]	= settr(0,0,0,0,0,"reply = 2",0,0,0);
	trans[1][6]	= settr(0,0,0,0,0,"currStatus = 7",0,0,0);
	trans[1][7]	= settr(80,0,8,20,20,"connectedClients!id", 1, 10, 0);
	trans[1][8]	= settr(81,0,13,21,21,"cmAbleWcp!1", 1, 8, 0);
	trans[1][12]	= settr(85,0,13,1,0,".(goto)", 0, 2, 0);
	trans[1][9]	= settr(82,0,10,2,0,"else", 0, 2, 0);
	trans[1][10]	= settr(83,0,13,22,22,"reply = 1", 0, 2, 0);
	trans[1][13]	= settr(86,0,144,23,23,"cmConnectReply[id]!reply", 1, 4, 0);
	trans[1][14]	= settr(87,0,15,24,24,"((currStatus==7))", 0, 2, 0);
	trans[1][15]	= settr(88,0,16,25,25,"cmCommand[id]!3", 1, 5, 0);
	trans[1][16]	= settr(89,0,144,26,26,"currStatus = 6", 0, 2, 0);
	trans[1][17]	= settr(90,0,18,27,27,"((currStatus==6))", 0, 2, 0);
	trans[1][18]	= settr(91,0,25,28,28,"clientReport?reportStatus,id", 1, 506, 0);
	T = trans[1][25] = settr(98,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(98,0,19,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(98,0,22,0,0,"IF", 0, 2, 0);
	trans[1][19]	= settr(92,0,20,29,29,"((reportStatus==2))", 0, 2, 0);
	trans[1][20]	= settr(93,0,21,30,30,"cmCommand[id]!2", 1, 5, 0);
	trans[1][21]	= settr(94,0,144,31,31,"currStatus = 5", 0, 2, 0);
	trans[1][26]	= settr(99,0,144,1,0,".(goto)", 0, 2, 0);
	trans[1][22]	= settr(95,0,23,32,32,"((reportStatus==1))", 0, 2, 0);
	trans[1][23]	= settr(96,0,24,33,33,"connectedClients?id", 1, 510, 0);
	trans[1][24]	= settr(97,0,144,34,34,"currStatus = 8", 0, 2, 0);
	trans[1][27]	= settr(100,0,28,35,35,"((currStatus==5))", 0, 2, 0);
	trans[1][28]	= settr(101,0,36,36,36,"clientReport?reportStatus,id", 1, 506, 0);
	T = trans[1][36] = settr(109,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(109,0,29,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(109,0,32,0,0,"IF", 0, 2, 0);
	trans[1][29]	= settr(102,0,31,37,37,"((reportStatus==2))", 0, 2, 0); /* m: 30 -> 31,0 */
	reached1[30] = 1;
	trans[1][30]	= settr(0,0,0,0,0,"currStatus = 8",0,0,0);
	trans[1][31]	= settr(104,0,144,38,38,"cmAbleWcp!2", 1, 8, 0);
	trans[1][37]	= settr(110,0,144,1,0,".(goto)", 0, 2, 0);
	trans[1][32]	= settr(105,0,33,39,39,"((reportStatus==1))", 0, 2, 0);
	trans[1][33]	= settr(106,0,34,40,40,"connectedClients?id", 1, 510, 0);
	trans[1][34]	= settr(107,0,35,41,41,"currStatus = 8", 0, 2, 0);
	trans[1][35]	= settr(108,0,144,42,42,"cmAbleWcp!2", 1, 8, 0);
	trans[1][38]	= settr(111,0,39,43,43,"((nempty(wcpRequest)&&(currStatus==8)))", 1, 507, 0);
	trans[1][39]	= settr(112,0,40,44,44,"wcpRequest?button", 1, 507, 0);
	trans[1][40]	= settr(113,0,41,45,45,"currStatus = 4", 0, 2, 0);
	trans[1][41]	= settr(114,0,144,46,46,"cmAbleWcp!1", 1, 8, 0);
	trans[1][42]	= settr(115,0,49,47,47,"((currStatus==4))", 0, 2, 0); /* m: 43 -> 49,0 */
	reached1[43] = 1;
	trans[1][43]	= settr(0,0,0,0,0,"i = 0",0,0,0);
	trans[1][50]	= settr(123,0,49,1,0,".(goto)", 0, 2, 0);
	T = trans[1][49] = settr(122,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(122,0,44,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(122,0,47,0,0,"DO", 0, 2, 0);
	trans[1][44]	= settr(117,0,45,48,0,"((i<=(4-1)))", 0, 2, 0);
	trans[1][45]	= settr(118,0,46,49,49,"cmCommand[i]!3", 1, 5, 0);
	trans[1][46]	= settr(119,0,49,50,50,"i = (i+1)", 0, 2, 0);
	trans[1][47]	= settr(120,0,52,2,0,"else", 0, 2, 0);
	trans[1][48]	= settr(121,0,52,1,0,"goto :b2", 0, 2, 0); /* m: 52 -> 0,144 */
	reached1[52] = 1;
	trans[1][51]	= settr(124,0,52,1,0,"break", 0, 2, 0);
	trans[1][52]	= settr(125,0,144,51,51,"currStatus = 3", 0, 2, 0);
	trans[1][53]	= settr(126,0,67,52,52,"((currStatus==3))", 0, 2, 0); /* m: 54 -> 67,0 */
	reached1[54] = 1;
	trans[1][54]	= settr(0,0,0,0,0,"hasFail = 0",0,0,0);
	trans[1][55]	= settr(0,0,0,0,0,"i = 0",0,0,0);
	trans[1][68]	= settr(141,0,67,1,0,".(goto)", 0, 2, 0);
	T = trans[1][67] = settr(140,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(140,0,56,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(140,0,65,0,0,"DO", 0, 2, 0);
	trans[1][56]	= settr(129,0,57,53,0,"((i<=(4-1)))", 0, 2, 0);
	trans[1][57]	= settr(130,0,62,54,54,"clientReport?reportStatus,id", 1, 506, 0);
	T = trans[1][62] = settr(135,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(135,0,58,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(135,0,60,0,0,"IF", 0, 2, 0);
	trans[1][58]	= settr(131,0,67,55,55,"((reportStatus==1))", 0, 2, 0); /* m: 59 -> 67,0 */
	reached1[59] = 1;
	trans[1][59]	= settr(0,0,0,0,0,"hasFail = 1",0,0,0);
	trans[1][63]	= settr(136,0,64,1,0,".(goto)", 0, 2, 0); /* m: 64 -> 0,67 */
	reached1[64] = 1;
	trans[1][60]	= settr(133,0,61,2,0,"else", 0, 2, 0);
	trans[1][61]	= settr(134,0,67,56,56,"(1)", 0, 2, 0); /* m: 64 -> 67,0 */
	reached1[64] = 1;
	trans[1][64]	= settr(137,0,67,57,57,"i = (i+1)", 0, 2, 0);
	trans[1][65]	= settr(138,0,92,2,0,"else", 0, 2, 0);
	trans[1][66]	= settr(139,0,92,1,0,"goto :b3", 0, 2, 0);
	trans[1][69]	= settr(142,0,92,1,0,"break", 0, 2, 0);
	T = trans[1][92] = settr(165,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(165,0,70,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(165,0,81,0,0,"IF", 0, 2, 0);
	trans[1][70]	= settr(143,0,77,58,58,"(hasFail)", 0, 2, 0); /* m: 71 -> 77,0 */
	reached1[71] = 1;
	trans[1][71]	= settr(0,0,0,0,0,"i = 0",0,0,0);
	trans[1][78]	= settr(151,0,77,1,0,".(goto)", 0, 2, 0);
	T = trans[1][77] = settr(150,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(150,0,72,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(150,0,75,0,0,"DO", 0, 2, 0);
	trans[1][72]	= settr(145,0,73,59,0,"((i<=(4-1)))", 0, 2, 0);
	trans[1][73]	= settr(146,0,74,60,60,"cmCommand[i]!2", 1, 5, 0);
	trans[1][74]	= settr(147,0,77,61,61,"i = (i+1)", 0, 2, 0);
	trans[1][75]	= settr(148,0,80,2,0,"else", 0, 2, 0);
	trans[1][76]	= settr(149,0,80,1,0,"goto :b4", 0, 2, 0); /* m: 80 -> 0,144 */
	reached1[80] = 1;
	trans[1][79]	= settr(152,0,80,1,0,"break", 0, 2, 0);
	trans[1][80]	= settr(153,0,144,62,62,"currStatus = 1", 0, 2, 0);
	trans[1][93]	= settr(166,0,144,1,0,".(goto)", 0, 2, 0);
	trans[1][81]	= settr(154,0,82,2,0,"else", 0, 2, 0);
	trans[1][82]	= settr(155,0,88,63,63,"i = 0", 0, 2, 0);
	trans[1][89]	= settr(162,0,88,1,0,".(goto)", 0, 2, 0);
	T = trans[1][88] = settr(161,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(161,0,83,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(161,0,86,0,0,"DO", 0, 2, 0);
	trans[1][83]	= settr(156,0,84,64,0,"((i<=(4-1)))", 0, 2, 0);
	trans[1][84]	= settr(157,0,85,65,65,"cmCommand[i]!2", 1, 5, 0);
	trans[1][85]	= settr(158,0,88,66,66,"i = (i+1)", 0, 2, 0);
	trans[1][86]	= settr(159,0,91,2,0,"else", 0, 2, 0);
	trans[1][87]	= settr(160,0,91,1,0,"goto :b5", 0, 2, 0); /* m: 91 -> 0,144 */
	reached1[91] = 1;
	trans[1][90]	= settr(163,0,91,1,0,"break", 0, 2, 0);
	trans[1][91]	= settr(164,0,144,67,67,"currStatus = 2", 0, 2, 0);
	trans[1][94]	= settr(167,0,108,68,68,"((currStatus==2))", 0, 2, 0); /* m: 95 -> 108,0 */
	reached1[95] = 1;
	trans[1][95]	= settr(0,0,0,0,0,"hasFail = 0",0,0,0);
	trans[1][96]	= settr(0,0,0,0,0,"i = 0",0,0,0);
	trans[1][109]	= settr(182,0,108,1,0,".(goto)", 0, 2, 0);
	T = trans[1][108] = settr(181,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(181,0,97,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(181,0,106,0,0,"DO", 0, 2, 0);
	trans[1][97]	= settr(170,0,98,69,0,"((i<=(4-1)))", 0, 2, 0);
	trans[1][98]	= settr(171,0,103,70,70,"clientReport?reportStatus,id", 1, 506, 0);
	T = trans[1][103] = settr(176,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(176,0,99,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(176,0,101,0,0,"IF", 0, 2, 0);
	trans[1][99]	= settr(172,0,108,71,71,"((reportStatus==1))", 0, 2, 0); /* m: 100 -> 108,0 */
	reached1[100] = 1;
	trans[1][100]	= settr(0,0,0,0,0,"hasFail = 1",0,0,0);
	trans[1][104]	= settr(177,0,105,1,0,".(goto)", 0, 2, 0); /* m: 105 -> 0,108 */
	reached1[105] = 1;
	trans[1][101]	= settr(174,0,102,2,0,"else", 0, 2, 0);
	trans[1][102]	= settr(175,0,108,72,72,"(1)", 0, 2, 0); /* m: 105 -> 108,0 */
	reached1[105] = 1;
	trans[1][105]	= settr(178,0,108,73,73,"i = (i+1)", 0, 2, 0);
	trans[1][106]	= settr(179,0,117,2,0,"else", 0, 2, 0);
	trans[1][107]	= settr(180,0,117,1,0,"goto :b6", 0, 2, 0);
	trans[1][110]	= settr(183,0,117,1,0,"break", 0, 2, 0);
	T = trans[1][117] = settr(190,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(190,0,111,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(190,0,114,0,0,"IF", 0, 2, 0);
	trans[1][111]	= settr(184,0,113,74,74,"(hasFail)", 0, 2, 0); /* m: 112 -> 113,0 */
	reached1[112] = 1;
	trans[1][112]	= settr(0,0,0,0,0,"currStatus = 8",0,0,0);
	trans[1][113]	= settr(186,0,144,75,75,"cmAbleWcp!2", 1, 8, 0);
	trans[1][118]	= settr(191,0,144,1,0,".(goto)", 0, 2, 0);
	trans[1][114]	= settr(187,0,115,2,0,"else", 0, 2, 0);
	trans[1][115]	= settr(188,0,116,76,76,"currStatus = 8", 0, 2, 0);
	trans[1][116]	= settr(189,0,144,77,77,"cmAbleWcp!2", 1, 8, 0);
	trans[1][119]	= settr(192,0,133,78,78,"((currStatus==1))", 0, 2, 0); /* m: 120 -> 133,0 */
	reached1[120] = 1;
	trans[1][120]	= settr(0,0,0,0,0,"hasFail = 0",0,0,0);
	trans[1][121]	= settr(0,0,0,0,0,"i = 0",0,0,0);
	trans[1][134]	= settr(207,0,133,1,0,".(goto)", 0, 2, 0);
	T = trans[1][133] = settr(206,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(206,0,122,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(206,0,131,0,0,"DO", 0, 2, 0);
	trans[1][122]	= settr(195,0,123,79,0,"((i<=(4-1)))", 0, 2, 0);
	trans[1][123]	= settr(196,0,128,80,80,"clientReport?reportStatus,id", 1, 506, 0);
	T = trans[1][128] = settr(201,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(201,0,124,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(201,0,126,0,0,"IF", 0, 2, 0);
	trans[1][124]	= settr(197,0,133,81,81,"((reportStatus==1))", 0, 2, 0); /* m: 125 -> 133,0 */
	reached1[125] = 1;
	trans[1][125]	= settr(0,0,0,0,0,"hasFail = 1",0,0,0);
	trans[1][129]	= settr(202,0,130,1,0,".(goto)", 0, 2, 0); /* m: 130 -> 0,133 */
	reached1[130] = 1;
	trans[1][126]	= settr(199,0,127,2,0,"else", 0, 2, 0);
	trans[1][127]	= settr(200,0,133,82,82,"(1)", 0, 2, 0); /* m: 130 -> 133,0 */
	reached1[130] = 1;
	trans[1][130]	= settr(203,0,133,83,83,"i = (i+1)", 0, 2, 0);
	trans[1][131]	= settr(204,0,142,2,0,"else", 0, 2, 0);
	trans[1][132]	= settr(205,0,142,1,0,"goto :b7", 0, 2, 0);
	trans[1][135]	= settr(208,0,142,1,0,"break", 0, 2, 0);
	T = trans[1][142] = settr(215,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(215,0,136,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(215,0,139,0,0,"IF", 0, 2, 0);
	trans[1][136]	= settr(209,0,138,84,84,"(hasFail)", 0, 2, 0); /* m: 137 -> 138,0 */
	reached1[137] = 1;
	trans[1][137]	= settr(0,0,0,0,0,"currStatus = 8",0,0,0);
	trans[1][138]	= settr(211,0,144,85,85,"cmAbleWcp!2", 1, 8, 0);
	trans[1][143]	= settr(216,0,144,1,0,".(goto)", 0, 2, 0);
	trans[1][139]	= settr(212,0,140,2,0,"else", 0, 2, 0);
	trans[1][140]	= settr(213,0,141,86,86,"currStatus = 8", 0, 2, 0);
	trans[1][141]	= settr(214,0,144,87,87,"cmAbleWcp!2", 1, 8, 0);
	trans[1][146]	= settr(219,0,147,1,0,"break", 0, 2, 0);
	trans[1][147]	= settr(220,0,0,88,88,"-end-", 0, 3500, 0);

	/* proctype 0: Client */

	trans[0] = (Trans **) emalloc(75*sizeof(Trans *));

	trans[0][72]	= settr(71,0,71,1,0,".(goto)", 0, 2, 0);
	T = trans[0][71] = settr(70,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(70,0,1,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(70,0,11,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(70,0,14,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(70,0,25,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(70,0,35,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(70,0,37,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(70,0,40,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(70,0,51,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(70,0,61,0,0,"DO", 0, 2, 0);
	trans[0][1]	= settr(0,0,2,89,0,"(!(connected))", 0, 2, 0);
	trans[0][2]	= settr(1,0,3,90,90,"cmConnectRequest!id", 1, 3, 0);
	trans[0][3]	= settr(2,0,9,91,91,"cmConnectReply[id]?reply", 1, 504, 0);
	T = trans[0][9] = settr(8,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(8,0,4,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(8,0,7,0,0,"IF", 0, 2, 0);
	trans[0][4]	= settr(3,0,71,92,92,"((reply==2))", 0, 2, 0); /* m: 5 -> 71,0 */
	reached0[5] = 1;
	trans[0][5]	= settr(0,0,0,0,0,"currStatus = 7",0,0,0);
	trans[0][6]	= settr(0,0,0,0,0,"connected = 1",0,0,0);
	trans[0][10]	= settr(9,0,71,1,0,".(goto)", 0, 2, 0);
	trans[0][7]	= settr(6,0,8,2,0,"else", 0, 2, 0);
	trans[0][8]	= settr(7,0,71,1,0,"(1)", 0, 2, 0);
	trans[0][11]	= settr(10,0,12,93,93,"((currStatus==7))", 0, 2, 0);
	trans[0][12]	= settr(11,0,13,94,94,"cmCommand[id]?3", 1, 505, 0);
	trans[0][13]	= settr(12,0,71,95,95,"currStatus = 6", 0, 2, 0);
	trans[0][14]	= settr(13,0,23,96,96,"((currStatus==6))", 0, 2, 0);
	T = trans[0][23] = settr(22,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(22,0,15,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(22,0,19,0,0,"IF", 0, 2, 0);
	trans[0][15]	= settr(14,0,16,97,0,"(getInfoSuccess)", 0, 2, 0);
	trans[0][16]	= settr(15,0,17,98,98,"clientReport!2,id", 1, 6, 0);
	trans[0][17]	= settr(16,0,18,99,99,"cmCommand[id]?2", 1, 505, 0);
	trans[0][18]	= settr(17,0,71,100,100,"currStatus = 5", 0, 2, 0);
	trans[0][24]	= settr(23,0,71,1,0,".(goto)", 0, 2, 0);
	trans[0][19]	= settr(18,0,20,2,0,"else", 0, 2, 0);
	trans[0][20]	= settr(19,0,21,101,101,"clientReport!1,id", 1, 6, 0);
	trans[0][21]	= settr(20,0,71,102,102,"currStatus = 8", 0, 2, 0); /* m: 22 -> 0,71 */
	reached0[22] = 1;
	trans[0][22]	= settr(0,0,0,0,0,"connected = 0",0,0,0);
	trans[0][25]	= settr(24,0,33,103,103,"((currStatus==5))", 0, 2, 0);
	T = trans[0][33] = settr(32,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(32,0,26,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(32,0,29,0,0,"IF", 0, 2, 0);
	trans[0][26]	= settr(25,0,27,104,0,"(useNewInfoSuccess)", 0, 2, 0);
	trans[0][27]	= settr(26,0,28,105,105,"clientReport!2,id", 1, 6, 0);
	trans[0][28]	= settr(27,0,71,106,106,"currStatus = 8", 0, 2, 0);
	trans[0][34]	= settr(33,0,71,1,0,".(goto)", 0, 2, 0);
	trans[0][29]	= settr(28,0,30,2,0,"else", 0, 2, 0);
	trans[0][30]	= settr(29,0,31,107,107,"clientReport!1,id", 1, 6, 0);
	trans[0][31]	= settr(30,0,71,108,108,"connected = 0", 0, 2, 0); /* m: 32 -> 0,71 */
	reached0[32] = 1;
	trans[0][32]	= settr(0,0,0,0,0,"currStatus = 8",0,0,0);
	trans[0][35]	= settr(34,0,36,109,109,"(((nempty(wcpRequest)&&(currStatus==8))&&connected))", 1, 507, 0);
	trans[0][36]	= settr(35,0,71,110,110,"currStatus = 4", 0, 2, 0);
	trans[0][37]	= settr(36,0,38,111,111,"(((currStatus==4)&&connected))", 0, 2, 0);
	trans[0][38]	= settr(37,0,39,112,112,"cmCommand[id]?3", 1, 505, 0);
	trans[0][39]	= settr(38,0,71,113,113,"currStatus = 3", 0, 2, 0);
	trans[0][40]	= settr(39,0,49,114,114,"(((currStatus==3)&&connected))", 0, 2, 0);
	T = trans[0][49] = settr(48,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(48,0,41,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(48,0,45,0,0,"IF", 0, 2, 0);
	trans[0][41]	= settr(40,0,42,115,0,"(getInfoSuccess)", 0, 2, 0);
	trans[0][42]	= settr(41,0,43,116,116,"clientReport!2,id", 1, 6, 0);
	trans[0][43]	= settr(42,0,44,117,117,"cmCommand[id]?2", 1, 505, 0);
	trans[0][44]	= settr(43,0,71,118,118,"currStatus = 2", 0, 2, 0);
	trans[0][50]	= settr(49,0,71,1,0,".(goto)", 0, 2, 0);
	trans[0][45]	= settr(44,0,46,2,0,"else", 0, 2, 0);
	trans[0][46]	= settr(45,0,47,119,119,"clientReport!1,id", 1, 6, 0);
	trans[0][47]	= settr(46,0,48,120,120,"cmCommand[id]?1", 1, 505, 0);
	trans[0][48]	= settr(47,0,71,121,121,"currStatus = 1", 0, 2, 0);
	trans[0][51]	= settr(50,0,59,122,122,"(((currStatus==2)&&connected))", 0, 2, 0);
	T = trans[0][59] = settr(58,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(58,0,52,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(58,0,55,0,0,"IF", 0, 2, 0);
	trans[0][52]	= settr(51,0,53,123,0,"(useNewInfoSuccess)", 0, 2, 0);
	trans[0][53]	= settr(52,0,54,124,124,"clientReport!2,id", 1, 6, 0);
	trans[0][54]	= settr(53,0,71,125,125,"currStatus = 8", 0, 2, 0);
	trans[0][60]	= settr(59,0,71,1,0,".(goto)", 0, 2, 0);
	trans[0][55]	= settr(54,0,56,2,0,"else", 0, 2, 0);
	trans[0][56]	= settr(55,0,57,126,126,"clientReport!1,id", 1, 6, 0);
	trans[0][57]	= settr(56,0,71,127,127,"connected = 0", 0, 2, 0); /* m: 58 -> 0,71 */
	reached0[58] = 1;
	trans[0][58]	= settr(0,0,0,0,0,"currStatus = 8",0,0,0);
	trans[0][61]	= settr(60,0,69,128,128,"(((currStatus==1)&&connected))", 0, 2, 0);
	T = trans[0][69] = settr(68,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(68,0,62,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(68,0,65,0,0,"IF", 0, 2, 0);
	trans[0][62]	= settr(61,0,63,129,0,"(useOldInfoSuccess)", 0, 2, 0);
	trans[0][63]	= settr(62,0,64,130,130,"clientReport!2,id", 1, 6, 0);
	trans[0][64]	= settr(63,0,71,131,131,"currStatus = 8", 0, 2, 0);
	trans[0][70]	= settr(69,0,71,1,0,".(goto)", 0, 2, 0);
	trans[0][65]	= settr(64,0,66,2,0,"else", 0, 2, 0);
	trans[0][66]	= settr(65,0,67,132,132,"clientReport!1,id", 1, 6, 0);
	trans[0][67]	= settr(66,0,71,133,133,"connected = 0", 0, 2, 0); /* m: 68 -> 0,71 */
	reached0[68] = 1;
	trans[0][68]	= settr(0,0,0,0,0,"currStatus = 8",0,0,0);
	trans[0][73]	= settr(72,0,74,1,0,"break", 0, 2, 0);
	trans[0][74]	= settr(73,0,0,134,134,"-end-", 0, 3500, 0);
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

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

	T = trans[ 3][7] = settr(447,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(447,2,1,0,0,"ATOMIC", 0, 2, 0);
	trans[3][1]	= settr(441,2,2,3,3,"(run Client(0))", 0, 2, 0);
	trans[3][2]	= settr(442,2,3,4,4,"(run Client(1))", 0, 2, 0);
	trans[3][3]	= settr(443,2,4,5,5,"(run Client(2))", 0, 2, 0);
	trans[3][4]	= settr(444,2,5,6,6,"(run Client(3))", 0, 2, 0);
	trans[3][5]	= settr(445,2,6,7,7,"(run CommsManager())", 0, 2, 0);
	trans[3][6]	= settr(446,0,8,8,8,"(run ControlPanel())", 0, 2, 0);
	trans[3][8]	= settr(448,0,0,9,9,"-end-", 0, 3500, 0);

	/* proctype 2: ControlPanel */

	trans[2] = (Trans **) emalloc(21*sizeof(Trans *));

	trans[2][18]	= settr(438,0,17,1,0,".(goto)", 0, 2, 0);
	T = trans[2][17] = settr(437,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(437,0,1,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(437,0,12,0,0,"DO", 0, 2, 0);
	trans[2][1]	= settr(421,0,2,10,0,"(nempty(cmAbleWcp))", 1, 509, 0);
	trans[2][2]	= settr(422,0,10,11,11,"cmAbleWcp?ability", 1, 509, 0);
	T = trans[2][10] = settr(430,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(430,0,3,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(430,0,7,0,0,"IF", 0, 2, 0);
	trans[2][3]	= settr(423,0,17,12,12,"((ability==2))", 0, 2, 0); /* m: 4 -> 17,0 */
	reached2[4] = 1;
	trans[2][4]	= settr(0,0,0,0,0,"disabled = 0",0,0,0);
	trans[2][5]	= settr(0,0,0,0,0,"isUpdating = 0",0,0,0);
	trans[2][6]	= settr(0,0,0,0,0,"printf('ControlPanel: enabled\\n')",0,0,0);
	trans[2][11]	= settr(431,0,17,1,0,".(goto)", 0, 2, 0);
	trans[2][7]	= settr(427,0,8,2,0,"else", 0, 2, 0);
	trans[2][8]	= settr(428,0,17,13,13,"disabled = 1", 0, 2, 0); /* m: 9 -> 0,17 */
	reached2[9] = 1;
	trans[2][9]	= settr(0,0,0,0,0,"printf('ControlPanel: disabled\\n')",0,0,0);
	trans[2][12]	= settr(432,0,13,14,14,"(((!(disabled)&&!(isUpdating))&&empty(wcpRequestCm)))", 1, 1007, 0);
	trans[2][13]	= settr(433,0,16,15,15,"printf('ControlPanel: beginning manual update\\n')", 0, 2, 0); /* m: 14 -> 0,16 */
	reached2[14] = 1;
	trans[2][14]	= settr(0,0,0,0,0,"isUpdating = 1",0,0,0);
	trans[2][15]	= settr(0,0,0,0,0,"button = 1",0,0,0);
	trans[2][16]	= settr(436,0,17,16,16,"wcpRequestCm!button", 1, 7, 0);
	trans[2][19]	= settr(439,0,20,1,0,"break", 0, 2, 0);
	trans[2][20]	= settr(440,0,0,17,17,"-end-", 0, 3500, 0);

	/* proctype 1: CommsManager */

	trans[1] = (Trans **) emalloc(288*sizeof(Trans *));

	trans[1][1]	= settr(134,0,7,18,18,"i = 0", 0, 2, 0);
	trans[1][8]	= settr(141,0,7,1,0,".(goto)", 0, 2, 0);
	T = trans[1][7] = settr(140,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(140,0,2,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(140,0,5,0,0,"DO", 0, 2, 0);
	trans[1][2]	= settr(135,0,7,19,19,"((i<=(4-1)))", 0, 2, 0); /* m: 3 -> 7,0 */
	reached1[3] = 1;
	trans[1][3]	= settr(0,0,0,0,0,"connectedClients[i] = 1",0,0,0);
	trans[1][4]	= settr(0,0,0,0,0,"i = (i+1)",0,0,0);
	trans[1][5]	= settr(138,0,10,2,0,"else", 0, 2, 0);
	trans[1][6]	= settr(139,0,10,1,0,"goto :b1", 0, 2, 0); /* m: 10 -> 0,284 */
	reached1[10] = 1;
	trans[1][9]	= settr(142,0,10,1,0,"break", 0, 2, 0);
	trans[1][10]	= settr(143,0,284,20,20,"currStatus = 8", 0, 2, 0); /* m: 11 -> 0,284 */
	reached1[11] = 1;
	trans[1][11]	= settr(0,0,0,0,0,"reportStatus = 0",0,0,0);
	trans[1][12]	= settr(0,0,0,0,0,"button = 0",0,0,0);
	trans[1][285]	= settr(418,0,284,1,0,".(goto)", 0, 2, 0);
	T = trans[1][284] = settr(417,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(417,0,13,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(417,0,28,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(417,0,33,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(417,0,46,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(417,0,60,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(417,0,80,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(417,0,98,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(417,0,158,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(417,0,221,0,0,"DO", 0, 2, 0);
	trans[1][13]	= settr(146,0,14,21,0,"((nempty(cmConnectRequest)&&(currStatus==8)))", 1, 503, 0);
	trans[1][14]	= settr(147,0,15,22,22,"cmConnectRequest?id", 1, 503, 0);
	trans[1][15]	= settr(148,0,25,23,23,"printf('CommsManager: connection request received from client %d\\n',(id+1))", 0, 2, 0); /* m: 16 -> 0,25 */
	reached1[16] = 1;
	trans[1][16]	= settr(0,0,0,0,0,"reply = 0",0,0,0);
	T = trans[1][25] = settr(158,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(158,0,17,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(158,0,23,0,0,"IF", 0, 2, 0);
	trans[1][17]	= settr(150,0,20,24,24,"((currStatus==8))", 0, 2, 0); /* m: 18 -> 20,0 */
	reached1[18] = 1;
	trans[1][18]	= settr(0,0,0,0,0,"reply = 2",0,0,0);
	trans[1][19]	= settr(0,0,0,0,0,"currStatus = 7",0,0,0);
	trans[1][20]	= settr(153,0,21,25,25,"cmStatus[id]!7", 1, 10, 0);
	trans[1][21]	= settr(154,0,22,26,26,"connectedClients[id] = 1", 0, 2, 0);
	trans[1][22]	= settr(155,0,27,27,27,"cmAbleWcp!1", 1, 9, 0);
	trans[1][26]	= settr(159,0,27,1,0,".(goto)", 0, 2, 0);
	trans[1][23]	= settr(156,0,24,2,0,"else", 0, 2, 0);
	trans[1][24]	= settr(157,0,27,28,28,"reply = 1", 0, 2, 0);
	trans[1][27]	= settr(160,0,284,29,29,"cmConnectReply[id]!reply", 1, 4, 0);
	trans[1][28]	= settr(161,0,30,30,30,"((currStatus==7))", 0, 2, 0); /* m: 29 -> 30,0 */
	reached1[29] = 1;
	trans[1][29]	= settr(0,0,0,0,0,"printf('CommsManager: pre-initializing\\n')",0,0,0);
	trans[1][30]	= settr(163,0,31,31,31,"cmCommand[id]!5", 1, 5, 0);
	trans[1][31]	= settr(164,0,32,32,32,"currStatus = 6", 0, 2, 0);
	trans[1][32]	= settr(165,0,284,33,33,"cmStatus[id]!6", 1, 10, 0);
	trans[1][33]	= settr(166,0,35,34,34,"((currStatus==6))", 0, 2, 0); /* m: 34 -> 35,0 */
	reached1[34] = 1;
	trans[1][34]	= settr(0,0,0,0,0,"printf('CommsManager: initializing\\n')",0,0,0);
	trans[1][35]	= settr(168,0,44,35,35,"clientReport?reportStatus,id", 1, 506, 0);
	T = trans[1][44] = settr(177,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(177,0,36,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(177,0,40,0,0,"IF", 0, 2, 0);
	trans[1][36]	= settr(169,0,37,36,36,"((reportStatus==2))", 0, 2, 0);
	trans[1][37]	= settr(170,0,38,37,37,"cmCommand[id]!4", 1, 5, 0);
	trans[1][38]	= settr(171,0,39,38,38,"currStatus = 5", 0, 2, 0);
	trans[1][39]	= settr(172,0,284,39,39,"cmStatus[id]!5", 1, 10, 0);
	trans[1][45]	= settr(178,0,284,1,0,".(goto)", 0, 2, 0);
	trans[1][40]	= settr(173,0,43,40,40,"((reportStatus==1))", 0, 2, 0); /* m: 41 -> 43,0 */
	reached1[41] = 1;
	trans[1][41]	= settr(0,0,0,0,0,"connectedClients[id] = 0",0,0,0);
	trans[1][42]	= settr(0,0,0,0,0,"currStatus = 8",0,0,0);
	trans[1][43]	= settr(176,0,284,41,41,"cmStatus[id]!8", 1, 10, 0);
	trans[1][46]	= settr(179,0,48,42,42,"((currStatus==5))", 0, 2, 0); /* m: 47 -> 48,0 */
	reached1[47] = 1;
	trans[1][47]	= settr(0,0,0,0,0,"printf('CommsManager: post-initializing\\n')",0,0,0);
	trans[1][48]	= settr(181,0,58,43,43,"clientReport?reportStatus,id", 1, 506, 0);
	T = trans[1][58] = settr(191,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(191,0,49,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(191,0,53,0,0,"IF", 0, 2, 0);
	trans[1][49]	= settr(182,0,51,44,44,"((reportStatus==2))", 0, 2, 0); /* m: 50 -> 51,0 */
	reached1[50] = 1;
	trans[1][50]	= settr(0,0,0,0,0,"currStatus = 8",0,0,0);
	trans[1][51]	= settr(184,0,52,45,45,"cmStatus[id]!8", 1, 10, 0);
	trans[1][52]	= settr(185,0,284,46,46,"cmAbleWcp!2", 1, 9, 0);
	trans[1][59]	= settr(192,0,284,1,0,".(goto)", 0, 2, 0);
	trans[1][53]	= settr(186,0,56,47,47,"((reportStatus==1))", 0, 2, 0); /* m: 54 -> 56,0 */
	reached1[54] = 1;
	trans[1][54]	= settr(0,0,0,0,0,"connectedClients[id] = 0",0,0,0);
	trans[1][55]	= settr(0,0,0,0,0,"currStatus = 8",0,0,0);
	trans[1][56]	= settr(189,0,57,48,48,"cmStatus[id]!8", 1, 10, 0);
	trans[1][57]	= settr(190,0,284,49,49,"cmAbleWcp!2", 1, 9, 0);
	trans[1][60]	= settr(193,0,61,50,50,"((nempty(wcpRequestCm)&&(currStatus==8)))", 1, 507, 0);
	trans[1][61]	= settr(194,0,62,51,51,"wcpRequestCm?button", 1, 507, 0);
	trans[1][62]	= settr(195,0,75,52,52,"printf('CommsManager: manual update request received\\n')", 0, 2, 0); /* m: 63 -> 0,75 */
	reached1[63] = 1;
	trans[1][63]	= settr(0,0,0,0,0,"i = 0",0,0,0);
	trans[1][76]	= settr(209,0,75,1,0,".(goto)", 0, 2, 0);
	T = trans[1][75] = settr(208,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(208,0,64,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(208,0,73,0,0,"DO", 0, 2, 0);
	trans[1][64]	= settr(197,0,70,53,0,"((i<=(4-1)))", 0, 2, 0);
	T = trans[1][70] = settr(203,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(203,0,65,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(203,0,68,0,0,"IF", 0, 2, 0);
	trans[1][65]	= settr(198,0,66,54,0,"(connectedClients[i])", 0, 2, 0);
	trans[1][66]	= settr(199,0,67,55,55,"wcpRequestClient[i]!button", 1, 8, 0);
	trans[1][67]	= settr(200,0,72,56,56,"cmStatus[i]!4", 1, 10, 0);
	trans[1][71]	= settr(204,0,72,1,0,".(goto)", 0, 2, 0); /* m: 72 -> 0,75 */
	reached1[72] = 1;
	trans[1][68]	= settr(201,0,69,2,0,"else", 0, 2, 0);
	trans[1][69]	= settr(202,0,75,57,57,"(1)", 0, 2, 0); /* m: 72 -> 75,0 */
	reached1[72] = 1;
	trans[1][72]	= settr(205,0,75,58,58,"i = (i+1)", 0, 2, 0);
	trans[1][73]	= settr(206,0,78,2,0,"else", 0, 2, 0);
	trans[1][74]	= settr(207,0,78,1,0,"goto :b3", 0, 2, 0); /* m: 78 -> 0,79 */
	reached1[78] = 1;
	trans[1][77]	= settr(210,0,78,1,0,"break", 0, 2, 0);
	trans[1][78]	= settr(211,0,79,59,59,"currStatus = 4", 0, 2, 0);
	trans[1][79]	= settr(212,0,284,60,60,"cmAbleWcp!1", 1, 9, 0);
	trans[1][80]	= settr(213,0,94,61,61,"((currStatus==4))", 0, 2, 0); /* m: 81 -> 94,0 */
	reached1[81] = 1;
	trans[1][81]	= settr(0,0,0,0,0,"printf('CommsManager: pre-updating\\n')",0,0,0);
	trans[1][82]	= settr(0,0,0,0,0,"i = 0",0,0,0);
	trans[1][95]	= settr(228,0,94,1,0,".(goto)", 0, 2, 0);
	T = trans[1][94] = settr(227,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(227,0,83,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(227,0,92,0,0,"DO", 0, 2, 0);
	trans[1][83]	= settr(216,0,89,62,0,"((i<=(4-1)))", 0, 2, 0);
	T = trans[1][89] = settr(222,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(222,0,84,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(222,0,87,0,0,"IF", 0, 2, 0);
	trans[1][84]	= settr(217,0,85,63,0,"(connectedClients[i])", 0, 2, 0);
	trans[1][85]	= settr(218,0,86,64,64,"cmCommand[i]!5", 1, 5, 0);
	trans[1][86]	= settr(219,0,91,65,65,"cmStatus[i]!3", 1, 10, 0);
	trans[1][90]	= settr(223,0,91,1,0,".(goto)", 0, 2, 0); /* m: 91 -> 0,94 */
	reached1[91] = 1;
	trans[1][87]	= settr(220,0,88,2,0,"else", 0, 2, 0);
	trans[1][88]	= settr(221,0,94,66,66,"(1)", 0, 2, 0); /* m: 91 -> 94,0 */
	reached1[91] = 1;
	trans[1][91]	= settr(224,0,94,67,67,"i = (i+1)", 0, 2, 0);
	trans[1][92]	= settr(225,0,97,2,0,"else", 0, 2, 0);
	trans[1][93]	= settr(226,0,97,1,0,"goto :b4", 0, 2, 0); /* m: 97 -> 0,284 */
	reached1[97] = 1;
	trans[1][96]	= settr(229,0,97,1,0,"break", 0, 2, 0);
	trans[1][97]	= settr(230,0,284,68,68,"currStatus = 3", 0, 2, 0);
	trans[1][98]	= settr(231,0,119,69,69,"((currStatus==3))", 0, 2, 0); /* m: 99 -> 119,0 */
	reached1[99] = 1;
	trans[1][99]	= settr(0,0,0,0,0,"printf('CommsManager: updating\\n')",0,0,0);
	trans[1][100]	= settr(0,0,0,0,0,"hasFail = 0",0,0,0);
	trans[1][101]	= settr(0,0,0,0,0,"i = 0",0,0,0);
	trans[1][120]	= settr(253,0,119,1,0,".(goto)", 0, 2, 0);
	T = trans[1][119] = settr(252,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(252,0,102,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(252,0,117,0,0,"DO", 0, 2, 0);
	trans[1][102]	= settr(235,0,114,70,0,"((i<=(4-1)))", 0, 2, 0);
	T = trans[1][114] = settr(247,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(247,0,103,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(247,0,112,0,0,"IF", 0, 2, 0);
	trans[1][103]	= settr(236,0,104,71,0,"(connectedClients[i])", 0, 2, 0);
	trans[1][104]	= settr(237,0,110,72,72,"clientReport?reportStatus,id", 1, 506, 0);
	T = trans[1][110] = settr(243,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(243,0,105,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(243,0,108,0,0,"IF", 0, 2, 0);
	trans[1][105]	= settr(238,0,119,73,73,"((reportStatus==1))", 0, 2, 0); /* m: 106 -> 119,0 */
	reached1[106] = 1;
	trans[1][106]	= settr(0,0,0,0,0,"hasFail = 1",0,0,0);
	trans[1][107]	= settr(0,0,0,0,0,"printf('CommsManager: update failed by Client %d\\n',(i+1))",0,0,0);
	trans[1][111]	= settr(244,0,116,1,0,".(goto)", 0, 2, 0); /* m: 116 -> 0,119 */
	reached1[116] = 1;
	trans[1][108]	= settr(241,0,109,2,0,"else", 0, 2, 0);
	trans[1][109]	= settr(242,0,119,74,74,"(1)", 0, 2, 0); /* m: 116 -> 119,0 */
	reached1[116] = 1;
	trans[1][115]	= settr(248,0,116,1,0,".(goto)", 0, 2, 0); /* m: 116 -> 0,119 */
	reached1[116] = 1;
	trans[1][112]	= settr(245,0,113,2,0,"else", 0, 2, 0);
	trans[1][113]	= settr(246,0,119,75,75,"(1)", 0, 2, 0); /* m: 116 -> 119,0 */
	reached1[116] = 1;
	trans[1][116]	= settr(249,0,119,76,76,"i = (i+1)", 0, 2, 0);
	trans[1][117]	= settr(250,0,156,2,0,"else", 0, 2, 0);
	trans[1][118]	= settr(251,0,156,1,0,"goto :b5", 0, 2, 0);
	trans[1][121]	= settr(254,0,156,1,0,"break", 0, 2, 0);
	T = trans[1][156] = settr(289,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(289,0,122,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(289,0,139,0,0,"IF", 0, 2, 0);
	trans[1][122]	= settr(255,0,135,77,77,"(hasFail)", 0, 2, 0); /* m: 123 -> 135,0 */
	reached1[123] = 1;
	trans[1][123]	= settr(0,0,0,0,0,"i = 0",0,0,0);
	trans[1][136]	= settr(269,0,135,1,0,".(goto)", 0, 2, 0);
	T = trans[1][135] = settr(268,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(268,0,124,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(268,0,133,0,0,"DO", 0, 2, 0);
	trans[1][124]	= settr(257,0,130,78,0,"((i<=(4-1)))", 0, 2, 0);
	T = trans[1][130] = settr(263,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(263,0,125,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(263,0,128,0,0,"IF", 0, 2, 0);
	trans[1][125]	= settr(258,0,126,79,0,"(connectedClients[i])", 0, 2, 0);
	trans[1][126]	= settr(259,0,127,80,80,"cmCommand[i]!3", 1, 5, 0);
	trans[1][127]	= settr(260,0,132,81,81,"cmStatus[i]!1", 1, 10, 0);
	trans[1][131]	= settr(264,0,132,1,0,".(goto)", 0, 2, 0); /* m: 132 -> 0,135 */
	reached1[132] = 1;
	trans[1][128]	= settr(261,0,129,2,0,"else", 0, 2, 0);
	trans[1][129]	= settr(262,0,135,82,82,"(1)", 0, 2, 0); /* m: 132 -> 135,0 */
	reached1[132] = 1;
	trans[1][132]	= settr(265,0,135,83,83,"i = (i+1)", 0, 2, 0);
	trans[1][133]	= settr(266,0,138,2,0,"else", 0, 2, 0);
	trans[1][134]	= settr(267,0,138,1,0,"goto :b6", 0, 2, 0); /* m: 138 -> 0,284 */
	reached1[138] = 1;
	trans[1][137]	= settr(270,0,138,1,0,"break", 0, 2, 0);
	trans[1][138]	= settr(271,0,284,84,84,"currStatus = 1", 0, 2, 0);
	trans[1][157]	= settr(290,0,284,1,0,".(goto)", 0, 2, 0);
	trans[1][139]	= settr(272,0,140,2,0,"else", 0, 2, 0);
	trans[1][140]	= settr(273,0,152,85,85,"i = 0", 0, 2, 0);
	trans[1][153]	= settr(286,0,152,1,0,".(goto)", 0, 2, 0);
	T = trans[1][152] = settr(285,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(285,0,141,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(285,0,150,0,0,"DO", 0, 2, 0);
	trans[1][141]	= settr(274,0,147,86,0,"((i<=(4-1)))", 0, 2, 0);
	T = trans[1][147] = settr(280,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(280,0,142,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(280,0,145,0,0,"IF", 0, 2, 0);
	trans[1][142]	= settr(275,0,143,87,0,"(connectedClients[i])", 0, 2, 0);
	trans[1][143]	= settr(276,0,144,88,88,"cmCommand[i]!4", 1, 5, 0);
	trans[1][144]	= settr(277,0,149,89,89,"cmStatus[i]!2", 1, 10, 0);
	trans[1][148]	= settr(281,0,149,1,0,".(goto)", 0, 2, 0); /* m: 149 -> 0,152 */
	reached1[149] = 1;
	trans[1][145]	= settr(278,0,146,2,0,"else", 0, 2, 0);
	trans[1][146]	= settr(279,0,152,90,90,"(1)", 0, 2, 0); /* m: 149 -> 152,0 */
	reached1[149] = 1;
	trans[1][149]	= settr(282,0,152,91,91,"i = (i+1)", 0, 2, 0);
	trans[1][150]	= settr(283,0,155,2,0,"else", 0, 2, 0);
	trans[1][151]	= settr(284,0,155,1,0,"goto :b7", 0, 2, 0); /* m: 155 -> 0,284 */
	reached1[155] = 1;
	trans[1][154]	= settr(287,0,155,1,0,"break", 0, 2, 0);
	trans[1][155]	= settr(288,0,284,92,92,"currStatus = 2", 0, 2, 0);
	trans[1][158]	= settr(291,0,179,93,93,"((currStatus==2))", 0, 2, 0); /* m: 159 -> 179,0 */
	reached1[159] = 1;
	trans[1][159]	= settr(0,0,0,0,0,"printf('CommsManager: post-updating\\n')",0,0,0);
	trans[1][160]	= settr(0,0,0,0,0,"hasFail = 0",0,0,0);
	trans[1][161]	= settr(0,0,0,0,0,"i = 0",0,0,0);
	trans[1][180]	= settr(313,0,179,1,0,".(goto)", 0, 2, 0);
	T = trans[1][179] = settr(312,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(312,0,162,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(312,0,177,0,0,"DO", 0, 2, 0);
	trans[1][162]	= settr(295,0,174,94,0,"((i<=(4-1)))", 0, 2, 0);
	T = trans[1][174] = settr(307,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(307,0,163,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(307,0,172,0,0,"IF", 0, 2, 0);
	trans[1][163]	= settr(296,0,164,95,0,"(connectedClients[i])", 0, 2, 0);
	trans[1][164]	= settr(297,0,170,96,96,"clientReport?reportStatus,id", 1, 506, 0);
	T = trans[1][170] = settr(303,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(303,0,165,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(303,0,168,0,0,"IF", 0, 2, 0);
	trans[1][165]	= settr(298,0,179,97,97,"((reportStatus==1))", 0, 2, 0); /* m: 166 -> 179,0 */
	reached1[166] = 1;
	trans[1][166]	= settr(0,0,0,0,0,"hasFail = 1",0,0,0);
	trans[1][167]	= settr(0,0,0,0,0,"printf('CommsManager: post-update failed by Client %d\\n',(i+1))",0,0,0);
	trans[1][171]	= settr(304,0,176,1,0,".(goto)", 0, 2, 0); /* m: 176 -> 0,179 */
	reached1[176] = 1;
	trans[1][168]	= settr(301,0,169,2,0,"else", 0, 2, 0);
	trans[1][169]	= settr(302,0,179,98,98,"(1)", 0, 2, 0); /* m: 176 -> 179,0 */
	reached1[176] = 1;
	trans[1][175]	= settr(308,0,176,1,0,".(goto)", 0, 2, 0); /* m: 176 -> 0,179 */
	reached1[176] = 1;
	trans[1][172]	= settr(305,0,173,2,0,"else", 0, 2, 0);
	trans[1][173]	= settr(306,0,179,99,99,"(1)", 0, 2, 0); /* m: 176 -> 179,0 */
	reached1[176] = 1;
	trans[1][176]	= settr(309,0,179,100,100,"i = (i+1)", 0, 2, 0);
	trans[1][177]	= settr(310,0,219,2,0,"else", 0, 2, 0);
	trans[1][178]	= settr(311,0,219,1,0,"goto :b8", 0, 2, 0);
	trans[1][181]	= settr(314,0,219,1,0,"break", 0, 2, 0);
	T = trans[1][219] = settr(352,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(352,0,182,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(352,0,201,0,0,"IF", 0, 2, 0);
	trans[1][182]	= settr(315,0,197,101,101,"(hasFail)", 0, 2, 0); /* m: 183 -> 197,0 */
	reached1[183] = 1;
	trans[1][183]	= settr(0,0,0,0,0,"currStatus = 8",0,0,0);
	trans[1][184]	= settr(0,0,0,0,0,"i = 0",0,0,0);
	trans[1][198]	= settr(331,0,197,1,0,".(goto)", 0, 2, 0);
	T = trans[1][197] = settr(330,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(330,0,185,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(330,0,195,0,0,"DO", 0, 2, 0);
	trans[1][185]	= settr(318,0,192,102,0,"((i<=(4-1)))", 0, 2, 0);
	T = trans[1][192] = settr(325,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(325,0,186,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(325,0,190,0,0,"IF", 0, 2, 0);
	trans[1][186]	= settr(319,0,187,103,0,"(connectedClients[i])", 0, 2, 0);
	trans[1][187]	= settr(320,0,188,104,104,"cmStatus[i]!8", 1, 10, 0);
	trans[1][188]	= settr(321,0,189,105,105,"connectedClients[i] = 0", 0, 2, 0);
	trans[1][189]	= settr(322,0,194,106,106,"cmCommand[i]!2", 1, 5, 0);
	trans[1][193]	= settr(326,0,194,1,0,".(goto)", 0, 2, 0); /* m: 194 -> 0,197 */
	reached1[194] = 1;
	trans[1][190]	= settr(323,0,191,2,0,"else", 0, 2, 0);
	trans[1][191]	= settr(324,0,197,107,107,"(1)", 0, 2, 0); /* m: 194 -> 197,0 */
	reached1[194] = 1;
	trans[1][194]	= settr(327,0,197,108,108,"i = (i+1)", 0, 2, 0);
	trans[1][195]	= settr(328,0,200,2,0,"else", 0, 2, 0);
	trans[1][196]	= settr(329,0,200,1,0,"goto :b9", 0, 2, 0);
	trans[1][199]	= settr(332,0,200,1,0,"break", 0, 2, 0);
	trans[1][200]	= settr(333,0,284,109,109,"cmAbleWcp!2", 1, 9, 0);
	trans[1][220]	= settr(353,0,284,1,0,".(goto)", 0, 2, 0);
	trans[1][201]	= settr(334,0,202,2,0,"else", 0, 2, 0);
	trans[1][202]	= settr(335,0,215,110,110,"currStatus = 8", 0, 2, 0); /* m: 203 -> 0,215 */
	reached1[203] = 1;
	trans[1][203]	= settr(0,0,0,0,0,"i = 0",0,0,0);
	trans[1][216]	= settr(349,0,215,1,0,".(goto)", 0, 2, 0);
	T = trans[1][215] = settr(348,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(348,0,204,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(348,0,213,0,0,"DO", 0, 2, 0);
	trans[1][204]	= settr(337,0,210,111,0,"((i<=(4-1)))", 0, 2, 0);
	T = trans[1][210] = settr(343,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(343,0,205,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(343,0,208,0,0,"IF", 0, 2, 0);
	trans[1][205]	= settr(338,0,206,112,0,"(connectedClients[i])", 0, 2, 0);
	trans[1][206]	= settr(339,0,207,113,113,"cmStatus[i]!8", 1, 10, 0);
	trans[1][207]	= settr(340,0,212,114,114,"cmCommand[i]!1", 1, 5, 0);
	trans[1][211]	= settr(344,0,212,1,0,".(goto)", 0, 2, 0); /* m: 212 -> 0,215 */
	reached1[212] = 1;
	trans[1][208]	= settr(341,0,209,2,0,"else", 0, 2, 0);
	trans[1][209]	= settr(342,0,215,115,115,"(1)", 0, 2, 0); /* m: 212 -> 215,0 */
	reached1[212] = 1;
	trans[1][212]	= settr(345,0,215,116,116,"i = (i+1)", 0, 2, 0);
	trans[1][213]	= settr(346,0,218,2,0,"else", 0, 2, 0);
	trans[1][214]	= settr(347,0,218,1,0,"goto :b10", 0, 2, 0);
	trans[1][217]	= settr(350,0,218,1,0,"break", 0, 2, 0);
	trans[1][218]	= settr(351,0,284,117,117,"cmAbleWcp!2", 1, 9, 0);
	trans[1][221]	= settr(354,0,242,118,118,"((currStatus==1))", 0, 2, 0); /* m: 222 -> 242,0 */
	reached1[222] = 1;
	trans[1][222]	= settr(0,0,0,0,0,"printf('CommsManager: post-reverting\\n')",0,0,0);
	trans[1][223]	= settr(0,0,0,0,0,"hasFail = 0",0,0,0);
	trans[1][224]	= settr(0,0,0,0,0,"i = 0",0,0,0);
	trans[1][243]	= settr(376,0,242,1,0,".(goto)", 0, 2, 0);
	T = trans[1][242] = settr(375,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(375,0,225,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(375,0,240,0,0,"DO", 0, 2, 0);
	trans[1][225]	= settr(358,0,237,119,0,"((i<=(4-1)))", 0, 2, 0);
	T = trans[1][237] = settr(370,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(370,0,226,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(370,0,235,0,0,"IF", 0, 2, 0);
	trans[1][226]	= settr(359,0,227,120,0,"(connectedClients[i])", 0, 2, 0);
	trans[1][227]	= settr(360,0,233,121,121,"clientReport?reportStatus,id", 1, 506, 0);
	T = trans[1][233] = settr(366,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(366,0,228,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(366,0,231,0,0,"IF", 0, 2, 0);
	trans[1][228]	= settr(361,0,242,122,122,"((reportStatus==1))", 0, 2, 0); /* m: 229 -> 242,0 */
	reached1[229] = 1;
	trans[1][229]	= settr(0,0,0,0,0,"hasFail = 1",0,0,0);
	trans[1][230]	= settr(0,0,0,0,0,"printf('CommsManager: post-revert failed by Client %d\\n',(i+1))",0,0,0);
	trans[1][234]	= settr(367,0,239,1,0,".(goto)", 0, 2, 0); /* m: 239 -> 0,242 */
	reached1[239] = 1;
	trans[1][231]	= settr(364,0,232,2,0,"else", 0, 2, 0);
	trans[1][232]	= settr(365,0,242,123,123,"(1)", 0, 2, 0); /* m: 239 -> 242,0 */
	reached1[239] = 1;
	trans[1][238]	= settr(371,0,239,1,0,".(goto)", 0, 2, 0); /* m: 239 -> 0,242 */
	reached1[239] = 1;
	trans[1][235]	= settr(368,0,236,2,0,"else", 0, 2, 0);
	trans[1][236]	= settr(369,0,242,124,124,"(1)", 0, 2, 0); /* m: 239 -> 242,0 */
	reached1[239] = 1;
	trans[1][239]	= settr(372,0,242,125,125,"i = (i+1)", 0, 2, 0);
	trans[1][240]	= settr(373,0,282,2,0,"else", 0, 2, 0);
	trans[1][241]	= settr(374,0,282,1,0,"goto :b11", 0, 2, 0);
	trans[1][244]	= settr(377,0,282,1,0,"break", 0, 2, 0);
	T = trans[1][282] = settr(415,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(415,0,245,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(415,0,264,0,0,"IF", 0, 2, 0);
	trans[1][245]	= settr(378,0,260,126,126,"(hasFail)", 0, 2, 0); /* m: 246 -> 260,0 */
	reached1[246] = 1;
	trans[1][246]	= settr(0,0,0,0,0,"currStatus = 8",0,0,0);
	trans[1][247]	= settr(0,0,0,0,0,"i = 0",0,0,0);
	trans[1][261]	= settr(394,0,260,1,0,".(goto)", 0, 2, 0);
	T = trans[1][260] = settr(393,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(393,0,248,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(393,0,258,0,0,"DO", 0, 2, 0);
	trans[1][248]	= settr(381,0,255,127,0,"((i<=(4-1)))", 0, 2, 0);
	T = trans[1][255] = settr(388,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(388,0,249,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(388,0,253,0,0,"IF", 0, 2, 0);
	trans[1][249]	= settr(382,0,250,128,0,"(connectedClients[i])", 0, 2, 0);
	trans[1][250]	= settr(383,0,251,129,129,"cmStatus[i]!8", 1, 10, 0);
	trans[1][251]	= settr(384,0,252,130,130,"connectedClients[i] = 0", 0, 2, 0);
	trans[1][252]	= settr(385,0,257,131,131,"cmCommand[i]!2", 1, 5, 0);
	trans[1][256]	= settr(389,0,257,1,0,".(goto)", 0, 2, 0); /* m: 257 -> 0,260 */
	reached1[257] = 1;
	trans[1][253]	= settr(386,0,254,2,0,"else", 0, 2, 0);
	trans[1][254]	= settr(387,0,260,132,132,"(1)", 0, 2, 0); /* m: 257 -> 260,0 */
	reached1[257] = 1;
	trans[1][257]	= settr(390,0,260,133,133,"i = (i+1)", 0, 2, 0);
	trans[1][258]	= settr(391,0,263,2,0,"else", 0, 2, 0);
	trans[1][259]	= settr(392,0,263,1,0,"goto :b12", 0, 2, 0);
	trans[1][262]	= settr(395,0,263,1,0,"break", 0, 2, 0);
	trans[1][263]	= settr(396,0,284,134,134,"cmAbleWcp!2", 1, 9, 0);
	trans[1][283]	= settr(416,0,284,1,0,".(goto)", 0, 2, 0);
	trans[1][264]	= settr(397,0,265,2,0,"else", 0, 2, 0);
	trans[1][265]	= settr(398,0,278,135,135,"currStatus = 8", 0, 2, 0); /* m: 266 -> 0,278 */
	reached1[266] = 1;
	trans[1][266]	= settr(0,0,0,0,0,"i = 0",0,0,0);
	trans[1][279]	= settr(412,0,278,1,0,".(goto)", 0, 2, 0);
	T = trans[1][278] = settr(411,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(411,0,267,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(411,0,276,0,0,"DO", 0, 2, 0);
	trans[1][267]	= settr(400,0,273,136,0,"((i<=(4-1)))", 0, 2, 0);
	T = trans[1][273] = settr(406,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(406,0,268,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(406,0,271,0,0,"IF", 0, 2, 0);
	trans[1][268]	= settr(401,0,269,137,0,"(connectedClients[i])", 0, 2, 0);
	trans[1][269]	= settr(402,0,270,138,138,"cmStatus[i]!8", 1, 10, 0);
	trans[1][270]	= settr(403,0,275,139,139,"cmCommand[i]!1", 1, 5, 0);
	trans[1][274]	= settr(407,0,275,1,0,".(goto)", 0, 2, 0); /* m: 275 -> 0,278 */
	reached1[275] = 1;
	trans[1][271]	= settr(404,0,272,2,0,"else", 0, 2, 0);
	trans[1][272]	= settr(405,0,278,140,140,"(1)", 0, 2, 0); /* m: 275 -> 278,0 */
	reached1[275] = 1;
	trans[1][275]	= settr(408,0,278,141,141,"i = (i+1)", 0, 2, 0);
	trans[1][276]	= settr(409,0,281,2,0,"else", 0, 2, 0);
	trans[1][277]	= settr(410,0,281,1,0,"goto :b13", 0, 2, 0);
	trans[1][280]	= settr(413,0,281,1,0,"break", 0, 2, 0);
	trans[1][281]	= settr(414,0,284,142,142,"cmAbleWcp!2", 1, 9, 0);
	trans[1][286]	= settr(419,0,287,1,0,"break", 0, 2, 0);
	trans[1][287]	= settr(420,0,0,143,143,"-end-", 0, 3500, 0);

	/* proctype 0: Client */

	trans[0] = (Trans **) emalloc(135*sizeof(Trans *));

	trans[0][132]	= settr(131,0,131,1,0,".(goto)", 0, 2, 0);
	T = trans[0][131] = settr(130,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(130,0,1,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(130,0,14,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(130,0,24,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(130,0,43,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(130,0,55,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(130,0,59,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(130,0,69,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(130,0,93,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(130,0,112,0,0,"DO", 0, 2, 0);
	trans[0][1]	= settr(0,0,2,144,0,"((!(connected)&&(currStatus==8)))", 0, 2, 0);
	trans[0][2]	= settr(1,0,3,145,145,"cmConnectRequest!id", 1, 3, 0);
	trans[0][3]	= settr(2,0,4,146,0,"printf('Client %d: requesting connection\\n',(id+1))", 0, 2, 0);
	trans[0][4]	= settr(3,0,12,147,147,"cmConnectReply[id]?reply", 1, 504, 0);
	T = trans[0][12] = settr(11,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(11,0,5,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(11,0,9,0,0,"IF", 0, 2, 0);
	trans[0][5]	= settr(4,0,6,148,148,"((reply==2))", 0, 2, 0);
	trans[0][6]	= settr(5,0,7,149,149,"cmStatus[id]?currStatus", 1, 510, 0);
	trans[0][7]	= settr(6,0,131,150,150,"connected = 1", 0, 2, 0); /* m: 8 -> 0,131 */
	reached0[8] = 1;
	trans[0][8]	= settr(0,0,0,0,0,"printf('Client %d: connection request accepted\\n',(id+1))",0,0,0);
	trans[0][13]	= settr(12,0,131,1,0,".(goto)", 0, 2, 0);
	trans[0][9]	= settr(8,0,10,2,0,"else", 0, 2, 0);
	trans[0][10]	= settr(9,0,131,151,151,"(1)", 0, 2, 0); /* m: 11 -> 131,0 */
	reached0[11] = 1;
	trans[0][11]	= settr(0,0,0,0,0,"printf('Client %d: connection request rejected\\n',(id+1))",0,0,0);
	trans[0][14]	= settr(13,0,16,152,152,"((currStatus==7))", 0, 2, 0); /* m: 15 -> 16,0 */
	reached0[15] = 1;
	trans[0][15]	= settr(0,0,0,0,0,"printf('Client %d: pre-initializing\\n',(id+1))",0,0,0);
	trans[0][16]	= settr(15,0,22,153,153,"cmCommand[id]?currCommand", 1, 505, 0);
	T = trans[0][22] = settr(21,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(21,0,17,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(21,0,20,0,0,"IF", 0, 2, 0);
	trans[0][17]	= settr(16,0,18,154,154,"((currCommand==5))", 0, 2, 0);
	trans[0][18]	= settr(17,0,19,155,155,"cmStatus[id]?currStatus", 1, 510, 0);
	trans[0][19]	= settr(18,0,131,156,0,"printf('Client %d: getting new info\\n',(id+1))", 0, 2, 0);
	trans[0][23]	= settr(22,0,131,1,0,".(goto)", 0, 2, 0);
	trans[0][20]	= settr(19,0,21,2,0,"else", 0, 2, 0);
	trans[0][21]	= settr(20,0,131,1,0,"(1)", 0, 2, 0);
	trans[0][24]	= settr(23,0,41,157,157,"((currStatus==6))", 0, 2, 0); /* m: 25 -> 41,0 */
	reached0[25] = 1;
	trans[0][25]	= settr(0,0,0,0,0,"printf('Client %d: initializing\\n',(id+1))",0,0,0);
	T = trans[0][41] = settr(40,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(40,0,26,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(40,0,36,0,0,"IF", 0, 2, 0);
	trans[0][26]	= settr(25,0,27,158,0,"(getInfoSuccess)", 0, 2, 0);
	trans[0][27]	= settr(26,0,28,159,159,"clientReport!2,id", 1, 6, 0);
	trans[0][28]	= settr(27,0,34,160,160,"cmCommand[id]?currCommand", 1, 505, 0);
	T = trans[0][34] = settr(33,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(33,0,29,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(33,0,32,0,0,"IF", 0, 2, 0);
	trans[0][29]	= settr(28,0,30,161,161,"((currCommand==4))", 0, 2, 0);
	trans[0][30]	= settr(29,0,31,162,162,"cmStatus[id]?currStatus", 1, 510, 0);
	trans[0][31]	= settr(30,0,131,163,0,"printf('Client %d: using new info\\n',(id+1))", 0, 2, 0);
	trans[0][35]	= settr(34,0,131,1,0,".(goto)", 0, 2, 0);
	trans[0][32]	= settr(31,0,33,2,0,"else", 0, 2, 0);
	trans[0][33]	= settr(32,0,131,1,0,"(1)", 0, 2, 0);
	trans[0][42]	= settr(41,0,131,1,0,".(goto)", 0, 2, 0);
	trans[0][36]	= settr(35,0,37,2,0,"else", 0, 2, 0);
	trans[0][37]	= settr(36,0,38,164,164,"clientReport!1,id", 1, 6, 0);
	trans[0][38]	= settr(37,0,39,165,165,"cmStatus[id]?currStatus", 1, 510, 0);
	trans[0][39]	= settr(38,0,131,166,166,"connected = 0", 0, 2, 0); /* m: 40 -> 0,131 */
	reached0[40] = 1;
	trans[0][40]	= settr(0,0,0,0,0,"printf('Client %d: initialization failed. disconnected\\n',(id+1))",0,0,0);
	trans[0][43]	= settr(42,0,53,167,167,"((currStatus==5))", 0, 2, 0); /* m: 44 -> 53,0 */
	reached0[44] = 1;
	trans[0][44]	= settr(0,0,0,0,0,"printf('Client %d: post-initializing\\n',(id+1))",0,0,0);
	T = trans[0][53] = settr(52,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(52,0,45,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(52,0,48,0,0,"IF", 0, 2, 0);
	trans[0][45]	= settr(44,0,46,168,0,"(useNewInfoSuccess)", 0, 2, 0);
	trans[0][46]	= settr(45,0,47,169,169,"clientReport!2,id", 1, 6, 0);
	trans[0][47]	= settr(46,0,131,170,170,"cmStatus[id]?currStatus", 1, 510, 0);
	trans[0][54]	= settr(53,0,131,1,0,".(goto)", 0, 2, 0);
	trans[0][48]	= settr(47,0,49,2,0,"else", 0, 2, 0);
	trans[0][49]	= settr(48,0,50,171,171,"clientReport!1,id", 1, 6, 0);
	trans[0][50]	= settr(49,0,51,172,172,"connected = 0", 0, 2, 0);
	trans[0][51]	= settr(50,0,52,173,173,"cmStatus[id]?currStatus", 1, 510, 0);
	trans[0][52]	= settr(51,0,131,174,0,"printf('Client %d: post-initialization failed. disconnected\\n',(id+1))", 0, 2, 0);
	trans[0][55]	= settr(54,0,56,175,175,"(((nempty(wcpRequestClient[id])&&(currStatus==8))&&connected))", 1, 508, 0);
	trans[0][56]	= settr(55,0,57,176,176,"wcpRequestClient[id]?button", 1, 508, 0);
	trans[0][57]	= settr(56,0,58,177,0,"printf('Client %d: manual update request received\\n',(id+1))", 0, 2, 0);
	trans[0][58]	= settr(57,0,131,178,178,"cmStatus[id]?currStatus", 1, 510, 0);
	trans[0][59]	= settr(58,0,61,179,179,"(((currStatus==4)&&connected))", 0, 2, 0); /* m: 60 -> 61,0 */
	reached0[60] = 1;
	trans[0][60]	= settr(0,0,0,0,0,"printf('Client %d: pre-updating\\n',(id+1))",0,0,0);
	trans[0][61]	= settr(60,0,67,180,180,"cmCommand[id]?currCommand", 1, 505, 0);
	T = trans[0][67] = settr(66,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(66,0,62,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(66,0,65,0,0,"IF", 0, 2, 0);
	trans[0][62]	= settr(61,0,63,181,181,"((currCommand==5))", 0, 2, 0);
	trans[0][63]	= settr(62,0,64,182,182,"cmStatus[id]?currStatus", 1, 510, 0);
	trans[0][64]	= settr(63,0,131,183,0,"printf('Client %d: getting new info\\n',(id+1))", 0, 2, 0);
	trans[0][68]	= settr(67,0,131,1,0,".(goto)", 0, 2, 0);
	trans[0][65]	= settr(64,0,66,2,0,"else", 0, 2, 0);
	trans[0][66]	= settr(65,0,131,1,0,"(1)", 0, 2, 0);
	trans[0][69]	= settr(68,0,91,184,184,"(((currStatus==3)&&connected))", 0, 2, 0); /* m: 70 -> 91,0 */
	reached0[70] = 1;
	trans[0][70]	= settr(0,0,0,0,0,"printf('Client %d: updating\\n',(id+1))",0,0,0);
	T = trans[0][91] = settr(90,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(90,0,71,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(90,0,81,0,0,"IF", 0, 2, 0);
	trans[0][71]	= settr(70,0,72,185,0,"(getInfoSuccess)", 0, 2, 0);
	trans[0][72]	= settr(71,0,73,186,186,"clientReport!2,id", 1, 6, 0);
	trans[0][73]	= settr(72,0,79,187,187,"cmCommand[id]?currCommand", 1, 505, 0);
	T = trans[0][79] = settr(78,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(78,0,74,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(78,0,77,0,0,"IF", 0, 2, 0);
	trans[0][74]	= settr(73,0,75,188,188,"((currCommand==4))", 0, 2, 0);
	trans[0][75]	= settr(74,0,76,189,189,"cmStatus[id]?currStatus", 1, 510, 0);
	trans[0][76]	= settr(75,0,131,190,0,"printf('Client %d: using new info\\n',(id+1))", 0, 2, 0);
	trans[0][80]	= settr(79,0,131,1,0,".(goto)", 0, 2, 0);
	trans[0][77]	= settr(76,0,78,2,0,"else", 0, 2, 0);
	trans[0][78]	= settr(77,0,131,1,0,"(1)", 0, 2, 0);
	trans[0][92]	= settr(91,0,131,1,0,".(goto)", 0, 2, 0);
	trans[0][81]	= settr(80,0,82,2,0,"else", 0, 2, 0);
	trans[0][82]	= settr(81,0,83,191,191,"clientReport!1,id", 1, 6, 0);
	trans[0][83]	= settr(82,0,89,192,192,"cmCommand[id]?currCommand", 1, 505, 0);
	T = trans[0][89] = settr(88,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(88,0,84,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(88,0,87,0,0,"IF", 0, 2, 0);
	trans[0][84]	= settr(83,0,85,193,193,"((currCommand==3))", 0, 2, 0);
	trans[0][85]	= settr(84,0,86,194,194,"cmStatus[id]?currStatus", 1, 510, 0);
	trans[0][86]	= settr(85,0,131,195,0,"printf('Client %d: using old info\\n',(id+1))", 0, 2, 0);
	trans[0][90]	= settr(89,0,131,1,0,".(goto)", 0, 2, 0);
	trans[0][87]	= settr(86,0,88,2,0,"else", 0, 2, 0);
	trans[0][88]	= settr(87,0,131,1,0,"(1)", 0, 2, 0);
	trans[0][93]	= settr(92,0,102,196,196,"(((currStatus==2)&&connected))", 0, 2, 0); /* m: 94 -> 102,0 */
	reached0[94] = 1;
	trans[0][94]	= settr(0,0,0,0,0,"printf('Client %d: post-updating\\n',(id+1))",0,0,0);
	T = trans[0][102] = settr(101,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(101,0,95,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(101,0,98,0,0,"IF", 0, 2, 0);
	trans[0][95]	= settr(94,0,96,197,0,"(useNewInfoSuccess)", 0, 2, 0);
	trans[0][96]	= settr(95,0,97,198,198,"clientReport!2,id", 1, 6, 0);
	trans[0][97]	= settr(96,0,104,199,199,"cmStatus[id]?currStatus", 1, 510, 0);
	trans[0][103]	= settr(102,0,104,1,0,".(goto)", 0, 2, 0);
	trans[0][98]	= settr(97,0,99,2,0,"else", 0, 2, 0);
	trans[0][99]	= settr(98,0,100,200,200,"clientReport!1,id", 1, 6, 0);
	trans[0][100]	= settr(99,0,101,201,201,"connected = 0", 0, 2, 0);
	trans[0][101]	= settr(100,0,104,202,202,"cmStatus[id]?currStatus", 1, 510, 0);
	trans[0][104]	= settr(103,0,110,203,203,"cmCommand[id]?currCommand", 1, 505, 0);
	T = trans[0][110] = settr(109,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(109,0,105,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(109,0,108,0,0,"IF", 0, 2, 0);
	trans[0][105]	= settr(104,0,131,204,204,"((currCommand==2))", 0, 2, 0); /* m: 106 -> 131,0 */
	reached0[106] = 1;
	trans[0][106]	= settr(0,0,0,0,0,"connected = 0",0,0,0);
	trans[0][107]	= settr(0,0,0,0,0,"printf('Client %d: update failed. disconnected\\n',(id+1))",0,0,0);
	trans[0][111]	= settr(110,0,131,1,0,".(goto)", 0, 2, 0);
	trans[0][108]	= settr(107,0,109,2,0,"else", 0, 2, 0);
	trans[0][109]	= settr(108,0,131,1,0,"(1)", 0, 2, 0);
	trans[0][112]	= settr(111,0,121,205,205,"(((currStatus==1)&&connected))", 0, 2, 0); /* m: 113 -> 121,0 */
	reached0[113] = 1;
	trans[0][113]	= settr(0,0,0,0,0,"printf('Client %d: post-reverting\\n',(id+1))",0,0,0);
	T = trans[0][121] = settr(120,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(120,0,114,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(120,0,117,0,0,"IF", 0, 2, 0);
	trans[0][114]	= settr(113,0,115,206,0,"(useOldInfoSuccess)", 0, 2, 0);
	trans[0][115]	= settr(114,0,116,207,207,"clientReport!2,id", 1, 6, 0);
	trans[0][116]	= settr(115,0,123,208,208,"cmStatus[id]?currStatus", 1, 510, 0);
	trans[0][122]	= settr(121,0,123,1,0,".(goto)", 0, 2, 0);
	trans[0][117]	= settr(116,0,118,2,0,"else", 0, 2, 0);
	trans[0][118]	= settr(117,0,119,209,209,"clientReport!1,id", 1, 6, 0);
	trans[0][119]	= settr(118,0,120,210,210,"connected = 0", 0, 2, 0);
	trans[0][120]	= settr(119,0,123,211,211,"cmStatus[id]?currStatus", 1, 510, 0);
	trans[0][123]	= settr(122,0,129,212,212,"cmCommand[id]?currCommand", 1, 505, 0);
	T = trans[0][129] = settr(128,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(128,0,124,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(128,0,127,0,0,"IF", 0, 2, 0);
	trans[0][124]	= settr(123,0,131,213,213,"((currCommand==2))", 0, 2, 0); /* m: 125 -> 131,0 */
	reached0[125] = 1;
	trans[0][125]	= settr(0,0,0,0,0,"connected = 0",0,0,0);
	trans[0][126]	= settr(0,0,0,0,0,"printf('Client %d: revert failed. disconnected\\n',(id+1))",0,0,0);
	trans[0][130]	= settr(129,0,131,1,0,".(goto)", 0, 2, 0);
	trans[0][127]	= settr(126,0,128,2,0,"else", 0, 2, 0);
	trans[0][128]	= settr(127,0,131,1,0,"(1)", 0, 2, 0);
	trans[0][133]	= settr(132,0,134,1,0,"break", 0, 2, 0);
	trans[0][134]	= settr(133,0,0,214,214,"-end-", 0, 3500, 0);
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

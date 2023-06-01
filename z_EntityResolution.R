# This script is manual alignment of the redundant nodeset in the cocitation & citation networks.

# [1] "adler ps, 2002, acad manage rev, v27, p17, doi 10.2307/4134367"             
# [2] "bourdieu p., 1986, hdb theory res socio, doi doi 10.1002/9780470755679.ch15" aka "Forms of Capital"
# [3] "burt r, 1992, structural holes soc"             
# [4] "coleman j., 1990, fdn social theory"            
# [5] "coleman js, 1988, am j sociol, v94, ps95, doi 10.1086/228943" 
# [6] "granovetter ms, 1973, am j sociol, v78, p1360, doi 10.1086/225469"          
# [7] "lin nan, 2001, social capital theor"            
# [8] "nahapiet j, 1998, acad manage rev, v23, p242, doi 10.2307/259373"           
# [9] "portes a, 1998, annu rev sociol, v24, p1, doi 10.1146/annurev.soc.24.1.1"   
# [10] "putnam r., 2000, bowling alone collap"          
# [11] "putnam rd, 1995, j democracy, v0006"            
# [12] "putnam robert d., 1993, making democracy wor"  

#fg100[[1]]
fg100[[1]] <- list(NA)
cbind(grep("adler", V(g_fg100[[1]])$name, ignore.case=T), V(g_fg100[[1]])$name[grep("adler", V(g_fg100[[1]])$name, ignore.case=T)])
fg100[[1]]$adler<- c(14698, 34419, 107029)
cbind(grep("bourdieu", V(g_fg100[[1]])$name, ignore.case=T), V(g_fg100[[1]])$name[grep("bourdieu", V(g_fg100[[1]])$name, ignore.case=T)])
fg100[[1]]$bourdieu <- c(395, 2140, 3467, 3513, 4802, 7060, 7710, 7830, 9333, 10084, 10260, 13750, 13948, 14331, 17276, 18894, 20988, 21875, 23162, 23720, 24377, 31372, 31587, 31839, 37003, 37072, 39756, 40231, 41191, 41360, 47894, 52826, 55089, 55657, 61894, 62976, 69668, 69724, 76238, 81217, 90906, 92822, 96193, 100593, 103720, 104141, 117075, 121908, 123119, 127242)
cbind(grep("burt", V(g_fg100[[1]])$name, ignore.case=T), V(g_fg100[[1]])$name[grep("burt", V(g_fg100[[1]])$name, ignore.case=T)])
fg100[[1]]$burt <- c(128, 2867, 3703, 27078, 40086, 45842, 47861, 53514, 72188, 91698, 116161, 131735)
cbind(grep("coleman", V(g_fg100[[1]])$name, ignore.case=T), V(g_fg100[[1]])$name[grep("coleman", V(g_fg100[[1]])$name, ignore.case=T)])
fg100[[1]]$coleman_fdn <- c(76, 131, 755, 2670, 2874, 3839, 5998, 7668, 10130, 10343, 10433, 11355, 12256, 12818, 14453, 22465, 27869, 29000, 29854, 40107, 40254, 45610, 66171, 68704, 76586, 76993, 78752, 83799, 86769, 90239, 92751, 100776, 101891, 115362, 117541, 126531, 126532, 126716, 133636)
fg100[[1]]$coleman_ajs <- c(2141, 2875, 3062, 6202, 9777, 9805, 17412, 17990, 22602, 31041, 35548, 35962, 38093, 76664,111575) 
cbind(grep("granov", V(g_fg100[[1]])$name, ignore.case=T), V(g_fg100[[1]])$name[grep("granov", V(g_fg100[[1]])$name, ignore.case=T)])
fg100[[1]]$granov <- c(142, 1030, 23984, 39679, 76395, 117330, 118608, 127767)
cbind(grep("lin n", V(g_fg100[[1]])$name, ignore.case=T), V(g_fg100[[1]])$name[grep("lin n", V(g_fg100[[1]])$name, ignore.case=T)])
fg100[[1]]$lin <- c(6293, 10270, 11274, 11275, 14550, 16647, 22059, 24109, 36952, 39049, 40092, 40259, 45582, 55696, 56431, 68219, 76316, 87193, 91605, 92310, 93130, 131845, 132264)
cbind(grep("nahapiet", V(g_fg100[[1]])$name, ignore.case=T), V(g_fg100[[1]])$name[grep("nahapiet", V(g_fg100[[1]])$name, ignore.case=T)])
fg100[[1]]$nahapiet <- c(4726, 106384)
cbind(grep("portes", V(g_fg100[[1]])$name, ignore.case=T), V(g_fg100[[1]])$name[grep("portes", V(g_fg100[[1]])$name, ignore.case=T)])
fg100[[1]]$portes <- c(3332, 6498, 48917, 52852, 101245)
cbind(grep("putnam", V(g_fg100[[1]])$name, ignore.case=T), V(g_fg100[[1]])$name[grep("putnam", V(g_fg100[[1]])$name, ignore.case=T)])
fg100[[1]]$putnam_jd <- c(767, 2829, 10319, 16714, 17713, 25445, 31659, 38576, 49670, 49983, 53089, 74625, 81318, 122819)
fg100[[1]]$putnam_mdw <- c(561, 833, 925, 2991, 3892, 3925, 4331, 6527, 6660, 6909, 6965, 7688, 9202, 10047, 10942, 14715, 14882, 15153, 15693, 16619, 17712, 18214, 21979, 22388, 30580, 33596, 33632, 33880, 41456, 46228, 46286, 49669, 53540, 54438, 59518, 66957, 68266, 68638, 80563, 92314, 113093, 115823, 118865)
fg100[[1]]$putnam_ba <- c(4103, 5111, 6043, 7510, 9784, 11695, 11829, 12829, 13128, 13190, 13733, 13934, 14341, 15051, 15103, 15691, 15965, 19115, 20693, 20748, 22499, 23561, 26017, 30579, 30961, 33631, 34263, 40292, 43701, 44032, 44973, 45390, 46796, 51670, 53541, 54623, 56807, 57061, 59519, 65670, 66551, 66896, 67169, 68090, 73269, 76684, 78119, 81817, 85364, 90401, 100712, 117684, 118864, 120509, 121665, 126572)
fg100[[1]][[1]] <- NULL #fixing lazy construction

#fg100[[2]]
fg100[[2]] <- list(NA)
cbind(grep("adler", V(g_fg100[[2]])$name, ignore.case=T), V(g_fg100[[2]])$name[grep("adler", V(g_fg100[[2]])$name, ignore.case=T)])
fg100[[2]]$adler <- c(2971, 15669, 42132, 94194)
cbind(grep("bourdieu", V(g_fg100[[2]])$name, ignore.case=T), V(g_fg100[[2]])$name[grep("bourdieu", V(g_fg100[[2]])$name, ignore.case=T)])
fg100[[2]]$bourdieu <- c(109, 334, 869, 1038, 2569, 3166, 3433, 4192, 5454, 11946, 12227, 14870, 15515, 17633, 17904, 20245, 26743, 30335, 30389, 31790, 36402, 54463, 56194, 61756, 67262, 69244, 72392, 77453, 82289, 85983, 92840, 94555, 102892)
cbind(grep("burt", V(g_fg100[[2]])$name, ignore.case=T), V(g_fg100[[2]])$name[grep("burt", V(g_fg100[[2]])$name, ignore.case=T)])
fg100[[2]]$burt <- c(146, 202, 1075, 3042, 3726, 3976, 4325, 4845, 6480, 6524, 6959, 10997, 13592, 14439, 16374, 16655, 21195, 22707, 25803, 33450, 42086, 42883, 45402, 49103, 49782, 51625, 55737, 60906, 65890, 69141, 73525, 77441, 81336, 86293, 87292, 97079, 106460)
cbind(grep("coleman", V(g_fg100[[2]])$name, ignore.case=T), V(g_fg100[[2]])$name[grep("coleman", V(g_fg100[[2]])$name, ignore.case=T)])
fg100[[2]]$coleman_fdn <- c(155, 390, 1717, 2533, 3834, 4194, 11235, 19566, 21198, 25903, 26267, 31221, 39044, 40005, 46559, 51550, 52329, 53425, 55260, 61409, 65081, 67552, 71734, 73832, 82293, 82391,85438, 85987, 88748, 92594, 96028, 97081, 97366, 107873)
fg100[[2]]$coleman_ajs <- c(43, 87, 838, 2267, 7603, 8276, 12314, 15562, 16377, 16478, 18893, 48403, 52425, 53426, 59922, 74236, 79013, 97082, 100364)
cbind(grep("granov", V(g_fg100[[2]])$name, ignore.case=T), V(g_fg100[[2]])$name[grep("granov", V(g_fg100[[2]])$name, ignore.case=T)])
fg100[[2]]$granov <- c(164, 1422, 25678, 28568, 48116)
cbind(grep("lin n", V(g_fg100[[2]])$name, ignore.case=T), V(g_fg100[[2]])$name[grep("lin n", V(g_fg100[[2]])$name, ignore.case=T)])
fg100[[2]]$lin <- c(2123, 2241, 3008, 3928, 5171, 7791, 10169, 10356, 10741, 21155, 27857, 31400, 33779, 34171, 42241, 55485, 65670, 71369, 73857, 79093, 85444, 87682, 105023)
cbind(grep("nahapiet", V(g_fg100[[2]])$name, ignore.case=T), V(g_fg100[[2]])$name[grep("nahapiet", V(g_fg100[[2]])$name, ignore.case=T)])
fg100[[2]]$nahapiet <- c(1178, 8297, 100487, 107745)
cbind(grep("portes", V(g_fg100[[2]])$name, ignore.case=T), V(g_fg100[[2]])$name[grep("portes", V(g_fg100[[2]])$name, ignore.case=T)])
fg100[[2]]$portes <- c(1341, 12327, 36235, 47620)
cbind(grep("putnam", V(g_fg100[[2]])$name, ignore.case=T), V(g_fg100[[2]])$name[grep("putnam", V(g_fg100[[2]])$name, ignore.case=T)])
fg100[[2]]$putnam_jd <- c(705, 3246, 9273, 16293, 31240)
fg100[[2]]$putnam_mdw <- c(427, 11631, 12485, 13493, 27644, 53455, 62392, 97102)
fg100[[2]]$putnam_ba <- c(2221, 3136, 3305, 6037, 7970, 10060, 11246, 16623, 18398, 21267, 21847, 22859, 25627, 28443, 41509, 53454, 53561, 53757, 58335, 60891, 62315, 62391, 77613, 80396, 89437, 95342)
fg100[[2]][[1]] <- NULL #fixing lazy construction

#fg100[[3]]
fg100[[3]] <- list(NA)
cbind(grep("adler", V(g_fg100[[3]])$name, ignore.case=T), V(g_fg100[[3]])$name[grep("adler", V(g_fg100[[3]])$name, ignore.case=T)])
fg100[[3]]$adler <- 3573
cbind(grep("bourdieu", V(g_fg100[[3]])$name, ignore.case=T), V(g_fg100[[3]])$name[grep("bourdieu", V(g_fg100[[3]])$name, ignore.case=T)])
fg100[[3]]$bourdieu <- c(60, 1663, 3457, 3576, 3724, 4850, 4950, 5296, 5687, 8591, 9150, 9989, 12046, 12112, 12706, 17870, 18651, 19056, 22968, 23072, 26179, 32113, 32912, 33198, 35271, 35461, 35637, 35960, 37100, 42985, 44912, 45945, 47847, 49039, 49594, 52448, 53558, 54125, 55562, 55733, 58860, 65707, 67563, 69310)
cbind(grep("burt", V(g_fg100[[3]])$name, ignore.case=T), V(g_fg100[[3]])$name[grep("burt", V(g_fg100[[3]])$name, ignore.case=T)])
fg100[[3]]$burt <- c(816, 12012, 20616, 29737, 36673, 38895, 55006, 58332)
cbind(grep("coleman", V(g_fg100[[3]])$name, ignore.case=T), V(g_fg100[[3]])$name[grep("coleman", V(g_fg100[[3]])$name, ignore.case=T)])
fg100[[3]]$coleman_fdn <- c(63, 157, 920, 2475, 4022, 5489, 7850, 8344, 12410, 13151, 14642, 20786, 26373, 27118, 31835, 36725, 36778, 38610, 45547, 50008, 50527, 58170, 58957, 61566, 72664)
fg100[[3]]$coleman_ajs <- c(12, 2157, 6135, 6391, 7099, 7712, 9992, 12992, 13131, 17833, 23074, 28779, 35060, 59997)
cbind(grep("granov", V(g_fg100[[3]])$name, ignore.case=T), V(g_fg100[[3]])$name[grep("granov", V(g_fg100[[3]])$name, ignore.case=T)])
fg100[[3]]$granov <- c(137, 1822, 44693, 60001)
cbind(grep("lin n", V(g_fg100[[3]])$name, ignore.case=T), V(g_fg100[[3]])$name[grep("lin n", V(g_fg100[[3]])$name, ignore.case=T)])
fg100[[3]]$lin <- c(2911, 3093, 3265, 6405, 8935, 14055, 18540, 23504, 30635, 32410, 35153, 36526, 39839, 42167, 45068)
cbind(grep("nahapiet", V(g_fg100[[3]])$name, ignore.case=T), V(g_fg100[[3]])$name[grep("nahapiet", V(g_fg100[[3]])$name, ignore.case=T)])
fg100[[3]]$nahapiet <- c(830, 37230, 63928)
cbind(grep("portes", V(g_fg100[[3]])$name, ignore.case=T), V(g_fg100[[3]])$name[grep("portes", V(g_fg100[[3]])$name, ignore.case=T)])
fg100[[3]]$portes <- c(857, 44708, 47207)
cbind(grep("putnam", V(g_fg100[[3]])$name, ignore.case=T), V(g_fg100[[3]])$name[grep("putnam", V(g_fg100[[3]])$name, ignore.case=T)])
fg100[[3]]$putnam_jd <- c(78, 3107, 3293, 7703, 7816, 15665, 20535, 26261, 27572, 27959, 58198, 61077, 63936)
fg100[[3]]$putnam_mdw <- c(80, 363, 873, 1405, 1480, 2385, 2491, 4704, 6090, 6152, 6663, 7704, 9191, 9209, 9231, 9724, 10969, 12640, 18423, 22522, 26561, 26785, 27131, 35725, 36824, 40842, 45567, 57408, 63052, 66073)
fg100[[3]]$putnam_ba <- c(906, 1233, 1254, 3741, 4205, 4471, 4493, 5756, 6150, 7548, 7753, 7754, 8368, 9190, 9230, 9277, 9298, 9636, 9977, 16414, 19929, 20482, 21717, 22892, 23208, 23797, 24349, 24497, 24854, 26562, 28048, 28993, 32128, 32413, 36325, 36823, 40585, 43418, 43759, 45303, 47086, 47639, 47640, 47641, 47642, 50486, 50695, 51715, 53574, 58251, 58932, 59403, 72213)
fg100[[3]][[1]] <- NULL #fixing lazy construction

#fg100[[4]]
fg100[[4]] <- list(NA)
cbind(grep("adler", V(g_fg100[[4]])$name, ignore.case=T), V(g_fg100[[4]])$name[grep("adler", V(g_fg100[[4]])$name, ignore.case=T)])
fg100[[4]]$adler <- 4157
cbind(grep("bourdieu", V(g_fg100[[4]])$name, ignore.case=T), V(g_fg100[[4]])$name[grep("bourdieu", V(g_fg100[[4]])$name, ignore.case=T)])
fg100[[4]]$bourdieu <- c(995, 1173, 1341, 1862, 3307, 3544, 3748, 6109, 6387, 6465, 9701, 10199, 12532, 17063, 20186, 21778, 25978, 36558, 40874, 42847, 43834, 51939, 53260)
cbind(grep("burt", V(g_fg100[[4]])$name, ignore.case=T), V(g_fg100[[4]])$name[grep("burt", V(g_fg100[[4]])$name, ignore.case=T)])
fg100[[4]]$burt <-  c(3647, 7059, 9356, 20916, 21523, 21895, 47224)
cbind(grep("coleman", V(g_fg100[[4]])$name, ignore.case=T), V(g_fg100[[4]])$name[grep("coleman", V(g_fg100[[4]])$name, ignore.case=T)])
fg100[[4]]$coleman_fdn <- c(20, 115, 362, 5079, 5164, 7108, 9492, 9574, 12788, 19653, 23271, 26237, 29679)
fg100[[4]]$coleman_ajs <- c(1, 454, 563, 793, 3275, 3768, 5080, 5315, 6347, 6419, 22283, 25981, 33524, 40097)
cbind(grep("granov", V(g_fg100[[4]])$name, ignore.case=T), V(g_fg100[[4]])$name[grep("granov", V(g_fg100[[4]])$name, ignore.case=T)])
fg100[[4]]$granov <- 1017
cbind(grep("lin n", V(g_fg100[[4]])$name, ignore.case=T), V(g_fg100[[4]])$name[grep("lin n", V(g_fg100[[4]])$name, ignore.case=T)])
fg100[[4]]$lin <- c(1596, 3348, 4333, 4876, 5639, 6553, 9212, 10021, 12335, 14699, 23286, 44599, 52499, 53321)
cbind(grep("nahapiet", V(g_fg100[[4]])$name, ignore.case=T), V(g_fg100[[4]])$name[grep("nahapiet", V(g_fg100[[4]])$name, ignore.case=T)])
fg100[[4]]$nahapiet <- c(4188, 45272)
cbind(grep("portes", V(g_fg100[[4]])$name, ignore.case=T), V(g_fg100[[4]])$name[grep("portes", V(g_fg100[[4]])$name, ignore.case=T)])
fg100[[4]]$portes <- c(1317, 1887)
cbind(grep("putnam", V(g_fg100[[4]])$name, ignore.case=T), V(g_fg100[[4]])$name[grep("putnam", V(g_fg100[[4]])$name, ignore.case=T)])
fg100[[4]]$putnam_jd <- c(488, 1643, 4145, 10384, 11801, 32215, 47324)
fg100[[4]]$putnam_mdw <- c(430, 2152, 2302, 6207, 17509, 31882, 42708)
fg100[[4]]$putnam_ba <- c(1606, 1839, 3031, 3194, 3325, 3556, 4335, 6400, 7073, 7840, 8170, 10944, 11064, 12361, 17510, 17998, 20331, 21302, 21750, 23655, 26218, 26270, 27313, 28584, 29183, 31094, 32570, 43037, 43720, 45815, 49024, 51179, 51843, 52772, 53709)
fg100[[4]][[1]] <- NULL #fixing lazy construction

#fg100[[5]]
fg100[[5]] <- list(NA)
cbind(grep("adler", V(g_fg100[[5]])$name, ignore.case=T), V(g_fg100[[5]])$name[grep("adler", V(g_fg100[[5]])$name, ignore.case=T)])
fg100[[5]]$adler <- 1811
cbind(grep("bourdieu", V(g_fg100[[5]])$name, ignore.case=T), V(g_fg100[[5]])$name[grep("bourdieu", V(g_fg100[[5]])$name, ignore.case=T)])
fg100[[5]]$bourdieu <- c(254, 557, 1687, 1875, 3508, 4695, 4816, 5916, 8254, 8336, 19709, 20879, 27469)
cbind(grep("burt", V(g_fg100[[5]])$name, ignore.case=T), V(g_fg100[[5]])$name[grep("burt", V(g_fg100[[5]])$name, ignore.case=T)])
fg100[[5]]$burt <- c(696, 6558, 11749, 12142, 15560, 18150, 22705)
cbind(grep("coleman", V(g_fg100[[5]])$name, ignore.case=T), V(g_fg100[[5]])$name[grep("coleman", V(g_fg100[[5]])$name, ignore.case=T)])
fg100[[5]]$coleman_fdn <- c(60, 496, 3422, 10337)
fg100[[5]]$coleman_ajs <- c( 8, 11590)
cbind(grep("granov", V(g_fg100[[5]])$name, ignore.case=T), V(g_fg100[[5]])$name[grep("granov", V(g_fg100[[5]])$name, ignore.case=T)])
fg100[[5]]$granov <- 186
cbind(grep("lin n", V(g_fg100[[5]])$name, ignore.case=T), V(g_fg100[[5]])$name[grep("lin n", V(g_fg100[[5]])$name, ignore.case=T)])
fg100[[5]]$lin <- c(1250, 3451, 16578, 17144, 22887, 27485, 27992, 28558, 29610)
cbind(grep("nahapiet", V(g_fg100[[5]])$name, ignore.case=T), V(g_fg100[[5]])$name[grep("nahapiet", V(g_fg100[[5]])$name, ignore.case=T)])
fg100[[5]]$nahapiet <- c(1840, 3717)
cbind(grep("portes", V(g_fg100[[5]])$name, ignore.case=T), V(g_fg100[[5]])$name[grep("portes", V(g_fg100[[5]])$name, ignore.case=T)])
fg100[[5]]$portes <- c(437, 20322)
cbind(grep("putnam", V(g_fg100[[5]])$name, ignore.case=T), V(g_fg100[[5]])$name[grep("putnam", V(g_fg100[[5]])$name, ignore.case=T)])
fg100[[5]]$putnam_jd <- c(1166, 6285)
fg100[[5]]$putnam_mdw <- c(82, 555, 1918, 3097, 4236, 8619, 9254, 13247, 15384, 20561, 27053, 30663)
fg100[[5]]$putnam_ba <- c(1167, 2025, 2767, 3035, 5467, 8146, 10217, 10563, 12484, 13934, 14897, 23500, 24440, 26706)
fg100[[5]][[1]] <- NULL #fixing lazy construction

#lc1000[[1]]
lc1000[[1]] <- list(NA)
cbind(grep("adler", V(g_lc1000[[1]])$name, ignore.case=T), V(g_lc1000[[1]])$name[grep("adler", V(g_lc1000[[1]])$name, ignore.case=T)])
lc1000[[1]]$adler<- c(2066, 26050, 34419, 78656)
cbind(grep("bourdieu", V(g_lc1000[[1]])$name, ignore.case=T), V(g_lc1000[[1]])$name[grep("bourdieu", V(g_lc1000[[1]])$name, ignore.case=T)])
lc1000[[1]]$bourdieu <- c(28, 2391, 3007, 3064, 3122, 4201, 6529, 12014, 12455, 14021, 15467, 17047, 18807, 21602, 24751, 26059, 28228, 29907, 44139, 49564, 49860, 53510, 54817, 59238, 68173, 71385, 80502, 85145)
cbind(grep("burt", V(g_lc1000[[1]])$name, ignore.case=T), V(g_lc1000[[1]])$name[grep("burt", V(g_lc1000[[1]])$name, ignore.case=T)])
lc1000[[1]]$burt <- c(99, 435, 705, 2231, 3187, 3614, 4868, 5501, 9009, 11069, 11781, 12995, 18394, 20859, 23267, 27167, 27651, 36930, 40132, 42243, 47943, 49129, 53420, 56305, 60271, 63816, 67178, 71719, 72507, 80668)
cbind(grep("coleman", V(g_lc1000[[1]])$name, ignore.case=T), V(g_lc1000[[1]])$name[grep("coleman", V(g_lc1000[[1]])$name, ignore.case=T)])
lc1000[[1]]$coleman_fdn <- c(239, 1202, 1846, 3066, 8393, 15630, 17293, 21423, 22152, 25477, 31772, 34426, 36395, 42211, 42921, 44501, 49494, 52746, 54991, 60078, 68177, 68291, 70947, 71839, 74046, 79846, 80670, 80971, 89929)
lc1000[[1]]$coleman_ajs <- c(6, 672, 1651, 5952, 6604, 9900, 12998, 13099, 36726, 41575, 48424, 61034, 65106, 70765, 80671, 83282) 
cbind(grep("granov", V(g_lc1000[[1]])$name, ignore.case=T), V(g_lc1000[[1]])$name[grep("granov", V(g_lc1000[[1]])$name, ignore.case=T)])
lc1000[[1]]$granov <- c(123, 1006, 39242, 59871)
cbind(grep("lin n", V(g_lc1000[[1]])$name, ignore.case=T), V(g_lc1000[[1]])$name[grep("lin n", V(g_lc1000[[1]])$name, ignore.case=T)])
lc1000[[1]]$lin <- c(1540, 2103, 3166, 3865, 4797, 5157, 8010, 8249, 8462, 8694, 16981, 17251, 26616, 28421, 34494, 58434, 64228, 70954, 75746)
cbind(grep("nahapiet", V(g_lc1000[[1]])$name, ignore.case=T), V(g_lc1000[[1]])$name[grep("nahapiet", V(g_lc1000[[1]])$name, ignore.case=T)])
lc1000[[1]]$nahapiet <- c(810, 6625, 23159, 459, 1134, 47697, 89836)
cbind(grep("portes", V(g_lc1000[[1]])$name, ignore.case=T), V(g_lc1000[[1]])$name[grep("portes", V(g_lc1000[[1]])$name, ignore.case=T)])
lc1000[[1]]$portes <- c(919, 9913, 26987, 29786)
cbind(grep("putnam", V(g_lc1000[[1]])$name, ignore.case=T), V(g_lc1000[[1]])$name[grep("putnam", V(g_lc1000[[1]])$name, ignore.case=T)])
lc1000[[1]]$putnam_jd <- c(465, 2453, 7426, 17434, 25496)
lc1000[[1]]$putnam_mdw <- c(79, 1137, 5032, 5108, 5215, 8439, 9510, 10073, 10934, 15672, 22371, 27197, 80691)
lc1000[[1]]$putnam_ba <- c(2942, 4271, 6308, 7597, 8438, 9497, 18494, 22735, 23163, 27198, 33938, 41594, 43641, 45370, 46954, 49114, 65134, 79489, 80775)
lc1000[[1]][[1]] <- NULL #fixing lazy construction

#lc1000[[2]]
lc1000[[2]] <- list(NA)
cbind(grep("adler", V(g_lc1000[[2]])$name, ignore.case=T), V(g_lc1000[[2]])$name[grep("adler", V(g_lc1000[[2]])$name, ignore.case=T)])
lc1000[[2]]$adler <- c(6307)
cbind(grep("bourdieu", V(g_lc1000[[2]])$name, ignore.case=T), V(g_lc1000[[2]])$name[grep("bourdieu", V(g_lc1000[[2]])$name, ignore.case=T)])
lc1000[[2]]$bourdieu <- c(107, 2641, 3486, 3852, 4608, 5359, 10130, 10625, 10961, 12250, 12885, 14690, 15438, 18034, 18271, 18455, 20802, 26416, 35438, 37517, 41523, 46797, 49822, 53132, 56277, 61016, 74471)
cbind(grep("burt", V(g_lc1000[[2]])$name, ignore.case=T), V(g_lc1000[[2]])$name[grep("burt", V(g_lc1000[[2]])$name, ignore.case=T)])
lc1000[[2]]$burt <- c(1345, 1387, 2051, 16924, 22144, 39551, 40804, 45756, 56005, 63176, 72311)
cbind(grep("coleman", V(g_lc1000[[2]])$name, ignore.case=T), V(g_lc1000[[2]])$name[grep("coleman", V(g_lc1000[[2]])$name, ignore.case=T)])
lc1000[[2]]$coleman_fdn <- c(153, 349, 1233, 1395, 1998, 3438, 4549, 5869, 6547, 7145, 8560, 10908, 12181, 13396, 13469, 16195, 17232, 21408, 22165, 24256, 37085, 45072, 53928, 59224, 60037, 66813, 70508, 76718, 76719, 76959, 79368, 82132)
lc1000[[2]]$coleman_ajs <- c(18, 1396, 1604, 3554, 5658, 5696, 27434, 30927, 50483, 70073)
cbind(grep("granov", V(g_lc1000[[2]])$name, ignore.case=T), V(g_lc1000[[2]])$name[grep("granov", V(g_lc1000[[2]])$name, ignore.case=T)])
lc1000[[2]]$granov <- c(459, 885, 2898, 26785, 53931, 55618, 70478, 71212, 77896)
cbind(grep("lin n", V(g_lc1000[[2]])$name, ignore.case=T), V(g_lc1000[[2]])$name[grep("lin n", V(g_lc1000[[2]])$name, ignore.case=T)])
lc1000[[2]]$lin <- c(6613, 6800, 9660, 9776, 14247, 22149, 25195, 31238, 38191, 43664, 45237, 51388, 59869, 69418, 80575, 80971)
cbind(grep("nahapiet", V(g_lc1000[[2]])$name, ignore.case=T), V(g_lc1000[[2]])$name[grep("nahapiet", V(g_lc1000[[2]])$name, ignore.case=T)])
lc1000[[2]]$nahapiet <- c(6339, 8503, 69486)
cbind(grep("portes", V(g_lc1000[[2]])$name, ignore.case=T), V(g_lc1000[[2]])$name[grep("portes", V(g_lc1000[[2]])$name, ignore.case=T)])
lc1000[[2]]$portes <- c(1840, 59511)
cbind(grep("putnam", V(g_lc1000[[2]])$name, ignore.case=T), V(g_lc1000[[2]])$name[grep("putnam", V(g_lc1000[[2]])$name, ignore.case=T)])
lc1000[[2]]$putnam_jd <- c(361, 1341, 8792, 19735, 27621, 33465, 46908, 74393)
lc1000[[2]]$putnam_mdw <- c(334, 427, 1524, 3731, 3775, 4568, 8825, 9749, 16906, 17794, 19121, 25389, 35586, 25647, 30261, 32030, 37469, 38236, 38447, 46051, 61967, 67635, 69568, 75107, 76760, 79359)
lc1000[[2]]$putnam_ba <- c(2212, 2255, 4431, 5671, 7555, 7622, 8050, 11047, 12057, 12205, 12465, 16452, 17793, 18165, 19158, 20824, 25019, 25729, 28548, 30290, 31540, 33466, 38118, 39808, 41553, 45709, 46050, 46280, 50107, 52575, 57550, 60025, 73633, 76759)
lc1000[[2]][[1]] <- NULL #fixing lazy construction

#lc1000[[3]]
lc1000[[3]] <- list(NA)
cbind(grep("adler", V(g_lc1000[[3]])$name, ignore.case=T), V(g_lc1000[[3]])$name[grep("adler", V(g_lc1000[[3]])$name, ignore.case=T)])
lc1000[[3]]$adler <- c(14815)
cbind(grep("bourdieu", V(g_lc1000[[3]])$name, ignore.case=T), V(g_lc1000[[3]])$name[grep("bourdieu", V(g_lc1000[[3]])$name, ignore.case=T)])
lc1000[[3]]$bourdieu <- c(60, 1494, 2904, 3076, 3830, 3901, 4031, 4307, 4681, 7123, 7597, 8345, 10139, 10206, 10711, 15049, 15652, 19428, 19513, 22138, 27701, 27926, 29741, 29904, 30171, 30889, 35812, 37080, 37475, 38227, 39525, 40458, 40971, 43185, 43875, 45609, 46673, 48064, 51880, 53050, 54559, 54696, 55830, 59470)
cbind(grep("burt", V(g_lc1000[[3]])$name, ignore.case=T), V(g_lc1000[[3]])$name[grep("burt", V(g_lc1000[[3]])$name, ignore.case=T)])
lc1000[[3]]$burt <- c(6196, 10105, 25221, 30560, 32404, 45162, 46898)
cbind(grep("coleman", V(g_lc1000[[3]])$name, ignore.case=T), V(g_lc1000[[3]])$name[grep("coleman", V(g_lc1000[[3]])$name, ignore.case=T)])
lc1000[[3]]$coleman_fdn <- c(63, 95, 794, 2195, 4482, 10467, 11098, 12382, 22999, 23521, 26832, 30612, 30665, 32182, 41207, 48167)
lc1000[[3]]$coleman_ajs <- c(12, 1955, 5415, 8348, 10935, 11078, 15012, 19515, 24353, 29486)
cbind(grep("granov", V(g_lc1000[[3]])$name, ignore.case=T), V(g_lc1000[[3]])$name[grep("granov", V(g_lc1000[[3]])$name, ignore.case=T)])
lc1000[[3]]$granov <- c(1258, 8994, 37273)
cbind(grep("lin n", V(g_lc1000[[3]])$name, ignore.case=T), V(g_lc1000[[3]])$name[grep("lin n", V(g_lc1000[[3]])$name, ignore.case=T)])
lc1000[[3]]$lin <-  c(2557, 2706, 7378, 8354, 11851, 15563, 17962, 20510, 25911, 27388, 29580, 30483, 33302, 35285, 37482, 37537, 54042)
cbind(grep("nahapiet", V(g_lc1000[[3]])$name, ignore.case=T), V(g_lc1000[[3]])$name[grep("nahapiet", V(g_lc1000[[3]])$name, ignore.case=T)])
lc1000[[3]]$nahapiet <- c(6216)
cbind(grep("portes", V(g_lc1000[[3]])$name, ignore.case=T), V(g_lc1000[[3]])$name[grep("portes", V(g_lc1000[[3]])$name, ignore.case=T)])
lc1000[[3]]$portes <- c(731, 37288)
cbind(grep("putnam", V(g_lc1000[[3]])$name, ignore.case=T), V(g_lc1000[[3]])$name[grep("putnam", V(g_lc1000[[3]])$name, ignore.case=T)])
lc1000[[3]]$putnam_jd <- c(78, 2720, 2779, 6477, 6573, 13286, 17185, 22221, 23356, 23696, 47643, 49806)
lc1000[[3]]$putnam_mdw <- c(80, 747, 1275, 1350, 2105, 2211, 3755, 5051, 5650, 6478, 7638, 7657, 7680, 8099, 9262, 10644, 15440, 16787, 18968, 22503, 22748, 23012, 30712, 34086, 47012)
lc1000[[3]]$putnam_ba <- c(780, 1101, 1122, 3094, 3355, 3562, 3619, 4751, 6335, 6509, 6510, 7637, 7679, 7726, 7748, 8018, 8333, 16717, 17165, 18247, 19348, 20608, 20739, 21042, 22504, 23766, 24529, 26805, 27391, 29995, 30711, 36237, 36453, 37781, 38992, 39311, 39312, 39313, 39314, 41609, 43891, 47697, 48142, 48501, 58500)
lc1000[[3]][[1]] <- NULL #fixing lazy construction

#lc1000[[4]]
lc1000[[4]] <- list(NA)
cbind(grep("adler", V(g_lc1000[[4]])$name, ignore.case=T), V(g_lc1000[[4]])$name[grep("adler", V(g_lc1000[[4]])$name, ignore.case=T)])
lc1000[[4]]$adler <- 4157
cbind(grep("bourdieu", V(g_lc1000[[4]])$name, ignore.case=T), V(g_lc1000[[4]])$name[grep("bourdieu", V(g_lc1000[[4]])$name, ignore.case=T)])
lc1000[[4]]$bourdieu <- c(995, 1173, 1341, 1862, 3307, 3544, 3748, 6109, 6387, 6465, 9701, 10199, 12532, 17063, 20186, 21778, 25978, 36558, 40874, 42847, 43834, 51939, 53260)
cbind(grep("burt", V(g_lc1000[[4]])$name, ignore.case=T), V(g_lc1000[[4]])$name[grep("burt", V(g_lc1000[[4]])$name, ignore.case=T)])
lc1000[[4]]$burt <-  c(3647, 7059, 9356, 20916, 21523, 21895, 47224)
cbind(grep("coleman", V(g_lc1000[[4]])$name, ignore.case=T), V(g_lc1000[[4]])$name[grep("coleman", V(g_lc1000[[4]])$name, ignore.case=T)])
lc1000[[4]]$coleman_fdn <- c(20, 115, 362, 5079, 5164, 7108, 9492, 9574, 12788, 19653, 23271, 26237, 29679)
lc1000[[4]]$coleman_ajs <- c(1, 454, 563, 793, 3275, 3768, 5080, 5315, 6347, 6419, 22283, 25981, 33524, 40097)
cbind(grep("granov", V(g_lc1000[[4]])$name, ignore.case=T), V(g_lc1000[[4]])$name[grep("granov", V(g_lc1000[[4]])$name, ignore.case=T)])
lc1000[[4]]$granov <- 1017
cbind(grep("lin n", V(g_lc1000[[4]])$name, ignore.case=T), V(g_lc1000[[4]])$name[grep("lin n", V(g_lc1000[[4]])$name, ignore.case=T)])
lc1000[[4]]$lin <- c(3582, 4984, 6627, 8069, 8621, 8884, 9048, 11757, 12001, 12655, 12996, 15990, 19704, 22836, 23585, 30511, 32119, 57750)
cbind(grep("nahapiet", V(g_lc1000[[4]])$name, ignore.case=T), V(g_lc1000[[4]])$name[grep("nahapiet", V(g_lc1000[[4]])$name, ignore.case=T)])
lc1000[[4]]$nahapiet <- c(4188, 45272)
cbind(grep("portes", V(g_lc1000[[4]])$name, ignore.case=T), V(g_lc1000[[4]])$name[grep("portes", V(g_lc1000[[4]])$name, ignore.case=T)])
lc1000[[4]]$portes <- c(1317, 1887)
cbind(grep("putnam", V(g_lc1000[[4]])$name, ignore.case=T), V(g_lc1000[[4]])$name[grep("putnam", V(g_lc1000[[4]])$name, ignore.case=T)])
lc1000[[4]]$putnam_jd <- c(488, 1643, 4145, 10384, 11801, 32215, 47324)
lc1000[[4]]$putnam_mdw <- c(430, 2152, 2302, 6207, 17509, 31882, 42708)
lc1000[[4]]$putnam_ba <- c(1606, 1839, 3031, 3194, 3325, 3556, 4335, 6400, 7073, 7840, 8170, 10944, 11064, 12361, 17510, 17998, 20331, 21302, 21750, 23655, 26218, 26270, 27313, 28584, 29183, 31094, 32570, 43037, 43720, 45815, 49024, 51179, 51843, 52772, 53709)
lc1000[[4]][[1]] <- NULL #fixing lazy construction

#lc1000[[5]]
lc1000[[5]] <- list(NA)
cbind(grep("adler", V(g_lc1000[[5]])$name, ignore.case=T), V(g_lc1000[[5]])$name[grep("adler", V(g_lc1000[[5]])$name, ignore.case=T)])
lc1000[[5]]$adler <- c(4923, 9840, 39066)
cbind(grep("bourdieu", V(g_lc1000[[5]])$name, ignore.case=T), V(g_lc1000[[5]])$name[grep("bourdieu", V(g_lc1000[[5]])$name, ignore.case=T)])
lc1000[[5]]$bourdieu <- c(636, 1043, 1093, 2103, 2302, 2318, 3072, 4453, 6900, 6955, 7684, 12402, 13174, 14030, 20466, 25892, 26199, 27689, 44484, 45986)
cbind(grep("burt", V(g_lc1000[[5]])$name, ignore.case=T), V(g_lc1000[[5]])$name[grep("burt", V(g_lc1000[[5]])$name, ignore.case=T)])
lc1000[[5]]$burt <- c(1374, 5320, 21940, 26183, 32888, 44834)
cbind(grep("coleman", V(g_lc1000[[5]])$name, ignore.case=T), V(g_lc1000[[5]])$name[grep("coleman", V(g_lc1000[[5]])$name, ignore.case=T)])
lc1000[[5]]$coleman_fdn <- c(71, 148, 1556, 3147, 3209, 4154, 4620, 7525, 9614, 13311, 13423, 20524, 26693, 29982, 31042, 35777, 41839, 45755, 48976, 49443)
lc1000[[5]]$coleman_ajs <- c(337, 638, 12100, 26203, 33161, 38884)
cbind(grep("granov", V(g_lc1000[[5]])$name, ignore.case=T), V(g_lc1000[[5]])$name[grep("granov", V(g_lc1000[[5]])$name, ignore.case=T)])
lc1000[[5]]$granov <- c(346, 26585, 24986)
cbind(grep("lin n", V(g_lc1000[[5]])$name, ignore.case=T), V(g_lc1000[[5]])$name[grep("lin n", V(g_lc1000[[5]])$name, ignore.case=T)])
lc1000[[5]]$lin <- c(1749, 3083, 3457, 3458, 9376, 11856, 14901, 16040, 16827, 17625, 32821, 33849, 41862, 42770, 45232, 49102)
cbind(grep("nahapiet", V(g_lc1000[[5]])$name, ignore.case=T), V(g_lc1000[[5]])$name[grep("nahapiet", V(g_lc1000[[5]])$name, ignore.case=T)])
lc1000[[5]]$nahapiet <- 3461
cbind(grep("portes", V(g_lc1000[[5]])$name, ignore.case=T), V(g_lc1000[[5]])$name[grep("portes", V(g_lc1000[[5]])$name, ignore.case=T)])
lc1000[[5]]$portes <- 1068
cbind(grep("putnam", V(g_lc1000[[5]])$name, ignore.case=T), V(g_lc1000[[5]])$name[grep("putnam", V(g_lc1000[[5]])$name, ignore.case=T)])
lc1000[[5]]$putnam_jd <- c(25, 1793, 3122, 8207, 10501, 21925, 29452, 18868)
lc1000[[5]]$putnam_mdw <- c(31, 132, 1257, 2079, 2361, 4195, 5299, 5428, 6005, 6876, 7435, 8916, 13026, 13912, 14112, 15951, 17264, 17793, 19692, 34321, 44380, 45239)
lc1000[[5]]$putnam_ba <- c(1258, 1461, 1719, 1973, 2704, 3611, 3687, 4166, 4464, 4687, 4761, 5146, 5297, 5391, 6640, 6915, 8260, 11383, 11426, 11820, 14791, 17265, 17919, 19226, 19693, 20967, 21769, 22212, 23925, 26096, 26967, 27679, 28763, 29349, 31441, 32541, 35220, 35784, 36204, 36691, 39927, 40593, 41133, 43295, 43670, 44379, 45240, 46185, 48055, 49334, 50062)
lc1000[[5]][[1]] <- NULL #fixing lazy construction

#lc1000[[6]]
lc1000[[6]] <- list(NA)
cbind(grep("adler", V(g_lc1000[[6]])$name, ignore.case=T), V(g_lc1000[[6]])$name[grep("adler", V(g_lc1000[[6]])$name, ignore.case=T)])
lc1000[[6]]$adler <- 3362
cbind(grep("bourdieu", V(g_lc1000[[6]])$name, ignore.case=T), V(g_lc1000[[6]])$name[grep("bourdieu", V(g_lc1000[[6]])$name, ignore.case=T)])
lc1000[[6]]$bourdieu <- c(138, 140, 319, 779, 853, 964, 1470, 1697, 2635, 2913, 3735, 6108, 7525, 7698, 10245, 11166, 12852, 16480, 18204, 18915, 23313, 23350, 28886, 30231, 31285, 31766, 33110, 35181, 35498, 39491, 39917, 41085, 44349)
cbind(grep("burt", V(g_lc1000[[6]])$name, ignore.case=T), V(g_lc1000[[6]])$name[grep("burt", V(g_lc1000[[6]])$name, ignore.case=T)])
lc1000[[6]]$burt <- c(271, 1553, 2949, 3129, 5457, 8610, 23711, 29135, 29362, 31992)
cbind(grep("coleman", V(g_lc1000[[6]])$name, ignore.case=T), V(g_lc1000[[6]])$name[grep("coleman", V(g_lc1000[[6]])$name, ignore.case=T)])
lc1000[[6]]$coleman_fdn <- c(190, 239, 280, 3065, 5073, 5659, 7102, 15629, 22695, 26932, 32863, 34666, 39888, 40626)
lc1000[[6]]$coleman_ajs <- c(43, 89, 819, 3796, 9911, 10518, 11787, 17402, 25050, 25784, 27590, 35246, 39033, 41021)
cbind(grep("granov", V(g_lc1000[[6]])$name, ignore.case=T), V(g_lc1000[[6]])$name[grep("granov", V(g_lc1000[[6]])$name, ignore.case=T)])
lc1000[[6]]$granov <- c(289, 328, 7490, 15245, 17268, 37921)
cbind(grep("lin n", V(g_lc1000[[6]])$name, ignore.case=T), V(g_lc1000[[6]])$name[grep("lin n", V(g_lc1000[[6]])$name, ignore.case=T)])
lc1000[[6]]$lin <- c(1667, 1782, 3115, 3708, 5162, 6633, 16072, 16215, 16574, 16610, 20127, 25471, 27296, 30321, 32430, 41842)
cbind(grep("nahapiet", V(g_lc1000[[6]])$name, ignore.case=T), V(g_lc1000[[6]])$name[grep("nahapiet", V(g_lc1000[[6]])$name, ignore.case=T)])
lc1000[[6]]$nahapiet <- c(3382, 31634)
cbind(grep("portes", V(g_lc1000[[6]])$name, ignore.case=T), V(g_lc1000[[6]])$name[grep("portes", V(g_lc1000[[6]])$name, ignore.case=T)])
lc1000[[6]]$portes <- c(1010, 31338)
cbind(grep("putnam", V(g_lc1000[[6]])$name, ignore.case=T), V(g_lc1000[[6]])$name[grep("putnam", V(g_lc1000[[6]])$name, ignore.case=T)])
lc1000[[6]]$putnam_jd <- c(768, 4291, 10717, 13113, 16623, 11420)
lc1000[[6]]$putnam_mdw <- c(553, 2041, 3221, 4517, 14271, 25638, 27579, 40774, 43895)
lc1000[[6]]$putnam_ba <- c(1991, 2490, 3474, 4777, 6464, 6526, 7117, 8459, 11173, 11336, 12950, 15220, 15879, 17568, 18652, 19268, 20668, 23372, 23866, 26962, 28113, 30506, 31231, 36855, 40375, 40684)
lc1000[[6]][[1]] <- NULL #fixing lazy construction

# Now for the citation network
cites <- unlist(strsplit(df_art$CR, "[;]"))
#unique(cites[grep("adler", cites, ignore.case=T)])
adler <- c("ADLER PS, 2002, ACAD MANAGE REV, V27, P17, DOI 10.2307/4134367", "ADLER P.S., 2002, ACAD MANAGEMENT REV", "ADLER P. S., 2002, ACADEMY OF MANAGEMEN, V27, P17", "ADLER PS, ACAD MANAGEMENT REV, V27, P17", "ADLER P, 2002, SOCIAL CAPITAL PROSP", "ADLER P. A., 2002, ACAD MANAGE REV, V27, P5")

#unique(cites[grep("bourdieu", cites, ignore.case=T)])
bourdieu <- c("BOURDIEU P., 1986, HDB THEORY RES SOCIO, DOI DOI 10.1002/9780470755679.CH15", "BOURDIEU P., 1985, HDB THEORY RES SOCIO, P241", "BOURDIEU P., 1983, HDB THEORY", "BOURDIEU P., 1986, HDB THEORY RES SOCIO, V241, P19", "BOURDIEU P., 1986, THE FORMS OF CAPITAL", "BOURDIEU P., 1986, HDB THEORY RES SOCIO", "BOURDIEU P, 1986, HDB THEORY RES SOCIO, P40, DOI DOI 10.1002/9780470755679.CH15", "BOURDIEU P., 1983, HDB THEORY RES SOCIO", "BOURDIEU PIERRE, 1983, HDB THEORY RES SOCIO", "BOURDIEU PIERRE, 1985, HDB THEORY RES SOCIO", "BOURDIEU J.E., 1986, HDB THEORY RES SOCIO, P46", "BOURDIEU P, 1986, HDB THEORY RES SOCIO, V241, P258", "BOURDIEU PIERRE, THE FORMS OF CAPITAL", "BOURDIEU P., 1986, HDB THEORY RES SOCIO, P214", "BOURDIEU P, 1986, FORMS CAPITAL HDB TH", "BOURDIEU P., 2008, FORMS CAPITAL READIN, P280, DOI [10.1002/9780470755679.CH15, DOI 10.1002/9780470755679.CH15]", "BOURDIEU PIERRE, 1986, HDB THEORY RES SOCIO, V241, P241, DOI DOI 10.1002/9780470755679.CH15", "BOURDIEU P., 1986, FORMS CAPITAL, P241", "BOURDIEU P., 1986, FORMS SOCIAL CAPITAL", 
              "BOURDIEU PIERRE, 1986, HDB THEORY RES SOCIO, V241, P248", "BOURDIEU P., 1986, HDB THEORY RES SOCIO, P117", "BOURDIEU P, 1985, HDB THEORY RES SOCIO, P214", 
              "BOURDIEU P., 1986, HANDBOOK OF THEORY A", "BOURDIEU P, 1985, HANDBOOK OF THEORY A, P47", "BOURDIEU P., 1986, HDB THEORY RES SOCIO, P96", "BOURDIEU P., 1986, HDB THEORY RES SOCIO, P240", "BOURDIEU PIERRE, 1979, HDB THEORY RES SOCIO, P241", "BOURDIEU P, HDB THEORY RES SOCIO", "BOURDIEU P, 1986, HDB THEORY RES SOCIO, P13", "BOURDIEU P, 1986, HDB THEORY RES SOCIO, PXXIV", "BOURDIEU P., 1991, HDB THEORY RES SOCIO, P231", "BOURDIEU P, 1986, HDB THEORY RES SOCIO, P41", "BOURDIEU P., 1983, HDB THEORY RES SOCIO, P46", "BOURDIEU PIERRE, 1986, HDB THEORY RES SOCIO, P231", "BOURDIEU PIERRE, 1986, HDB THEORY RES SOCIO, P281", "BOURDIEU P., 1986, HDB THEORY RES SOCIO, P241", "BOURDIEU P, 1986, HDB THEORY RES ED", "BOURDIEU P., 1985, FORMS CAPITAL", "BOURDIEU P., 1991, HDB THEORY RES SOCIO, P241", "BOURDIEU P, 1983, HDB THEOR RES SOCIOL", "BOURDIEU P., 1986, HDB RES SOCIOLOGY ED", "BOURDIEU P, 1986, HDB THEORY RES SOCIO, P71", "BOURDIEU PIERRE, 1987, HDB THEORY RES SOCIO, P241", "BOURDIEU P, 1986, FORMS CAPITAL HDB TH, V241, P19", "BOURDIEU P., 1985, HDB THEORY RES SOCIO, V241, P19", "BOURDIEU P., 1986, HDB THEORY RES SOCIO, P183", "BOURDIEU PTHE, 1986, HDB THEORY RES SOCIO, P1993", "BOURDIEU P, 1985, HDB THEORY RES SOCIO, V241, P58", "BOURDIEU P, 1986, HDB THEORY RES SOCIO, PS241", "BOURDIEU P, 1983, FORMS CAPITAL", "BOURDIEU P, 1986, HDB THEORY RES SOCIO, P239", "BOURDIEU P, 1983, HDB THEORY SOCIOLOGY", "BOURDIEU P, 1985, HDB THEORY RES SCOIO", "BOURDIEU PIERRE, 1984, HDB THEORY RES SOCIO, P241", "BOURDIEU P, 1986, HDB THEORY RES SOCIO, P284", "BOURDIEU P, 1986, HDB THEORY RES SOCIO, P287", "BOURDIEU, 1986, HDB THEORY RES SOCIO", "BOURDIEU C, 1986, HDB THEORY RES SOCIO, P241", "BOURDIEU P., 1980, HDB THEORY RES SOCIO, P241", "BOURDIEU PIERRE, 1986, HDB THEORY RES SOCIO, P186", "BOURDIEU P, 1968, HDB THEORY RES SOCIO, P241", "BOURDIEU P, 1985, HDB THEORY RES SOCIO, P8", "BOURDIEU P, 1985, FORMS SOCIAL CAPITAL", "BOURDIEU P., 1985, HDB THEORY RES SOCIO, P251", "BOURDIEU P., 1986, HDB THEORY RES SOCIO, P24", "BOURDIEUX P, 1985, HDB THEORY RES SOCIO", "BOURDIEU D, 1986, HDB THEORY RES SOCIO, P241", "BOURDIEU P, 1997, HDB THEORY RES SOCIO", "BOURDIEU P., 1993, HDB THEORY RES SOCIO", "BOURDIEU PIERRE, 1986, HDB THEORY RES SOCIO, P249", "BOURDIEU PIERRE, 1986, HDB THEORY RES SOCIO, P377", "BOURDIEU P., 1986, THE FORMS OF CAPITAL, P280", "BOURDIEU P., 2002, FORMS CAPITAL HDB TH, P32", "BOURDIEU P, 1983, FORMS CAPITAL HDB TH", "BOURDIEU D, 1986, HDB THEORY RES SOCIO", "BOURDIEU P., 1991, HDB THEORY RES SOCIO", "BOURDIEU P, 2011, THE FORMS OF CAPITAL", "BOURDIEU P., 2018, HDB THEORY RES SOCIO, P241", "BOURDIEU PIERRE, 1986, HDB THEORY RES SOCIO, DOI [10.2307/2069964, DOI 10.2307/2069964]", "BOURDIEU P., 1986, HDB THEORY RES SOCIO, P573", "BOURDIEU P., 1986, HDB THEORY RES SOCIO, P56", "BOURDIEU P, 1986, HDB THEORY SOCIOLOGY", "BOURDIEU P, 1986, HDB THEORY RES SOCIO, PCH9", "BOURDIEU P., 2001, FORM CAPITAL SOCIOLO", "BOURDIEU P, 1986, HDB THEORY RESEARCHF", "BOURDIEU P., 1986, DB THEORY RES SOCIOL", "BOURDIEU P., 1986, FORMS CAPITAL HDB JU", "BOURDIEU PIERRE., 1986, HDB THEORY RES SOCIO", "BOURDIEU P., 1986, HDB THEORY RES SOCIO, P15", "BOURDIEU P, 1989, HDB THEORY RES SOCIO, P241", "BOURDIEU PIERRE, 1986, FORMS CAPITAL, V241, P241", "BOURDIEU P., 1986, FORMS CAPITAL CULTUR, P81", "BOURDIEU P., 1990, HDB THEORY RES SOCIO, P241", "BOURDIEU P., 1983, HDB THEORY RES SOCIO, P41", "BOURDIEU P., 1986, HDB THEORY RES SOCIO, P57", "BOURDIEU PIERRE, 1986, HDB THEORY RES SOCIO, P243", "BOURDIEU PIERRE, 1986, HDB THEORY RES SOCIO, P241", "BOURDIEU P, 1986, FORMS CAPITAL HDB OF, P41", "BOURDIEU PIERRE, 2000, FORMAS CAPITAL CAPIT", "BOURDIEU P, 1986, HDB THEORY RES SOCIA", "BOURDIEU B, 1986, HDB THEORY RES SOCIO", "BOURDIEU P, 1985, HDB THEORY RES SOCIO, P249", "BOURDIEU P, 1986, HDB THEORY RES SOCIO, P260", "BOURDIEU P, 1982, HDB THEORY RES SOCIO", "BOURDIEU P., 1989, THE FORMS OF CAPITAL, P241")

#unique(cites[grep("burt", cites, ignore.case=T)])
burt <- c("BURT R, 1992, STRUCTURAL HOLES SOC", "BURT RS, 1992, STRUCTURAL HOLES", "BURT R. S., 2009, STRUCTURAL HOLES SOC", "BURT R.S., 1995, STRUCTURAL HOLES SOC", "BURT R.S, 1992, STRUCTURAL HOLES STR", "BURT RONALD, 1995, STRUCTURAL HOLES THE", "BURT S., 1992, STRUCTURAL HOLES SOC", "BURT R. S., 1992, STRUCTURAL HOLE", "BURT R. S., 1992, SOCIAL STRUCTURE COM", "BURT R.S., 1992, STRUCTURAL HOLES THE", "BURT R., 1992, STRUCTURE HOLES SOCI", "BURT P., 1992, STRUCTURAL HOLES SOC", "BURT RONALD S., 1992, STRUCTURAL HOLES SOC", "BURT R., 1992, STRUCTURLA HOLES SOC", "BURT R., 1992, STRUCTURAL HOLES SOC, P8, DOI DOI 10.1016/J.JET.2007.01.006", "BURT G., 1992, STRUCTURAL HOLES", "BURT RS, 1992, STRUCTURAL HOLE SOCI", "BURT R, 1991, STRUCTURAL HOLES SOC", "BURT RS, 1995, STRUCTURAL HOLES SOC, P57", "BURT R. S., 1992, STRUCTURAL HOLES VER", "BURT R., 1995, STRUCTURAL HOLES", "BURT RS, 1992, SIRUCTURAL HOLES SOC", "BURT R, 1992, STRCUTURAL HOLES SOC", "BURT RS, 1992, STRUCTURED HOLES SOC", "BURT RS, 1992, STRUCTURE", "BURT R.S., 1992, STRUCTURAL HALES SOC", "BURT RS, 1992, STRUCUTRAL HOLES SOC", "BURT B. S, 1992, STRUCTURAL HOLES SOC", "BURT RS, 1992, STRUCTURAL HOLES SOC, P25", "BURT R, 1993, STRUCTURAL HOLES SOC", "BURT TS, 1992, STRUCTURAL HOLES", "BURT R.S., 1992, STRUCTURAL HOLES SOC, P38, DOI DOI 10.1177/0265407512465997", "BURT RONALD, 1982, STRUCTURAL HOLES", "BURT RS, 1992, STRUCUTRAL HOLES", "BURT R. S, 2009, STRUCTURAL HOLES SOC, P23", "BURT R. S, 2001, STRUCTURAL HOLES VER", "BURT R., 2000, STRUCTURAL HOLES SOC", "BURT R. S., 1992, STRUCTURAL HOLES SOC, P75", "BURT R. S., 1995, SOCIAL STRUCTURE COM", "BURT R. S., 1992, SRUCTURAL HOLES SOCI", "BURT RS, 1992, STRUCTURAL HOLES SOC, P313", "BURT, 1992, STRUCTURAL HOLES, P9")

#unique(cites[grep("coleman", cites, ignore.case=T)])
coleman_ajs <- c("COLEMAN JS, 1988, AM J SOCIOL, V94, PS95, DOI 10.1086/228943", "COLEMAN J.S., 1988, AM J SOCIOLOGY S, V94, PS95", "COLEMAN J., 1988, AM J SOCIOL, V94, P119", "COLEMAN JS, 1988, AM J SOCIOL, V94, P95, DOI DOI 10.1086/228943", "COLEMAN JAMES S, 1988, AM J SOCIOL, V94, PS95, DOI DOI 10.1086/229033", "COLEMAN JS, 1988, AM J SOCIOLOGY, V94", "COLEMAN JS, 1988, AM J SOCIOL, V94, PS95", "COLEMAN J., 1988, AM J SOCIOL, V94, P95", "COLEMAN J. S., 1988, SOCIAL CAPITAL DEV H", "COLEMAN J. S., 1988, AM J SOCIOL, V93, P291", "COLEMAN J, 1988, AM J SOCIOL, V94, P945", "COLEMAN J. S., 1988, AM J SOCIOL, V94, PS94, DOI DOI 10.1086/228943", "COLEMAN S, 1988, AM J SOCIOL, V94, P95", "COLEMAN J, 1988, AM J SOCIOLOGY S, V95, P95", "COLEMAN J. S., 1988, AM J SOCIOLOGY", "COLEMAN JS, 1998, AM J SOC S, V94, PS106", "COLEMAN JS, 1998, AM J SOC S, V94, PS114", "COLEMAN JS, 1988, AM J SOCIOLOGY S, V94, PS98", "COLEMAN HS, 1988, AM J SOCIOLOGY S, V94, PS95", "COLEMAN J, 1988, AM J SOCIOLOGY S, P95", "COLEMAN J., 1988, AM J SOCIOL, V94, P595, DOI [10.1086/229033, DOI 10.1086/229033]", "COLEMAN JS, 1988, SOCIAL CAPITAL CREAT", "COLEMAN JS, 1998, AM J SOCIOL, P94", "COLEMAN JS, 1988, AM J SOCIAL SO, V94", "COLEMAN SJ, 1988, AM J SOCIOLOGY S, V94", "COLEMAN J, AM J SOCIOLOGY S, V94, P99", "COLEMAN JS, 1990, AM J SOCIOL, P95", "COLEMAN J. S., 1998, SOCIAL CAPITAL CREAT", "COLEMAN JS, 2000, SOCIAL CAPITAL CREAT", "COLEMAN J, 1988, AM J SOCIOL, V7, P95", "COLEMAN J, 1988, AM J SOCIOL, V94, P596", "COLEMAN JS, 1988, AM J SOCIOL, V94, PS99", "COLEMAN J, 1988, AM J SOCIOLOGY S, V94, PS75", "COLEMAN JAMES S., 1988, AM J SOCIOL, V94, PS100", "COLEMAN J., 1998, AM J SOCIOL, V94, P97", "COLEMAN JS, 1988, AM J SOCIOL, PS956", "COLEMAN J. S, 1988, AM J SOCIOL, V94, PS91", "COLEMAN JS, 1988, AM J SOCIOLOGY S, V94, PS95", "COLEMAN J, 1990, AM J SOCIOL, V94, PS95", "COLEMAN JS, 1989, AM J SOCIOLOGY S, V94, P98", "COLEMAN J. S, 2000, SOCIAL CAPITAL CREAT","COLEMAN J.S., SOCIAL CAPITAL CREAT", "COLEMAN J, 1988, AM J SOCIOL, V94, P85", "COLEMAN J. S., 1989, SOCIAL CAPITAL CREAT", "COLEMAN, 1988, AM J SOCIOLOGY S, V94, P94", "COLEMAN J, 1988, 1988, V94, P95", "COLEMAN JAMES S., 1988, AM J SOCIOL, V94, P106", "COLEMAN J S, 1988, SOCIAL CAPITAL CREAT, P5", "COLEMANJAMES S, 1988, AM J SOCIOL, V94, PS95", "COLEMAN, 1988, AM J SOCIOL, V94, P95, DOI DOI 10.1086/228943", "COLEMAN J., 1989, SOCIAL CAPITAL CREAT, PS105", "COLEMAN JAMES, 1988, AM J SOCIOL", "COLEMAN JS, 1988, SOCIAL CAPITAL CREAT, P17", "COLEMAN J, 1988, AM J SOCIOL      JUL, V94", "COLEMAN JS, 1988, AM J SOCIOL, V94, PA95", "COLEMAN, 1988, AM J SOCIOL, V94, PS95")
coleman_fdn <- c("COLEMAN J., 1990, FDN SOCIAL THEORY", "COLEMAN J.S., 1994, FDN SOCIAL THEORY", "COLEMAN J.S., 1990, FDN SOCIAL THEORY, P1014", "COLEMAN J.S., 1994, FDN SOCIAL THEORY, P993", "COLEMAN J., 1990, FDN SOCIAL THEORY CO", "COLEMAN JAMES., 1993, FDN SOCIAL THEORY", "COLEMAN J.S., 1990, FDN SOCIAL THEORY, P300, DOI DOI 10.2307/2579680", "COLEMAN J.S., 1994, FOUNDATIONS OF SOCIA", "COLEMAN J. S, 1990, FOUNDATIONS OF SOCIA", "COLEMAN JS, 1994, FDN SOCIAL THEORY, P1020", "COLEMAN J., 1990, SOCIAL CAPITAL FDN S", "COLEMAN J., 1998, FDN SOCIAL THEORY", "COLEMAN JS, 2000, FDN SOCIAL THEORY", "COLEMAN S. JAMES, 1990, FDN SOCIAL THEORY", "COLEMAN JS, 1990, FDN SOCIAL THEORY, P175", "COLEMAN J.S., 1990, FDN SOCIAL THEORY, P32", "COLEMAN R, 1990, FDN SOCIAL THEORY", "COLEMAN J. S., 1990, FDN SOCIAL THEORY", "COLEMAN J. S., 1990, FDN SOCIAL THEORY, VXVI", "COLEMAN JS, 1990, FDN SOCIAL THEORY, P1", "COLEMAN JAMES S., 1994, FUNDATIONS SOCIAL TH", "COLEMAN J., 1990, FDN SOCIAL THEORIES", "COLEMAN J.S., 1994, FDN SOCIAL THEORIES", "COLEMAN JR, 2003, FDN SOCIAL CAPITAL, P133", "COLEMAN JS, 1988, FDN SOCIAL THEORY", "COLEMAN J., 2006, FDN SOCIAL THEORY, P55", "COLEMAN JAMES S., 1990, FDN SOCIAL THEORY, P241", "COLEMAN J, 1988, FDN SOCIAL CAPITAL, P136", "COLEMAN JAMES S., 1960, FDN SOCIAL THEORY", "COLEMAN JS, 1990, FDN SOCIAL THEORY, P371", "COLEMAN J. S., 1990, FDN SOCIAL THEORY CA", "COLEMAN J. S., 1990, FDN SOCIAL THOERY", "COLEMAN J, 1990, FDN SOCIAL THERAPY", "COLEMAN JS, 1990, FDN SOC THEORY", "COLEMAN JS, 1990, FDN SCO THEORY", "COLEMAN J, 1990, FOUNDATIONS SOCIAL T", "COLEMAN JS, 1990, FUNDATIONS SOCIAL TH", "COLEMAN J. S., 1989, FDN SOCIAL THEORY", "COLEMAN JS, 1990, FDN SOCIAL THEORY BE", "COLEMAN J, 1990, FDN SOCAL THEORY", "COLEMAN J, 1990, FDN SOCIAL THEORY, P91", "COLEMAN J, 1990, FND SOCIAL THEORY", "COLEMAN J. S, 1990, FDN SOCIAL THEORY, P993", "COLEMAN JS, 1990, FDN SOCIAL THEORY, P317", "COLEMAN J, 1995, FDN SOCIAL THEORY", "COLEMAN J, 1990, FDN SOCIAL THEORYT", "COLEMAN JS, 1926, FDN SOCIAL THEORY", "COLEMAN J. S., 1991, FDN SOCIAL THEORY", "COLEMAN J., 1990, FDN SOCIAL THEORY, V3", "COLEMAN J, 1990, FDN SOCIAL THEORY, P301, DOI 10.4337/9781848449305.00073", "COLEMAN J. S., 1990, FDN SOCIAL CAPITAL T", "COLEMAN J, 1991, FDN SOCAL THEORY", "COLEMAN J, 1990, F SOCIAL THEORY", "COLEMAN J, 1992, F SOCIAL THEORY", "COLEMAN JS, 1990, F SOCIAL THEORY BELK", "COLEMAN J. S., 1990, FDN SOCIAL THEORY, P87", "COLEMAN J., 1990, FDN SOCIAL THEORY, P55", "COLEMAN JAMES S., 1990, FDN SOCIOLOGICAL THE", "COLEMAN J., FDN SOCIAL THEORY", "COLEMAN J., 1990, FDN SOCIAL THEORY HA", "COLEMAN, 1990, FDN SOCIAL THEORY", "COLEMAN J., 1988, FDN SOCIAL CAPITAL T", "COLEMAN J, 1999, FDN SOCIAL THEORY", "COLEMAN J, 1994, FDN SOCIAL THEORY 19", "COLEMAN J.S., 1990, FDN SOCIAL THEROY", "COLEMAN J. S., 1994, FONDATIONS SOCIAL TH", "COLEMAN J. S., 1990, FDN SOCIAL THEORY, V1", "COLEMAN, 1994, FDN SOCIAL THEORY", "COLEMAN J S, 1990, FDN SOCIAL THEORY, DOI [10.1093/PAN/MPI014, DOI 10.1093/PAN/MPI014]", "COLEMAN J.S., 1990, FDN SOCIAL THEORY, P41", "COLEMAN JS, 2011, FUNDAMENTOS TEORIA S", "COLEMAN J. S., 1990, FDN SOCIAL THEORY, P302", "COLEMAN J. S., 1990, FDN SOCIAL CHOICE TH", "COLEMAN J., 1993, FDN SOCIAL THEORY", "COLEMAN J, 1988, FDN SOCIAL CAPITAL, P16", "COLEMAN J., 2005, FONDAMENTI TEORIA SO", "COLEMAN JS, 1990, FDN SOCIAL THEORY SO, V69, P993", "COLEMANS J, 1990, FDN SOCIAL THEORY", "COLEMAN JAMES S, 1994, FDN SOCIAL THEORY, P91", "COLEMAN J. S, 1999, THEORETICAL FDN SOCI", "COLEMAN JS, 1990, FDN SOCIAL THEORY, PCH12", "COLEMAN JS, 1990, FDN SOCIAL THORY", "COLEMAN, 1990, FDN SOCIAL THEORY, P302")
  
#unique(cites[grep("granov", cites, ignore.case=T)])
granov <- c("GRANOVETTER MS, 1973, AM J SOCIOL, V78, P1360, DOI 10.1086/225469", "GRANOVETTER M, 1973, AM J SOCIOL, P78", "GRANOVETTER MARK, 1973, AM J SOCIOLOGY, DOI 10.1086/225469", "GRANOVETTER M.S., 1973, AM J SOCIOLOGY, V78", "GRANOVETTER MARK, 1973, AM J SOCIOL, V78, P1360", "GRANOVETTER M, 1973, AM J SOCIOL, V78, P1063", "GRANOVETTER M. S., 1973, AM J SOCIOL, V28, P1260", "GRANOVETTER M, 1973, AM J SOCIOL, V6, P1350", "GRANOVETTER MS, 1973, AM J SOCIOL, V78, P1369", "GRANOVETTER MS, 2004, AM J SOCIOL, V78, P1360", "GRANOVETTER M, 1973, AM J SOCIOL, V78, P360", "GRANOVETTER MS, 1973, AM J SOCIOL, V78, P1630", "GRANOVETTER M., 1973, AM J SOCIOL, V18, P279", "GRANOVETTER MS, 1973, AM J SOCIOL, V58, P182", "GRANOVETTER M, 1973, AM J SOCIOL, V6, P1360", "GRANOVETTER MS, 1973, AM J SOCIOL, V55, P178", "GRANOVETTER MS, 1973, AM J SOCIOL, V78, P1361", "GRANOVETTER M, 1973, AM J SOCIOL, V78, P1350", "GRANOVETTER M., 1973, STRENGTH WEAK TIES, DOI [10.1086/225469, DOI 10.1086/225469]", "GRANOVETTER M, 1974, AM J SOCIOL, V78, P1360", "GRANOVETTER M, 1973, AM J SOCIOL, P1360", "GRANOVETTER M, 1973, AM J SOCIOL, P1560", "GRANOVETTER MS, 1973, 1973, V78, P1360", "GRANOVETTER M., 1973, AM J SOCIOL, V78, P481", "GRANOVETTER M. S., 1973, AM J SOCIOL, V2, P725", "GRANOVETTER MARK, 1973, AM J SOCIOL, V78, P12", "GRANOVETTER M. S., 1973, AM J SOCIOL, V2, P740", "GRANOVETTER M. S, 1973, AM J SOCIOL", "GRANOVETTER M. S., 1970, AM J SOCIOL, V78, P1360", "GRANOVETTER M. S., 1973, AM J SOCIOLOGY, V6") 

# unique(cites[grep("lin n", cites, ignore.case=T)])
lin <- c("LIN NAN, 2001, SOCIAL CAPITAL THEOR", "LIN N., 2008, SOCIAL CAPITAL INT R, P1", "LIN N., 2010, SOCIAL CAPITAL INT R", "LIN N., 2001, SOCIAL CAPITAL", "LIN N., 2002, SOCIAL CAPITAL THEOR", "LIN N, 2001, SOCIAL CAPITAL THEOR, P57, DOI DOI 10.1017/CBO9780511815447", "LIN NAN, 2001, SOCIAL CAPITAL THEOR, P57", "LIN N., 2001, SOCIAL CAPITAL THEOR, P3, DOI DOI 10.1017/CBO9780511815447", "LIN N, 2001, SOCIAL CAPITAL THEOR, P95", "LIN N., 2001, SOCIAL CAPTIAL", "LIN N., 2001, SOCIAL CAPITAL A THE", "LIN N., 2001, SOCIAL CAPITAL THEOR, DOI [DOI 10.1017/CBO9780511815447, 10.1017/CBO9780511815447]", "LIN N., 2002, SOCIAL CAPITAL THEOR, V19", "LIN N, 2003, SOCIAL CAPITAL THEOR", "LIN N., 2001, SOCIAL SAPITAL THEOR", "LIN N., 2001, SOCIAL CAPITAL THEOR, P12", "LIN N, 2001, SOCIAL CAPITAL THEOR", "LIN N., 2002, SOCIAL CAPITAL A THE", "LIN N., 2001, SOCIAL CAPITAL THEOR", "LIN NAN, 2001, SOCIAL CAPITAL THEOR, P1", "LIN N., 2001, SOCIAL CAPITAL THEOR, P6", "LIN N, 2011, SOCIAL CAPITAL THEOR", "LIN N., 2001, SOCIAL CAPITAL THEOR, P278", "LIN NAN, 2001, SOCIAL CAPITAL THEOR, P122", "LIN N., 2002, SOCIAL CAPITAL", "LIN N, 2000, SOCIAL CAPITAL THEOR", "LIN N, 2000, SOCIAL CAPITAL THEOR, P3", "LIN N., 2001, SOCIAL CAPITAL THEOR, P19", "LIN N., 2001, SOCIAL CAPITAL THEOR, P173", "LIN N., 2004, SOCIAL CAPITAL THEOR", "LIN NAN, 2001, SOCIAL CAPITAL THEOR, P143", "LIN N, 2001, SOCIAL CAPITAL CAMBR", "LIN N, 2001, SOCIAL CAPITAL THEOT", "LIN N, 2001, SOCIAL CAPITAL THEOY", "LIN N, 2000, SOCIAL CAPITAL THEOR, P57", "LIN N, 2001, SOCIAL CAPTIAL THEOR", "LIN N, 2002, SCH SOCIAL CAPITAL D, P247", "LIN N, 2001, SOCIAL CAPITAL THEOR, P150", "LIN N, 2001, SOCIAL CAPTITAL THEO", "LIN N, 2001, SOCIAL CAPITAL THEOR, PS3", "LIN N, 2001, PREFACE SOCIAL CAPIT", "LIN N., 2001, SOCIAL CAPITAL THEOR, P51", "LIN N, 2011, INTRO SOCIAL CAPITAL", "LIN N., 2001, SOCIAL CAPITAL THEOR, DOI [10.1017/CBO9780511815447, DOI 10.1017/CB09780511815447]", "LIN N., 2001, SOCIAL CAPITAL THEOR, P365", "LIN N., 2001, SOCIAL CAPITAL THEOR, DOI [10.1086/380538, DOI 10.1086/380538]", "LIN N., 2002, SOCIAL CAPITAL THEOR, V19, P55", "LIN N., 2001, SOCIAL CAPITAL THEOR, DOI [10.1007/S13398-014-0173-7.2, DOI 10.1007/S13398-014-0173-7.2]", "LIN N, 1999, SOCIAL CAPITAL THEOR", "LIN N, 2001, HDB SOCIAL CAPITAL", "LIN N, 2001, SOCIAL CAPITAL THEOR, P25", "LIN N., 2001, SOCIAL CAPITAL THEOR, V333", "LIN N., 2005, SOCIAL CAPITAL THEOR, P168", "LIN N., 2005, SOCIAL CAPITAL THEOR, P3", "LIN N., 2002, SOCIAL CAPITAL THEOR, P57")
 
#unique(cites[grep("nahap", cites, ignore.case=T)])
nahapiet <- c("NAHAPIET J, 1998, ACAD MANAGE REV, V23, P242, DOI 10.2307/259373", "NAHAPIET J., 1998, ACAD MANAGE REV, V24, P538", "NAHAPIET J., 1998, ACAD MANAGEMENT REV", "NAHAPIET J, 1998, ACAD MANAGE REV, V38, P390", "NAHAPIET J, 1998, ACAD MANAGEMENT REV, V23", "NAHAPIET J., 2011, ACAD MANAGE REV, V23, P242", "NAHAPIET J., 1998, SOCIAL CAPITAL INTEL, P242")
 
#unique(cites[grep("portes", cites, ignore.case=T)])
portes <- c("PORTES A, 1998, ANNU REV SOCIOL, V24, P1, DOI 10.1146/ANNUREV.SOC.24.1.1", "-PORTES A, 1998, ANNU REV SOCIOL, V24, P1, DOI 10.1146/ANNUREV.SOC.24.1.1", "PORTES A, 1998, ANN REV SOCIOLOGY, P24", "PORTES A, 1998, ANNU REV SOCIOL, V24, P467", "PORTES A, 1998, ANNU REV SOCIOL, P241", "PORTES A., 1998, ANNU REV SOCIOL, V98, P1320", "PORTES A., 1998, ANN REV SOCIOL", "PORTES A., 1998, AM REV SOCIOLOGY, P24")

#unique(cites[grep("putnam", cites, ignore.case=T)])
putnam_jd <- c("PUTNAM RD, 1995, J DEMOCRACY, V0006", "PUTNAM R. D., 2005, J DEMOCR, V6, P65", "PUTNAM R. D., 1995, J DEMOCR, V6, P68", "PUTNAM R, 1995, J DEMOCRACY", "PUTNAM ROBERT D., 1995, J DEMOCR, V6, P56", "PUTNAM R. D., 1995, J DEMOCR, V6, P66", "PUTNAM RD, 1995, J DEMOCR, V6, P64", "PUTNAM R, J DEMOCRACY, V6, P65", "PUTNAM R. D., 1995, BOWLING ALONE COLLAP", "PUTNAM R, 1995, MAKING DEMOCRACY WOR", "PUTNAM R, 1993, BOWLING ALONE COLLAP", "PUTNAM R, 1995, J DEMOCRACY, V6", "PUTNAM RD, 1995, BOWLING ALONE AM DEC", "PUTNAM ROBERT D., 1995, J DEMOCR, V6, P66", "PUTNAM F, 1995, J DEMOCR, V6, P65", "PUTNAM RD, 1993, BOWLING ALONE", "PUTNAM RD, 1995, J DEMOCR, V6, P1", "PUTNAM RD, 1996, BOWLING ALONE DEMOCR", "PUTNAM R, 1995, J DEMOCR, V6, P67", "PUTNAM D, 1995, J DEMOCR, V6, P65, DOI DOI 10.1353/JOD.1995.0002", "PUTNAM PD, 1995, J DEMOCR, V61, P65", "PUTNAM R, 1995, J DEMOCR, V10, P24", "PUTNAM RD, 1995, J DEMOCR, V6, P35", "PUTNAM RD, 1995, DEMOCRACY, V6, P34", "PUTNAM R, 1995, J DEMOCRACY      JAN", "PUTNAM R, 1995, BOWLING ALONE", "PUTNAM R, 1995, BOWLING ALONE, V6, P65", "PUTNAM ROBERT, 1994, BOWLING ALONE COLLAP", "PUTNAM R. D., 1995, J DEMOCR, V6, P75", "PUTNAM ROBERT S., 1995, BOWLING ALONE CIVIC", "PUTNAM R, 1993, BOWLING COLLAPSE REV")

putnam_mdw <- c("PUTNAM ROBERT D., 1993, MAKING DEMOCRACY WOR", "PUTNAM R.D., 1994, MAKING DEMOCRACY WOR", "PUTNAM R.D., 1993, MAKING DEMOCRACY WOR, P247", "PUTNAM R., 1996, MAKING DEMOCRACY WOR", "PUTNAM RD., 1993, MAKING DEMOCRACY WOR, P167", "PUTNAM R.D., 1993, MAKING DEMOCRACY WOR, P258", "PUTNAMS R, 1993, MAKING DEMOCRACY WOR", "PUTNAM D., 1993, MAKING DEMOCRACY WOR", "PUTNAM R. D., 1993, MAKING DEMOCRACY WOR, DOI [10.1515/9781400820740, DOI 10.1515/9781400820740]", "PUTNAM R. D., MAKING DEMOCRACY WOR, DOI [10.2307/420517, DOI 10.2307/420517]", "PUTNAM RD, 1993, MAKING DEMOCRACY WOR, P89", "PUTNAM RD, 2000, MAKING DEMOCRACY WOR", "PUTNAM, 1993, MAKING DEMOCRACY WOR", "PUTNAM ROBERT D., 1992, MAKING DEMOCRACY WOR", "ROBERT PUTNAM, 1993, MAKING DEMOCRACY WOR", "PUTNAM RD, 1993, MAKING DEMOCRACY WOR, P280", "PUTNAM R, 2002, MAKING DEMOCRACY WOR", "PUTNAM R. D., 1993, MAKE DEMOCRACY WORK", "PUTNAM RD, 1993, MAKING DEMOCRACY WOR, P65", "PUTNAM A., 1993, MAKING DEMOCRACY WOR", "PUTNAM R. D., 1993, MAKING DEMOCRACY WOR, P163", "PUTNAM R, 1993, MAK DEM WORK CIV TRA", "PUTNAM ROBERT, 1993, MAKING DEMOCRACYWOKR", "PUTNAM R., 2003, MAKING DEMOCRACY WOR", "PUTNAM RD, 1993, MAKING DEMOCRACY WOR, P[XV, 258]", "PUTNAM RD, 1993, MAKING DEMOCRACRY WO", "PUTNAM R, 1993, MAKING DEMOCRACIES W", "PUTNAM RD, 1993, MAKING DEMOCRACY WOR, P107", "PUTNAM ROBERT D, 1993, MAKING DEMOCRACY WOR, P[86, 163]", "PUTNAM L, 1993, MAKING DEMOCRACY WOR", "PUTNAM R, 1993, PRINCETON U PRESS", "PUTNAM RD, 1993, MAKING DEMOCRARCY WO", "PUTNAM R., 1992, MAKING DEMOCRACY WOR", "PUTNAM R. D., 1993, MAKING DEMOCRACY WOR, DOI [10.2307/2620793, DOI 10.2307/2620793]", "PUTNAM R., 1990, MAKING DEMOCRACY WOR", "PUTNAM ROBERT D., 2001, MAKING DEMOCRACY WOR", "PUTNAM ROBERT D., 1993, MAKING DEMOCRACY CIV", "PUTNAM RD, 1993, MAKIN DEMOCRACY WORK", "PUTNAM R, 1993, MAKING DEMOCRACY", "PUTNAM R. D., 1993, MARKING DEMOCRACY WO", "PUTNAM RD, 2001, MAKING DEMOCRACY WOR, V2, P41", "PUTNAM R, 1993, MAKING DEMORCRACY WO", "PUTNAM R, 1993, MAKING DEOCRACY WORK", "PUTNAM RD, 1992, MAKING DEMOCRACY WOR, P167", "PUTNAM R, 1998, MAKING DEMOCRACY WOR", "PUTNAM RD, 1994, MAKING DEMOCRACY WOR, P163" , "PUTNAM ROBERT D, 1994, MAKING DEMOCRACY WOR", "PUTNAM R, 1996, MAKING DEMOCRACK WOR", "PUTNAM R., 1993, DEMOCRACY WORK CIVIC", "PUTNAM RD, 1993, MAKING DOMOCRACY WOR", "PUTNAM RD, 1993, MAKING DEMOGRACY WOR", "PUTNAM R, 1993, MAKING DEMOCRAC WORK", "PUTNAM ROBERT D., 1993, MAKING DEMOCRACY WOR, P171", "PUTNAM R, 1991, MAKING DEMOCRACY WOR", "PUTNAM R, 1993, MAKING DEMOCRACY WOR, P185", "PUTNAM R, 1993, MAKING DEMOCRRACY WO", "PUTNAM R, 1993, MAKING DEMOCRACY WOR, P28", "PUTNAM RD, 1993, MAKING DEMOCRACY CIV", "PUTNAM R., 1995, MAKING DEMOCRACY WOR, DOI [10.2307/J.CTT7S8R7, DOI 10.2307/J.CTT7S8R7]", "PUTNAM R, 1993, MAKING DEMOCRACY WO", "PUTNAM ROBERT, 1983, MAKING DEMOCRACY WOR", "PUTNAM RD, 1994, MAKING DEMOCRACY WOR, P173", "PUTNAM RD, 1993, MAKIGN DEMOCRACY WOR", "PUTNAM R.D., 1994, MAKING DEMOCRACY WOR, P43", "PUTNAM R. D., 1994, MAKING DEMOCRACY WOR", "PUTNAM R., 1993, WHAT MAKES DEMOCRACY", "PUTNAM R. D., 2006, MAKING DEMOCRACY WOR", "PUTNAM R.D., 1993, MAK DEMOCR WORK CIV, V163, P185", "PUTNAM R. D., 1993, MARKETING DEMOCRACY", "PUTNAM RD, 1993, MAKING DEMOCRACY WOR, DOI [10.1145/358916.361990, DOI 10.1145/358916.361990]", "PUTNAM R., 1993, MAKING DEMOCRACY WOR", "PUTNAM R. D., 1993, MAKING DEMOCRACY WOR, VXV, P258", "PUTNAM R. D., 1992, MAKE DEMOCRACY WORK", "-PUTNAM ROBERT D., 1993, MAKING DEMOCRACY WOR", "PUTNAM R. D., 2011, QUE DEMOCRACIA FUNCI", "PUTNAM ROBERT D., 2011, DEMOCRACIA FUNCIONE", "PUTNAM ROBERT D., 1993, MAKING DEMOCRACY WOR, P35", "PUTNAM R., 1993, MAKING DEMOCRACY WOR, P170", "PUTNAM R, 2000, FER QUE DEMOCRACIA F", "PUTNAM R. D., 1994, MAKING DEMOCRACY WOR, P126", "PUTNAM RD, 1993, MAKING DEMOCRACY WOR, V5, P170", "PUTNAM R, 1993, MAKING DEMOCRACY WOR, P125", "PUTNAM, 1993, MAKING DEMOCRACY WOR, P167")
  
putnam_ba <- c("PUTNAM R., 2000, BOWLING ALONE COLLAP", "PUTNAM R., 2001, BOWLING ALONE COLLAP", "PUTNAM R., 2000, BOWLING ALONE", "PUTNAM R. D., 2000, BOWLING ALONE COLLAP, DOI [10.1145/358916.361990, DOI 10.1145/358916.361990]", "PUTNAM ROBERT, 2000, COLLAPSE REVIVAL AM", "PUTNAM R. D., 2000, BOWLING ALONE COLLAP, P4", "PUTNAM R.D., 2000, BOWLING ALONE COLLAP, P746", "PUTNAM RD, 2000, BOWLING ALONE, P296", "PUTNAM R. D., 2000, BOWLING ALONE THE CO", "PUTNAM ROBERT, 2000, BOWLING ALONE COLLAP", "PUTNAM ROBERT D, 2000, BOWLING ALONE COLLAP", "PUTNAM RD, 2001, BOWLING ALONE", "PUTNAM R.D., 2000, BOWLING COLLAPSE REV", "PUTNAM RD, 2000, BOWLING ALONE CIVIC", "PUTNAM D., 2000, BOWLING ALONE COLLAP", "PUTNAM R. D., 2002, BOWLING ALONE COLLAP", "PUTNAM R. D., 2000, BOWLING ALONE AMERIC", "PUTNAM R. D., 2000, BOWLING ALONE AM DEC", "PUTNAM R., 2000, BOLING ALONE COLLAPS", "PUTNAM R. D., 2004, BOWLING TOGETHER", "PUTNAM R., 2000, BOWING ALONE COLLAPS", "PUTNAM R. D., 2000, BOWLING ALONE COLLAP, P116", "PUTNAM R. D., 2000, BOWING COLLAPSE REVI", "PUTNAM R. D., 2000, BOWLING ALONE CHALLE", "ROBERT PUTNAM, 2000, BOWLING ALONE COLLAP", "PUTNAM ROBERT D., 2001, BOWLING ALONE COLLAP", "PUTNAM RD, 2000, BOWLING ALONE COLLAP", "PUTNAM R, 2001, BOWLING AM DECLINING", "PUTNAM R., 2000, BOWLINE ALONE COLLAP", "PUTNAM RD, 2000, BOWLING ALONE COLLAP, P22", "PUTNAM R. D., 2000, BOWLING ALONE REVIVA", "PUTNAM R., 2000, THE COLLAPSE AND REV", "PUTNAM R, 2000, BOWLING ALONE COLLAS", "PUTNAM ROBERT D., 2000, BOWLING ALONE COLLAP, P19", "PUTNAM R. D., 2000, BOWLING ALONE COLLAP, P2000", "PUTNAM R, 2000, BOWLING", "PUTNAM RD, 2000, BOWLING ALONE COLLAP, P80", "PUTNAM RD, 2000, BOWLING ALONE COLLPA", "PUTNAM R.D., 2002, SOLO BOLERA COLAPSO", "PUTNAM ROBERT D., 2000, BOWLING ALONE COLLAP, P298", "PUTNAM RD, 2000, DOWLING ALONE COLLAP", "PUTNAM R. D., 2000, BOWLING ALONE COLLAP, P326", "PUTNAM ROBERT D., 2000, BOWLING ALONE COLLAP, P65", "PUTNAM R, 1999, BOWLING ALONE COLLAP", "PUTNAM ROBERT D., 2000, BOWLING ALONE COLLAP, P412", "PUTNAM ROBERT D., 2000, BOWLING ALONE COLLAP, P197", "PUTNAM R, 2000, SIMON SCHUSTER", "PUTNAM DR, 2001, BOWLING ALONE COLLAP", "PUTNAM RD, 2005, BOWLING ALONE COLLAP", "PUTNAM R, 1999, BOWLING ALONE", "PUTNAM R., 2006, BOWLING ALONE COLLAP", "PUTNAM RD, 2000, BOWLING COLLAPSE REL", "PUTNAM RD, 2000, BOWLING ALONE COLLAP, P319", "PUTNAM RD, 2000, BOWLING ALOONE COLLA", "PUTNAM RD, 2000, BOWLING ALONG COLLAP", "PUTNAM R. D., 2000, BOWLING ALON COLLAPS", "PUTNAM R, 2000, BOWLING ALONER REVIV", "PUTNAM RD, 2000, BOWLING ALONE COLLAP, P34", "PUTNAM R, 2000, BOWLING RACE COLLAPS", "PUTNAM R. D., 2000, BOWLING COLLAPSE REN", "PUTNAM RD, 1976, BOWLING ALONE COLLAP", "PUTNAM RD, 2000, BOWLING ALONE COLLAP, P15", "PUTNAM RD, 2002, BOWLING COLLAPSE REV", "PUTNAM RD, 2000, BWLING ALONE COLLAPS", "PUTNAM RD, 2000, BOWLING ALONE AM DEL", "PUTNAM R, 2000, BOWLING ALONE COLLAP, P253", "PUTNAM R, 2000, BOWLING ALONE COLLAP, P294", "PUTNAM RD, 2000, BOWLING ALOND", "PUTNAM RD, 2001, BOWLING COLLAPSE REV", "PUTNAM R, BOWLING ALONE COLLAP", "PUTNAM R, 2000, BO9WLING ALONE COLLA", "PUTNAM RD, 2000, BOWLING ALOND COLLAP", "PUTNAM ROBERT D., 2000, BOWLING ALONE COLLAP, P359", "PUTNAM RD, 2000, BOWLIGN ALONE COLLAP", "PUTNAM ROBERT D., 2000, BOWLING ALONE COLLAP, P25", "PUTNAM RD, 2000, BOWLING ALOEN CRUMBL", "PUTNAM RD, 2000, BOWLING COLLAPSE RE", "PUTNAM RD, 2000, BOWLING ALONE COLLAP, P254", "PUTNAM RD, 2000, BOWLING ALONE COLLAP, P137", "PUTNAM R.D., 2000, BOWLING ALONE COLLAP", "PUTNAM RD, 2000, BOWL AL COLL REV AM", "PUTNAM RD, 2000, BOWLING ALONW COLLAP", "PUTNAM R. D., 2000, BOWLING ALONE COLLAP, DOI [10.2307/3089235, DOI 10.2307/3089235]", "PUTNAM R. D., 2000, BOWLING ALONE COLLAP, V747", "PUTNAM RD, 2001, BOWLING ALONE COLLAP, P19", "PUTNAM RD, IN PRESS BOWLING ALO", "PUTNAM R.D., 2001, BOWLING ALONE COLLAP, P103", 
               "PUTNAM RD, 2002, BOWLING ALONE", "PUTNAM RD, 2000, BOWLING ALONE COLLAP, P31", "PUTNAM RD, 2000, BLOWING ALONE COLLAP", "PUTNAM R. D., 2001, BOWLING ALONE COLLAP, V19", "PUTNAM R. D., 2000, BOWLING ALONE COLLAP, DOI [10.1145/358916, DOI 10.1145/358916]", "PUTNAM R. D., 2000, BOWLING ALONE COLLAP, DOI [10.1007/S13398-014-0173-7.2, DOI 10.1007/S13398-014-0173-7.2]", "PUTNAM ROBERT D., 2000, BOWLING ALONE", "PUTNAM R. D., 2000, BOWLING ALONE AM DEC, P223, DOI DOI 10.1007/978-1-349-62397-6_12", "PUTNAM R, 2001, COLLAPSE REVIVAL AM", 
               "PUTNAM R, 2009, BOWLING ALONE COLLAP", "PUTNAM RD., 2000, BOWLING ALONE COLLAP, PC2000", "PUTNAM (R.), 2001, BOWLING ALONE COLLAP, P136", "PUTNAM ROBERT, 2002, SOLO EN LA BOLERA", "PUTNAM R. D., 2000, BOWLING ALONE COLLAP, V6", "PUTNAM RD, 2001, BOWLING ALONE THE CO, P544", "PUTNAM R., 2001, BOWLING ALONE COLLAP, DOI [10.4324/9781912282319, DOI 10.4324/9781912282319]", "PUTNAM R. D., 2001, BOWLING ALONE THE CO", "PUTNAM R. D., 2000, SIMON SCHUSTER PAPER", "PUTNAM R., 1998, BOWLING ALONE COLLAP", "PUTNAM R. D, 2000, COLLAPSE REVIVAL AME", "PUTNAM R. D., 2010, BOWLING ALONE COLLAP", "PUTNAM R.D., 2000, BLOWING ALONE", "PUTNAM ROBERT D., 2000, BOWLING ALONE COLLAP, P290", "PUTNAM ROBERT D., 2000, BOWLING ALONE COLLAP, P23", "PUTNAM R. D., 2000, BOWLING ALONE COLLAP, P384", "PUTNAM RD, 2000, BOWLING ALONE YHE CO", "PUTNAM R.D., 2000, BOWLING ALONE", "PUTNAM R, 2000, BOWLING ALONE CRUMBL", "PUTNAM RD., 2000, BOWLING AM DECLINING", "PUTNAM, 2000, BOWLING ALONE COLLAP", "PUTNAM RD, 2000, BOWLING ALONE COLLAP, P18", "PUTNAM R.D., 2000, BOWLING STONE COLLAP", "PUTNAM ROBERT D., 1996, BOWLING ALONE COLLAP", "PUTNAM R., 2000, BOWLING TOGETHER COL", "PUTNAM ROBERT D., 2000, BOWLING ALONE COLLAP", "PUTNAM, 2000, BOWLING ALONE", "PUTNAM R, 2000, BOWLING ALONE COLLAP, P136", "PUTNAM RD, 2000, BOWLING ALONE COLLAP, P146", "PUTNAM RD, 2000, BOWLING ALONE THE CO, P138", "PUTNAM RD, 2000, BOWLING ALONE DECLIN", "PUTNAM R. D., 2000, BOWLING COLLAPSE", "PUTNAM ROBERT, 2000, ALONE COLLAPSE REVIV", "PUTNAM R, 2000, BOUWLING ALONE COLLA")

save(fg100, lc1000, adler, burt, bourdieu, coleman_ajs, coleman_fdn, nahapiet, portes, lin, granov, putnam_ba, putnam_jd, putnam_mdw, file="data/entity_resolution.Rdata")

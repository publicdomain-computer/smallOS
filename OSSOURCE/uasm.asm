
;   UASM.ASM  
;   Written by Richard A. Burgess

;  This code is released to the public domain.  
;  "Share and enjoy....."  ;)  


.DATA
_opmap1 DD OFFSET L_lit+0,OFFSET L_lit+12,OFFSET L_lit+24
 DD OFFSET L_lit+36,OFFSET L_lit+48,OFFSET L_lit+59
 DD OFFSET L_lit+72,OFFSET L_lit+80,OFFSET L_lit+87
 DD OFFSET L_lit+98,OFFSET L_lit+109,OFFSET L_lit+120
 DD OFFSET L_lit+131,OFFSET L_lit+141,OFFSET L_lit+153
 DD OFFSET L_lit+161,OFFSET L_lit+165,OFFSET L_lit+177
 DD OFFSET L_lit+189,OFFSET L_lit+201,OFFSET L_lit+213
 DD OFFSET L_lit+224,OFFSET L_lit+237,OFFSET L_lit+245
 DD OFFSET L_lit+252,OFFSET L_lit+264,OFFSET L_lit+276
 DD OFFSET L_lit+288,OFFSET L_lit+300,OFFSET L_lit+311
 DD OFFSET L_lit+324,OFFSET L_lit+332,OFFSET L_lit+339
 DD OFFSET L_lit+351,OFFSET L_lit+363,OFFSET L_lit+375
 DD OFFSET L_lit+387,OFFSET L_lit+398,OFFSET L_lit+411
 DD OFFSET L_lit+415,OFFSET L_lit+419,OFFSET L_lit+431
 DD OFFSET L_lit+443,OFFSET L_lit+455,OFFSET L_lit+467
 DD OFFSET L_lit+478,OFFSET L_lit+491,OFFSET L_lit+495
 DD OFFSET L_lit+499,OFFSET L_lit+511,OFFSET L_lit+523
 DD OFFSET L_lit+535,OFFSET L_lit+547,OFFSET L_lit+558
 DD OFFSET L_lit+571,OFFSET L_lit+575,OFFSET L_lit+579
 DD OFFSET L_lit+591,OFFSET L_lit+603,OFFSET L_lit+615
 DD OFFSET L_lit+627,OFFSET L_lit+638,OFFSET L_lit+651
 DD OFFSET L_lit+655,OFFSET L_lit+659,OFFSET L_lit+668
 DD OFFSET L_lit+677,OFFSET L_lit+686,OFFSET L_lit+695
 DD OFFSET L_lit+704,OFFSET L_lit+713,OFFSET L_lit+722
 DD OFFSET L_lit+731,OFFSET L_lit+740,OFFSET L_lit+749
 DD OFFSET L_lit+758,OFFSET L_lit+767,OFFSET L_lit+776
 DD OFFSET L_lit+785,OFFSET L_lit+794,OFFSET L_lit+803
 DD OFFSET L_lit+813,OFFSET L_lit+823,OFFSET L_lit+833
 DD OFFSET L_lit+843,OFFSET L_lit+853,OFFSET L_lit+863
 DD OFFSET L_lit+873,OFFSET L_lit+883,OFFSET L_lit+892
 DD OFFSET L_lit+901,OFFSET L_lit+910,OFFSET L_lit+919
 DD OFFSET L_lit+928,OFFSET L_lit+937,OFFSET L_lit+946
 DD OFFSET L_lit+955,OFFSET L_lit+961,OFFSET L_lit+966
 DD OFFSET L_lit+980,OFFSET L_lit+993,OFFSET L_lit+997
 DD OFFSET L_lit+1001,OFFSET L_lit+1005,OFFSET L_lit+1009
 DD OFFSET L_lit+1018,OFFSET L_lit+1035,OFFSET L_lit+1044
 DD OFFSET L_lit+1061,OFFSET L_lit+1073,OFFSET L_lit+1087
 DD OFFSET L_lit+1100,OFFSET L_lit+1115,OFFSET L_lit+1122
 DD OFFSET L_lit+1130,OFFSET L_lit+1138,OFFSET L_lit+1145
 DD OFFSET L_lit+1152,OFFSET L_lit+1160,OFFSET L_lit+1168
 DD OFFSET L_lit+1177,OFFSET L_lit+1184,OFFSET L_lit+1192
 DD OFFSET L_lit+1200,OFFSET L_lit+1208,OFFSET L_lit+1215
 DD OFFSET L_lit+1223,OFFSET L_lit+1231,OFFSET L_lit+1238
 DD OFFSET L_lit+1250,OFFSET L_lit+1262,OFFSET L_lit+1273
 DD OFFSET L_lit+1285,OFFSET L_lit+1298,OFFSET L_lit+1311
 DD OFFSET L_lit+1324,OFFSET L_lit+1337,OFFSET L_lit+1349
 DD OFFSET L_lit+1361,OFFSET L_lit+1373,OFFSET L_lit+1385
 DD OFFSET L_lit+1397,OFFSET L_lit+1409,OFFSET L_lit+1421
 DD OFFSET L_lit+1429,OFFSET L_lit+1433,OFFSET L_lit+1448
 DD OFFSET L_lit+1463,OFFSET L_lit+1478,OFFSET L_lit+1493
 DD OFFSET L_lit+1508,OFFSET L_lit+1523,OFFSET L_lit+1538
 DD OFFSET L_lit+1542,OFFSET L_lit+1546,OFFSET L_lit+1555
 DD OFFSET L_lit+1561,OFFSET L_lit+1574,OFFSET L_lit+1586
 DD OFFSET L_lit+1591,OFFSET L_lit+1596,OFFSET L_lit+1607
 DD OFFSET L_lit+1620,OFFSET L_lit+1631,OFFSET L_lit+1644
 DD OFFSET L_lit+1658,OFFSET L_lit+1674,OFFSET L_lit+1688
 DD OFFSET L_lit+1704,OFFSET L_lit+1716,OFFSET L_lit+1730
 DD OFFSET L_lit+1743,OFFSET L_lit+1760,OFFSET L_lit+1773
 DD OFFSET L_lit+1790,OFFSET L_lit+1803,OFFSET L_lit+1820
 DD OFFSET L_lit+1831,OFFSET L_lit+1842,OFFSET L_lit+1853
 DD OFFSET L_lit+1864,OFFSET L_lit+1875,OFFSET L_lit+1886
 DD OFFSET L_lit+1897,OFFSET L_lit+1908,OFFSET L_lit+1921
 DD OFFSET L_lit+1934,OFFSET L_lit+1947,OFFSET L_lit+1960
 DD OFFSET L_lit+1973,OFFSET L_lit+1986,OFFSET L_lit+1999
 DD OFFSET L_lit+2012,OFFSET L_lit+2024,OFFSET L_lit+2036
 DD OFFSET L_lit+2044,OFFSET L_lit+2048,OFFSET L_lit+2060
 DD OFFSET L_lit+2072,OFFSET L_lit+2084,OFFSET L_lit+2096
 DD OFFSET L_lit+2110,OFFSET L_lit+2116,OFFSET L_lit+2125
 DD OFFSET L_lit+2130,OFFSET L_lit+2136,OFFSET L_lit+2144
 DD OFFSET L_lit+2149,OFFSET L_lit+2154,OFFSET L_lit+2164
 DD OFFSET L_lit+2174,OFFSET L_lit+2185,OFFSET L_lit+2196
 DD OFFSET L_lit+2200,0,OFFSET L_lit+2204,OFFSET L_lit+2209
 DD OFFSET L_lit+2213,OFFSET L_lit+2217,OFFSET L_lit+2221
 DD OFFSET L_lit+2225,OFFSET L_lit+2229,OFFSET L_lit+2233
 DD OFFSET L_lit+2237,OFFSET L_lit+2241,OFFSET L_lit+2252
 DD OFFSET L_lit+2262,OFFSET L_lit+2271,OFFSET L_lit+2280
 DD OFFSET L_lit+2290,OFFSET L_lit+2302,OFFSET L_lit+2313
 DD OFFSET L_lit+2326,OFFSET L_lit+2335,OFFSET L_lit+2343
 DD OFFSET L_lit+2351,OFFSET L_lit+2359,OFFSET L_lit+2368
 DD OFFSET L_lit+2379,OFFSET L_lit+2389,OFFSET L_lit+2401
 DD 0,OFFSET L_lit+2409,OFFSET L_lit+2418,OFFSET L_lit+2428
 DD OFFSET L_lit+2432,OFFSET L_lit+2436,OFFSET L_lit+2440
 DD OFFSET L_lit+2444,OFFSET L_lit+2448,OFFSET L_lit+2452
 DD OFFSET L_lit+2456,OFFSET L_lit+2460,OFFSET L_lit+2464
 DD OFFSET L_lit+2468,OFFSET L_lit+2472
PUBLIC _SecOp00 DD OFFSET L_lit+2476,OFFSET L_lit+2480,OFFSET L_lit+2484
 DD OFFSET L_lit+2496,0,0,OFFSET L_lit+2508,0
 DD 0,0,0,0,0,0,0,0
_SecOp20 DD OFFSET L_lit+2513,OFFSET L_lit+2525,OFFSET L_lit+2537
 DD OFFSET L_lit+2549,OFFSET L_lit+2561,0,OFFSET L_lit+2573
 DD 0,0,0,0,0,0,0,0,0
_SecOp80 DD OFFSET L_lit+2585,OFFSET L_lit+2592,OFFSET L_lit+2600
 DD OFFSET L_lit+2607,OFFSET L_lit+2615,OFFSET L_lit+2622
 DD OFFSET L_lit+2630,OFFSET L_lit+2638,OFFSET L_lit+2647
 DD OFFSET L_lit+2654,OFFSET L_lit+2662,OFFSET L_lit+2670
 DD OFFSET L_lit+2678,OFFSET L_lit+2685,OFFSET L_lit+2693
 DD OFFSET L_lit+2701,OFFSET L_lit+2708,OFFSET L_lit+2717
 DD OFFSET L_lit+2727,OFFSET L_lit+2737,OFFSET L_lit+2746
 DD OFFSET L_lit+2755,OFFSET L_lit+2765,OFFSET L_lit+2775
 DD OFFSET L_lit+2786,OFFSET L_lit+2795,OFFSET L_lit+2805
 DD OFFSET L_lit+2814,OFFSET L_lit+2824,OFFSET L_lit+2833
 DD OFFSET L_lit+2843,OFFSET L_lit+2853,OFFSET L_lit+2862
 DD OFFSET L_lit+2870,0,OFFSET L_lit+2877,OFFSET L_lit+2888
 DD OFFSET L_lit+2905,0,0,OFFSET L_lit+2921,OFFSET L_lit+2929
 DD 0,OFFSET L_lit+2936,OFFSET L_lit+2948,OFFSET L_lit+2965
 DD 0,OFFSET L_lit+2981,0,0,OFFSET L_lit+2994
 DD OFFSET L_lit+3002,OFFSET L_lit+3014,OFFSET L_lit+3022
 DD OFFSET L_lit+3030,OFFSET L_lit+3044,0,0,OFFSET L_lit+3058
 DD OFFSET L_lit+3070,OFFSET L_lit+3082,OFFSET L_lit+3094
 DD OFFSET L_lit+3105,OFFSET L_lit+3119
_groups DD OFFSET L_lit+3133,OFFSET L_lit+3146,OFFSET L_lit+3160
 DD OFFSET L_lit+3168,OFFSET L_lit+3176,OFFSET L_lit+3189
 DD OFFSET L_lit+3203,OFFSET L_lit+3216,OFFSET L_lit+3230
 DD OFFSET L_lit+3234,OFFSET L_lit+3237,OFFSET L_lit+3241
 DD OFFSET L_lit+3245,OFFSET L_lit+3249,OFFSET L_lit+3253
 DD OFFSET L_lit+3257,OFFSET L_lit+3261,OFFSET L_lit+3265
 DD OFFSET L_lit+3269,OFFSET L_lit+3273,OFFSET L_lit+3277
 DD OFFSET L_lit+3281,OFFSET L_lit+3285,OFFSET L_lit+3289
 DD OFFSET L_lit+3293,OFFSET L_lit+3306,OFFSET L_lit+3320
 DD OFFSET L_lit+3328,OFFSET L_lit+3336,OFFSET L_lit+3347
 DD OFFSET L_lit+3359,OFFSET L_lit+3370,OFFSET L_lit+3382
 DD OFFSET L_lit+3390,0,0,0,0,0,0,OFFSET L_lit+3398
 DD OFFSET L_lit+3406,OFFSET L_lit+3414,OFFSET L_lit+3423
 DD OFFSET L_lit+3432,OFFSET L_lit+3440,OFFSET L_lit+3448
 DD 0,OFFSET L_lit+3457,OFFSET L_lit+3466,OFFSET L_lit+3474
 DD OFFSET L_lit+3483,OFFSET L_lit+3491,OFFSET L_lit+3500
 DD 0,0,OFFSET L_lit+3509,OFFSET L_lit+3518,OFFSET L_lit+3527
 DD OFFSET L_lit+3536,OFFSET L_lit+3545,0,OFFSET L_lit+3554
 DD 0,0,0,0,0,OFFSET L_lit+3563,OFFSET L_lit+3566
 DD OFFSET L_lit+3570,OFFSET L_lit+3574
_seg_names DD OFFSET L_lit+3578,OFFSET L_lit+3581,OFFSET L_lit+3584
 DD OFFSET L_lit+3587,OFFSET L_lit+3590,OFFSET L_lit+3593
_breg_names DD OFFSET L_lit+3596,OFFSET L_lit+3599,OFFSET L_lit+3602
 DD OFFSET L_lit+3605,OFFSET L_lit+3608,OFFSET L_lit+3611
 DD OFFSET L_lit+3614,OFFSET L_lit+3617
_wreg_names DD OFFSET L_lit+3620,OFFSET L_lit+3623,OFFSET L_lit+3626
 DD OFFSET L_lit+3629,OFFSET L_lit+3632,OFFSET L_lit+3635
 DD OFFSET L_lit+3638,OFFSET L_lit+3641
_dreg_names DD OFFSET L_lit+3644,OFFSET L_lit+3648,OFFSET L_lit+3652
 DD OFFSET L_lit+3656,OFFSET L_lit+3660,OFFSET L_lit+3664
 DD OFFSET L_lit+3668,OFFSET L_lit+3672
L_lit DB 65,68,68,32,126,69,98,44,126,71,98,0,65,68,68,32
 DB 126,69,118,44,126,71,118,0,65,68,68,32,126,71,98,44
 DB 126,69,98,0,65,68,68,32,126,71,118,44,126,69,118,0
 DB 65,68,68,32,65,76,44,126,73,98,0,65,68,68,32,126
 DB 101,65,88,44,126,73,118,0,80,85,83,72,32,69,83,0
 DB 80,79,80,32,69,83,0,79,82,32,126,69,98,44,126,71
 DB 98,0,79,82,32,126,69,118,44,126,71,118,0,79,82,32
 DB 126,71,98,44,126,69,98,0,79,82,32,126,71,118,44,126
 DB 69,118,0,79,82,32,65,76,44,126,73,98,0,79,82,32
 DB 126,101,65,88,44,126,73,118,0,80,85,83,72,32,67,83
 DB 0,126,50,32,0,65,68,67,32,126,69,98,44,126,71,98
 DB 0,65,68,67,32,126,69,118,44,126,71,118,0,65,68,67
 DB 32,126,71,98,44,126,69,98,0,65,68,67,32,126,71,118
 DB 44,126,69,118,0,65,68,67,32,65,76,44,126,73,98,0
 DB 65,68,67,32,126,101,65,88,44,126,73,118,0,80,85,83
 DB 72,32,83,83,0,80,79,80,32,83,83,0,83,66,66,32
 DB 126,69,98,44,126,71,98,0,83,66,66,32,126,69,118,44
 DB 126,71,118,0,83,66,66,32,126,71,98,44,126,69,98,0
 DB 83,66,66,32,126,71,118,44,126,69,118,0,83,66,66,32
 DB 65,76,44,126,73,98,0,83,66,66,32,126,101,65,88,44
 DB 126,73,118,0,80,85,83,72,32,68,83,0,80,79,80,32
 DB 68,83,0,65,78,68,32,126,69,98,44,126,71,98,0,65
 DB 78,68,32,126,69,118,44,126,71,118,0,65,78,68,32,126
 DB 71,98,44,126,69,98,0,65,78,68,32,126,71,118,44,126
 DB 69,118,0,65,78,68,32,65,76,44,126,73,98,0,65,78
 DB 68,32,126,101,65,88,44,126,73,118,0,126,112,69,0,68
 DB 65,65,0,83,85,66,32,126,69,98,44,126,71,98,0,83
 DB 85,66,32,126,69,118,44,126,71,118,0,83,85,66,32,126
 DB 71,98,44,126,69,98,0,83,85,66,32,126,71,118,44,126
 DB 69,118,0,83,85,66,32,65,76,44,126,73,98,0,83,85
 DB 66,32,126,101,65,88,44,126,73,118,0,126,112,67,0,68
 DB 65,83,0,88,79,82,32,126,69,98,44,126,71,98,0,88
 DB 79,82,32,126,69,118,44,126,71,118,0,88,79,82,32,126
 DB 71,98,44,126,69,98,0,88,79,82,32,126,71,118,44,126
 DB 69,118,0,88,79,82,32,65,76,44,126,73,98,0,88,79
 DB 82,32,126,101,65,88,44,126,73,118,0,126,112,83,0,65
 DB 65,65,0,67,77,80,32,126,69,98,44,126,71,98,0,67
 DB 77,80,32,126,69,118,44,126,71,118,0,67,77,80,32,126
 DB 71,98,44,126,69,98,0,67,77,80,32,126,71,118,44,126
 DB 69,118,0,67,77,80,32,65,76,44,126,73,98,0,67,77
 DB 80,32,126,101,65,88,44,126,73,118,0,126,112,68,0,65
 DB 65,83,0,73,78,67,32,126,101,65,88,0,73,78,67,32
 DB 126,101,67,88,0,73,78,67,32,126,101,68,88,0,73,78
 DB 67,32,126,101,66,88,0,73,78,67,32,126,101,83,80,0
 DB 73,78,67,32,126,101,66,80,0,73,78,67,32,126,101,83
 DB 73,0,73,78,67,32,126,101,68,73,0,68,69,67,32,126
 DB 101,65,88,0,68,69,67,32,126,101,67,88,0,68,69,67
 DB 32,126,101,68,88,0,68,69,67,32,126,101,66,88,0,68
 DB 69,67,32,126,101,83,80,0,68,69,67,32,126,101,66,80
 DB 0,68,69,67,32,126,101,83,73,0,68,69,67,32,126,101
 DB 68,73,0,80,85,83,72,32,126,101,65,88,0,80,85,83
 DB 72,32,126,101,67,88,0,80,85,83,72,32,126,101,68,88
 DB 0,80,85,83,72,32,126,101,66,88,0,80,85,83,72,32
 DB 126,101,83,80,0,80,85,83,72,32,126,101,66,80,0,80
 DB 85,83,72,32,126,101,83,73,0,80,85,83,72,32,126,101
 DB 68,73,0,80,79,80,32,126,101,65,88,0,80,79,80,32
 DB 126,101,67,88,0,80,79,80,32,126,101,68,88,0,80,79
 DB 80,32,126,101,66,88,0,80,79,80,32,126,101,83,80,0
 DB 80,79,80,32,126,101,66,80,0,80,79,80,32,126,101,83
 DB 73,0,80,79,80,32,126,101,68,73,0,80,85,83,72,65
 DB 0,80,79,80,65,0,66,79,85,78,68,32,126,71,118,44
 DB 126,77,97,0,65,82,80,76,32,126,69,119,44,126,82,119
 DB 0,126,112,70,0,126,112,71,0,126,115,111,0,126,115,97
 DB 0,80,85,83,72,32,126,73,118,0,73,77,85,76,32,126
 DB 71,118,61,126,69,118,42,126,73,118,0,80,85,83,72,32
 DB 126,73,98,0,73,77,85,76,32,126,71,118,61,126,69,118
 DB 42,126,73,98,0,73,78,83,66,32,126,89,98,44,68,88
 DB 0,73,78,83,126,101,119,32,126,89,118,44,68,88,0,79
 DB 85,84,83,66,32,68,88,44,126,88,98,0,79,85,84,83
 DB 126,101,119,32,68,88,44,126,88,118,0,74,79,32,126,74
 DB 98,0,74,78,79,32,126,74,98,0,74,78,67,32,126,74
 DB 98,0,74,67,32,126,74,98,0,74,90,32,126,74,98,0
 DB 74,78,90,32,126,74,98,0,74,66,69,32,126,74,98,0
 DB 74,78,66,69,32,126,74,98,0,74,83,32,126,74,98,0
 DB 74,78,83,32,126,74,98,0,74,80,69,32,126,74,98,0
 DB 74,80,79,32,126,74,98,0,74,76,32,126,74,98,0,74
 DB 71,69,32,126,74,98,0,74,76,69,32,126,74,98,0,74
 DB 71,32,126,74,98,0,126,103,49,32,126,69,98,44,126,73
 DB 98,0,126,103,49,32,126,69,118,44,126,73,118,0,77,79
 DB 86,32,65,76,44,126,73,98,0,126,103,49,32,126,69,118
 DB 44,126,73,98,0,84,69,83,84,32,126,69,98,44,126,71
 DB 98,0,84,69,83,84,32,126,69,118,44,126,71,118,0,88
 DB 67,72,71,32,126,69,98,44,126,71,98,0,88,67,72,71
 DB 32,126,69,118,44,126,71,118,0,77,79,86,32,126,69,98
 DB 44,126,71,98,0,77,79,86,32,126,69,118,44,126,71,118
 DB 0,77,79,86,32,126,71,98,44,126,69,98,0,77,79,86
 DB 32,126,71,118,44,126,69,118,0,77,79,86,32,126,69,119
 DB 44,126,83,119,0,76,69,65,32,126,71,118,44,126,77,32
 DB 0,77,79,86,32,126,83,119,44,126,69,119,0,80,79,80
 DB 32,126,69,118,0,78,79,80,0,88,67,72,71,32,126,101
 DB 65,88,44,126,101,67,88,0,88,67,72,71,32,126,101,65
 DB 88,44,126,101,68,88,0,88,67,72,71,32,126,101,65,88
 DB 44,126,101,66,88,0,88,67,72,71,32,126,101,65,88,44
 DB 126,101,83,80,0,88,67,72,71,32,126,101,65,88,44,126
 DB 101,66,80,0,88,67,72,71,32,126,101,65,88,44,126,101
 DB 83,73,0,88,67,72,71,32,126,101,65,88,44,126,101,68
 DB 73,0,67,66,87,0,67,68,87,0,67,65,76,76,32,126
 DB 65,112,0,70,87,65,73,84,0,80,85,83,72,32,126,101
 DB 102,108,97,103,115,0,80,79,80,32,126,101,102,108,97,103
 DB 115,0,83,65,72,70,0,76,65,72,70,0,77,79,86,32
 DB 65,76,44,126,79,118,0,77,79,86,32,126,101,65,88,44
 DB 126,79,118,0,77,79,86,32,126,79,118,44,97,108,0,77
 DB 79,86,32,126,79,118,44,126,101,65,88,0,77,79,86,83
 DB 66,32,126,88,98,44,126,89,98,0,77,79,86,83,126,101
 DB 119,32,126,88,118,44,126,89,118,0,67,77,80,83,66,32
 DB 126,88,98,44,126,89,98,0,67,77,80,83,126,101,119,32
 DB 126,88,118,44,126,89,118,0,84,69,83,84,32,65,76,44
 DB 126,73,98,0,84,69,83,84,32,126,101,65,88,44,126,73
 DB 118,0,83,84,79,83,66,32,126,89,98,44,65,76,0,83
 DB 84,79,83,126,101,119,32,126,89,118,44,126,101,65,88,0
 DB 76,79,68,83,66,32,65,76,44,126,88,98,0,76,79,68
 DB 83,126,101,119,32,126,101,65,88,44,126,88,118,0,83,67
 DB 65,83,66,32,65,76,44,126,88,98,0,83,67,65,83,126
 DB 101,119,32,126,101,65,88,44,126,88,118,0,77,79,86,32
 DB 65,76,44,126,73,98,0,77,79,86,32,67,76,44,126,73
 DB 98,0,77,79,86,32,68,76,44,126,73,98,0,77,79,86
 DB 32,66,76,44,126,73,98,0,77,79,86,32,65,72,44,126
 DB 73,98,0,77,79,86,32,67,72,44,126,73,98,0,77,79
 DB 86,32,68,72,44,126,73,98,0,77,79,86,32,66,72,44
 DB 126,73,98,0,77,79,86,32,126,101,65,88,44,126,73,118
 DB 0,77,79,86,32,126,101,67,88,44,126,73,118,0,77,79
 DB 86,32,126,101,68,88,44,126,73,118,0,77,79,86,32,126
 DB 101,66,88,44,126,73,118,0,77,79,86,32,126,101,83,80
 DB 44,126,73,118,0,77,79,86,32,126,101,66,80,44,126,73
 DB 118,0,77,79,86,32,126,101,83,73,44,126,73,118,0,77
 DB 79,86,32,126,101,68,73,44,126,73,118,0,126,103,50,32
 DB 126,69,98,44,126,73,98,0,126,103,50,32,126,69,118,44
 DB 126,73,98,0,82,69,84,32,126,73,119,0,82,69,84,0
 DB 76,69,83,32,126,71,118,44,126,77,112,0,76,68,83,32
 DB 126,71,118,44,126,77,112,0,77,79,86,32,126,69,98,44
 DB 126,73,98,0,77,79,86,32,126,69,118,44,126,73,118,0
 DB 69,78,84,69,82,32,126,73,119,44,126,73,98,0,76,69
 DB 65,86,69,0,82,69,84,70,32,126,73,119,0,114,101,116
 DB 102,0,73,78,84,32,51,0,73,78,84,32,126,73,98,0
 DB 73,78,84,79,0,73,82,69,84,0,126,103,50,32,126,69
 DB 98,44,49,0,126,103,50,32,126,69,118,44,49,0,126,103
 DB 50,32,126,69,98,44,99,108,0,126,103,50,32,126,69,118
 DB 44,99,108,0,65,65,77,0,65,65,68,0,88,76,65,84
 DB 0,126,102,48,0,126,102,49,0,126,102,50,0,126,102,51
 DB 0,126,102,52,0,126,102,53,0,126,102,54,0,126,102,55
 DB 0,76,79,79,80,78,69,32,126,74,98,0,76,79,79,80
 DB 69,32,126,74,98,0,76,79,79,80,32,126,74,98,0,74
 DB 67,88,90,32,126,74,98,0,73,78,32,65,76,44,126,73
 DB 98,0,73,78,32,126,101,65,88,44,126,73,98,0,79,85
 DB 84,32,126,73,98,44,65,76,0,79,85,84,32,126,73,98
 DB 44,126,101,65,88,0,67,65,76,76,32,126,74,118,0,74
 DB 77,80,32,126,74,118,0,74,77,80,32,126,65,112,0,74
 DB 77,80,32,126,74,98,0,73,78,32,65,76,44,68,88,0
 DB 73,78,32,126,101,65,88,44,68,88,0,79,85,84,32,68
 DB 88,44,65,76,0,79,85,84,32,68,88,44,126,101,65,88
 DB 0,76,79,67,75,126,112,32,0,82,69,80,78,69,126,112
 DB 32,0,82,69,80,40,101,41,126,112,32,0,72,76,84,0
 DB 67,77,67,0,126,103,51,0,126,103,48,0,67,76,67,0
 DB 83,84,67,0,67,76,73,0,83,84,73,0,67,76,68,0
 DB 83,84,68,0,126,103,52,0,126,103,53,0,126,103,54,0
 DB 126,103,55,0,76,65,82,32,126,71,118,44,126,69,119,0
 DB 76,83,76,32,126,71,118,44,126,69,119,0,67,76,84,83
 DB 0,77,79,86,32,126,82,100,44,126,67,100,0,77,79,86
 DB 32,126,82,100,44,126,68,100,0,77,79,86,32,126,67,100
 DB 44,126,82,100,0,77,79,86,32,126,68,100,44,126,82,100
 DB 0,77,79,86,32,126,82,100,44,126,84,100,0,77,79,86
 DB 32,126,84,100,44,126,82,100,0,74,79,32,126,74,118,0
 DB 74,78,79,32,126,74,118,0,74,67,32,126,74,118,0,74
 DB 78,67,32,126,74,118,0,74,90,32,126,74,118,0,74,78
 DB 90,32,126,74,118,0,74,66,69,32,126,74,118,0,74,78
 DB 66,69,32,126,74,118,0,74,83,32,126,74,118,0,74,78
 DB 83,32,126,74,118,0,74,80,69,32,126,74,118,0,74,80
 DB 79,32,126,74,118,0,74,76,32,126,74,118,0,74,71,69
 DB 32,126,74,118,0,74,76,69,32,126,74,118,0,74,71,32
 DB 126,74,118,0,83,69,84,79,32,126,69,98,0,83,69,84
 DB 78,79,32,126,69,98,0,83,69,84,78,67,32,126,69,98
 DB 0,83,69,84,67,32,126,69,98,0,83,69,84,90,32,126
 DB 69,98,0,83,69,84,78,90,32,126,69,98,0,83,69,84
 DB 66,69,32,126,69,98,0,83,69,84,78,66,69,32,126,69
 DB 98,0,83,69,84,83,32,126,69,98,0,83,69,84,78,83
 DB 32,126,69,98,0,83,69,84,80,32,126,69,98,0,83,69
 DB 84,78,80,32,126,69,98,0,83,69,84,76,32,126,69,98
 DB 0,83,69,84,71,69,32,126,69,98,0,83,69,84,76,69
 DB 32,126,69,98,0,83,69,84,71,32,126,69,98,0,80,85
 DB 83,72,32,70,83,0,80,79,80,32,70,83,0,66,84,32
 DB 126,69,118,44,126,71,118,0,83,72,76,68,32,126,69,118
 DB 44,126,71,118,44,126,73,98,0,83,72,76,68,32,126,69
 DB 118,44,126,71,118,44,99,108,0,80,85,83,72,32,71,83
 DB 0,80,79,80,32,71,83,0,66,84,83,32,126,69,118,44
 DB 126,71,118,0,83,72,82,68,32,126,69,118,44,126,71,118
 DB 44,126,73,98,0,83,72,82,68,32,126,69,118,44,126,71
 DB 118,44,99,108,0,73,77,85,76,32,126,71,118,44,126,69
 DB 118,0,76,83,83,32,126,77,112,0,66,84,82,32,126,69
 DB 118,44,126,71,118,0,76,70,83,32,126,77,112,0,76,71
 DB 83,32,126,77,112,0,77,79,86,90,88,32,126,71,118,44
 DB 126,69,98,0,77,79,86,90,88,32,126,71,118,44,126,69
 DB 119,0,126,103,56,32,126,69,118,44,126,73,98,0,66,84
 DB 67,32,126,69,118,44,126,71,118,0,66,83,70,32,126,71
 DB 118,44,126,69,118,0,66,83,82,126,71,118,44,126,69,118
 DB 0,77,79,86,83,88,32,126,71,118,44,126,69,98,0,77
 DB 79,86,83,88,32,126,71,118,44,126,69,119,0,84,69,83
 DB 84,32,126,69,118,44,126,73,118,0,84,69,83,84,32,126
 DB 69,118,44,126,73,118,44,0,78,79,84,32,126,69,118,0
 DB 78,69,71,32,126,69,118,0,77,85,76,32,126,101,65,88
 DB 44,126,69,118,0,73,77,85,76,32,126,101,65,88,44,126
 DB 69,118,0,68,73,86,32,126,101,65,88,44,126,69,118,0
 DB 73,68,73,86,32,126,101,65,88,44,126,69,118,0,65,68
 DB 68,0,79,82,0,65,68,67,0,83,66,66,0,65,78,68
 DB 0,83,85,66,0,88,79,82,0,67,77,80,0,82,79,76
 DB 0,82,79,82,0,82,67,76,0,82,67,82,0,83,72,76
 DB 0,83,72,82,0,83,72,76,0,83,65,82,0,84,69,83
 DB 84,32,126,69,98,44,126,73,98,0,84,69,83,84,32,126
 DB 69,98,44,126,73,98,44,0,78,79,84,32,126,69,98,0
 DB 78,69,71,32,126,69,98,0,77,85,76,32,65,76,44,126
 DB 69,98,0,73,77,85,76,32,65,76,44,126,69,98,0,68
 DB 73,86,32,65,76,44,126,69,98,0,73,68,73,86,32,65
 DB 76,44,126,69,98,0,73,78,67,32,126,69,98,0,68,69
 DB 67,32,126,69,98,0,73,78,67,32,126,69,118,0,68,69
 DB 67,32,126,69,118,0,67,65,76,76,32,126,69,118,0,67
 DB 65,76,76,32,126,69,112,0,74,77,80,32,126,69,118,0
 DB 74,77,80,32,126,69,112,0,80,85,83,72,32,126,69,118
 DB 0,83,76,68,84,32,126,69,119,0,83,84,82,32,126,69
 DB 119,0,76,76,68,84,32,126,69,119,0,76,84,82,32,126
 DB 69,119,0,86,69,82,82,32,126,69,119,0,86,69,82,87
 DB 32,126,69,119,0,83,71,68,84,32,126,77,115,0,83,73
 DB 68,84,32,126,77,115,0,76,71,68,84,32,126,77,115,0
 DB 76,73,68,84,32,126,77,115,0,83,77,83,87,32,126,69
 DB 119,0,76,77,83,87,32,126,69,119,0,66,84,0,66,84
 DB 83,0,66,84,82,0,66,84,67,0,69,83,0,67,83,0
 DB 83,83,0,68,83,0,70,83,0,71,83,0,65,76,0,67
 DB 76,0,68,76,0,66,76,0,65,72,0,67,72,0,68,72
 DB 0,66,72,0,65,88,0,67,88,0,68,88,0,66,88,0
 DB 83,80,0,66,80,0,83,73,0,68,73,0,69,65,88,0
 DB 69,67,88,0,69,68,88,0,69,66,88,0,69,83,80,0
 DB 69,66,80,0,69,83,73,0,69,68,73,0,37,48,50,120
 DB 37,48,50,120,0,43,0,37,48,50,120,0,37,48,50,120
 DB 37,48,50,120,0,37,48,50,120,37,48,50,120,37,48,50
 DB 120,37,48,50,120,0,115,116,40,37,100,41,0,69,0,37
 DB 115,0,37,115,0,67,82,37,100,0,68,82,37,100,0,37
 DB 120,0,126,112,58,91,0,93,0,37,115,0,84,82,37,100
 DB 0,68,83,58,91,69,83,73,93,0,69,83,58,91,69,68
 DB 73,93,0,60,98,111,103,117,115,62,0,68,0,69,0,37
 DB 99,0,37,99,0,60,70,108,111,97,116,32,79,112,62,0
 DB 37,99,83,58,0,60,105,110,118,97,108,105,100,62,0,32
 DB 0,37,99,0,126,112,58,91,69,65,88,0,126,112,58,91
 DB 69,67,88,0,126,112,58,91,69,68,88,0,126,112,58,91
 DB 69,66,88,0,126,112,58,91,69,83,80,0,126,112,58,91
 DB 0,126,112,58,91,69,66,80,0,126,112,58,91,69,83,73
 DB 0,126,112,58,91,69,68,73,0,43,69,65,88,0,43,69
 DB 67,88,0,43,69,68,88,0,43,69,66,88,0,43,69,66
 DB 80,0,43,69,83,73,0,43,69,68,73,0,42,50,0,42
 DB 52,0,42,56,0,126,112,58,91,0,93,0,126,112,58,91
 DB 0,69,65,88,0,69,67,88,0,69,68,88,0,69,66,88
 DB 0,69,66,80,0,69,83,73,0,69,68,73,0,43,0,93
 DB 0,37,48,56,120,32,32,32,0,13,10,0
_addrIn DD 0h
_prefix DW 0h
_modrmv DB 0h
_fmodrmv DB 0h
_sibv DB 0h
_fsibv DB 0h
_opsize DW 0h


.CODE
EXTRN _xprintf: NEAR
_getbyte:
	PUSH EBP
	MOV EBP,ESP
	SUB ESP,1
	MOV EAX, _addrIn
	MOV AL, CS:[EAX]
	MOV [EBP-1], AL
	INC _addrIn
	MOV EAX,_addrIn
	XOR EAX,EAX
	MOV AL,BYTE PTR [EBP-1]
	MOV ESP,EBP
	POP EBP
	RETN
_modrm:
	PUSH EBP
	MOV EBP,ESP
	MOVSX EAX,_fmodrmv
	AND EAX,EAX
	JNZ L_2
	CALL _getbyte
	MOV _modrmv, AL
	MOV EAX,1
	MOV _fmodrmv, AL
L_2:
	XOR EAX,EAX
	MOV AL,_modrmv
	POP EBP
	RETN
_sib:
	PUSH EBP
	MOV EBP,ESP
	MOVSX EAX,_fsibv
	AND EAX,EAX
	JNZ L_4
	CALL _getbyte
	MOV _sibv, AL
	MOV EAX,1
	MOV _fsibv, AL
L_4:
	XOR EAX,EAX
	MOV AL,_sibv
	POP EBP
	RETN
_bytes:
	PUSH EBP
	MOV EBP,ESP
	MOVSX EAX,BYTE PTR [EBP+8]
	JMP L_7
L_8:
	MOV EAX,1
	JMP L_9
L_10:
	MOV EAX,2
	JMP L_9
L_11:
	MOV EAX,4
	JMP L_9
L_12:
	MOVSX EAX,_opsize
	CMP EAX,32
	SETE AL
	AND AL,AL
	JZ L_13
	MOV EAX,4
	JMP L_9
L_13:
	MOV EAX,2
	JMP L_9
L_14:
	JMP L_6
L_7:
	CMP EAX,118
	JE L_12
	CMP EAX,100
	JE L_11
	CMP EAX,119
	JE L_10
	CMP EAX,98
	JE L_8
L_6:
	XOR EAX,EAX
L_9:
	POP EBP
	RETN 4
_ohex:
	PUSH EBP
	MOV EBP,ESP
	SUB ESP,12
	XOR EAX,EAX
	MOV WORD PTR [EBP-2], AX
	XOR EAX,EAX
	MOV WORD PTR [EBP-4], AX
	MOVSX EAX,BYTE PTR [EBP+20]
	JMP L_16
L_17:
	JMP L_15
L_18:
	MOV EAX,1
	MOV WORD PTR [EBP-2], AX
	JMP L_15
L_19:
	MOV EAX,2
	MOV WORD PTR [EBP-2], AX
	JMP L_15
L_20:
	MOV EAX,4
	MOV WORD PTR [EBP-2], AX
	JMP L_15
L_21:
	MOV EAX,6
	MOV WORD PTR [EBP-2], AX
	JMP L_15
L_22:
L_23:
	MOVSX EAX,WORD PTR [EBP+8]
	CMP EAX,32
	SETE AL
	AND AL,AL
	JZ L_24
	MOV EAX,4
	MOV WORD PTR [EBP-2], AX
	JMP L_25
L_24:
	MOV EAX,2
	MOV WORD PTR [EBP-2], AX
L_25:
	JMP L_15
L_26:
	MOVSX EAX,WORD PTR [EBP+8]
	CMP EAX,32
	SETE AL
	AND AL,AL
	JZ L_27
	MOV EAX,6
	MOV WORD PTR [EBP-2], AX
	JMP L_28
L_27:
	MOV EAX,4
	MOV WORD PTR [EBP-2], AX
L_28:
	MOV EAX,1
	MOV WORD PTR [EBP-4], AX
	JMP L_15
L_16:
	CMP EAX,112
	JE L_26
	CMP EAX,118
	JE L_23
	CMP EAX,99
	JE L_22
	CMP EAX,115
	JE L_21
	CMP EAX,100
	JE L_20
	CMP EAX,119
	JE L_19
	CMP EAX,98
	JE L_18
	CMP EAX,97
	JE L_17
L_15:
	XOR EAX,EAX
	MOV WORD PTR [EBP-6], AX
L_29:
	MOVSX EAX,WORD PTR [EBP-6]
	MOVSX ECX,WORD PTR [EBP-2]
	CMP EAX,ECX
	SETL AL
	AND AL,AL
	JZ L_30
	JMP SHORT L_31
L_32:
	MOVSX EAX,WORD PTR [EBP-6]
	INC WORD PTR [EBP-6]
	JMP SHORT L_29
L_31:
	MOVSX EAX,WORD PTR [EBP-6]
	LEA ESI,BYTE PTR [EBP-12]
	ADD ESI,EAX
	MOV EBX,ESI
	PUSH EBX
	CALL _getbyte
	POP EDX
	MOV BYTE PTR [EDX], AL
	JMP L_32
L_30:
L_33:
	MOVSX EAX,WORD PTR [EBP-6]
	MOVSX ECX,WORD PTR [EBP+16]
	CMP EAX,ECX
	SETL AL
	AND AL,AL
	JZ L_34
	JMP SHORT L_35
L_36:
	MOVSX EAX,WORD PTR [EBP-6]
	INC WORD PTR [EBP-6]
	JMP SHORT L_33
L_35:
	MOVSX EAX,WORD PTR [EBP-6]
	LEA ESI,BYTE PTR [EBP-12]
	ADD ESI,EAX
	MOVSX EAX,WORD PTR [EBP-6]
	MOV ECX,1
	SUB EAX,ECX
	MOV EBX,ESI
	LEA ESI,BYTE PTR [EBP-12]
	ADD ESI,EAX
	XOR EAX,EAX
	MOV AL,BYTE PTR [ESI]
	MOV ECX,128
	AND EAX,ECX
	JZ SHORT L_38
	MOV EAX,255
	JMP SHORT L_37
L_38:
	XOR EAX,EAX
L_37:
	MOV BYTE PTR [EBX], AL
	JMP L_36
L_34:
	MOVSX EAX,WORD PTR [EBP-4]
	AND EAX,EAX
	JZ L_39
	PUSH OFFSET L_lit+3676
	MOVSX EAX,WORD PTR [EBP-2]
	MOV ECX,1
	SUB EAX,ECX
	LEA ESI,BYTE PTR [EBP-12]
	ADD ESI,EAX
	XOR EAX,EAX
	MOV AL,BYTE PTR [ESI]
	PUSH EAX
	MOVSX EAX,WORD PTR [EBP-2]
	MOV ECX,2
	SUB EAX,ECX
	LEA ESI,BYTE PTR [EBP-12]
	ADD ESI,EAX
	XOR EAX,EAX
	MOV AL,BYTE PTR [ESI]
	PUSH EAX
	MOV EDI, 8
	CALL _xprintf
	ADD ESP,12
	MOVSX EAX,WORD PTR [EBP-2]
	MOV ECX,2
	SUB EAX,ECX
	MOV WORD PTR [EBP-2], AX
L_39:
	MOVSX EAX,WORD PTR [EBP+16]
	MOVSX ECX,WORD PTR [EBP-2]
	CMP EAX,ECX
	SETG AL
	AND AL,AL
	JZ L_40
	MOVSX EAX,WORD PTR [EBP+12]
	AND EAX,EAX
	JNZ L_41
	PUSH OFFSET L_lit+3685
	MOV EDI, 0
	CALL _xprintf
	ADD ESP,4
L_41:
	MOV EAX,4
	MOV WORD PTR [EBP-2], AX
L_40:
	MOVSX EAX,WORD PTR [EBP-2]
	JMP L_43
L_44:
	PUSH OFFSET L_lit+3687
	LEA ESI,BYTE PTR [EBP-12]
	XOR EAX,EAX
	MOV AL,BYTE PTR [ESI]
	PUSH EAX
	MOV EDI, 4
	CALL _xprintf
	ADD ESP,8
	JMP L_42
L_45:
	PUSH OFFSET L_lit+3692
	MOV EAX,1
	LEA ESI,BYTE PTR [EBP-12]
	ADD ESI,EAX
	XOR EAX,EAX
	MOV AL,BYTE PTR [ESI]
	PUSH EAX
	LEA ESI,BYTE PTR [EBP-12]
	XOR EAX,EAX
	MOV AL,BYTE PTR [ESI]
	PUSH EAX
	MOV EDI, 8
	CALL _xprintf
	ADD ESP,12
	JMP L_42
L_46:
	PUSH OFFSET L_lit+3701
	MOV EAX,3
	LEA ESI,BYTE PTR [EBP-12]
	ADD ESI,EAX
	XOR EAX,EAX
	MOV AL,BYTE PTR [ESI]
	PUSH EAX
	MOV EAX,2
	LEA ESI,BYTE PTR [EBP-12]
	ADD ESI,EAX
	XOR EAX,EAX
	MOV AL,BYTE PTR [ESI]
	PUSH EAX
	MOV EAX,1
	LEA ESI,BYTE PTR [EBP-12]
	ADD ESI,EAX
	XOR EAX,EAX
	MOV AL,BYTE PTR [ESI]
	PUSH EAX
	LEA ESI,BYTE PTR [EBP-12]
	XOR EAX,EAX
	MOV AL,BYTE PTR [ESI]
	PUSH EAX
	MOV EDI, 16
	CALL _xprintf
	ADD ESP,20
	JMP L_42
L_43:
	CMP EAX,4
	JE L_46
	CMP EAX,2
	JE L_45
	CMP EAX,1
	JE L_44
L_42:
	MOV ESP,EBP
	POP EBP
	RETN 16
_reg_name:
	PUSH EBP
	MOV EBP,ESP
	MOVSX EAX,BYTE PTR [EBP+8]
	CMP EAX,70
	SETE AL
	AND AL,AL
	JZ L_47
	PUSH OFFSET L_lit+3718
	XOR EAX,EAX
	MOV AL,BYTE PTR [EBP+12]
	PUSH EAX
	MOV EDI, 4
	CALL _xprintf
	ADD ESP,8
	JMP L_48
L_47:
	MOVSX EAX,BYTE PTR [EBP+8]
	CMP EAX,118
	SETE AL
	AND AL,AL
	JZ L_49
	MOVSX EAX,_opsize
	CMP EAX,32
	SETE AL
	AND AL,AL
L_49:
	JNZ L_50
	MOVSX EAX,BYTE PTR [EBP+8]
	CMP EAX,100
	SETE AL
	AND AL,AL
L_50:
	JZ L_51
	PUSH OFFSET L_lit+3725
	MOV EDI, 0
	CALL _xprintf
	ADD ESP,4
L_51:
	MOVSX EAX,BYTE PTR [EBP+8]
	CMP EAX,98
	SETE AL
	AND AL,AL
	JZ L_52
	PUSH OFFSET L_lit+3727
	XOR EAX,EAX
	MOV AL,BYTE PTR [EBP+12]
	SHL EAX,2
	MOV ESI,OFFSET _breg_names
	ADD ESI,EAX
	PUSH DWORD PTR [ESI]
	MOV EDI, 4
	CALL _xprintf
	ADD ESP,8
	JMP L_53
L_52:
	PUSH OFFSET L_lit+3730
	XOR EAX,EAX
	MOV AL,BYTE PTR [EBP+12]
	SHL EAX,2
	MOV ESI,OFFSET _wreg_names
	ADD ESI,EAX
	PUSH DWORD PTR [ESI]
	MOV EDI, 4
	CALL _xprintf
	ADD ESP,8
L_53:
L_48:
	POP EBP
	RETN 8
_escape:
	PUSH EBP
	MOV EBP,ESP
	SUB ESP,12
	MOVSX EAX,BYTE PTR [EBP+12]
	JMP L_55
L_56:
	MOVSX EAX,BYTE PTR [EBP+8]
	PUSH EAX
	PUSH 4
	XOR EAX,EAX
	PUSH EAX
	PUSH 32
	CALL _ohex
	JMP L_54
L_57:
	PUSH OFFSET L_lit+3733
	CALL _modrm
	MOV ECX,3
	SHR AL,CL
	MOV ECX,7
	AND EAX,ECX
	PUSH EAX
	MOV EDI, 4
	CALL _xprintf
	ADD ESP,8
	JMP L_54
L_58:
	PUSH OFFSET L_lit+3738
	CALL _modrm
	PUSH EAX
	MOV EDI, 4
	CALL _xprintf
	ADD ESP,8
	JMP L_54
L_59:
	MOVSX EAX,BYTE PTR [EBP+8]
	PUSH EAX
	CALL _do_modrm
	JMP L_54
L_60:
	MOVSX EAX,BYTE PTR [EBP+8]
	CMP EAX,70
	SETE AL
	AND AL,AL
	JZ L_61
	CALL _modrm
	MOV ECX,7
	AND EAX,ECX
	PUSH EAX
	MOVSX EAX,BYTE PTR [EBP+8]
	PUSH EAX
	CALL _reg_name
	JMP L_62
L_61:
	CALL _modrm
	MOV ECX,3
	SHR AL,CL
	MOV ECX,7
	AND EAX,ECX
	PUSH EAX
	MOVSX EAX,BYTE PTR [EBP+8]
	PUSH EAX
	CALL _reg_name
L_62:
	JMP L_54
L_63:
	MOVSX EAX,BYTE PTR [EBP+8]
	PUSH EAX
	XOR EAX,EAX
	PUSH EAX
	XOR EAX,EAX
	PUSH EAX
	MOVSX EAX,_opsize
	PUSH EAX
	CALL _ohex
	JMP L_54
L_64:
	MOVSX EAX,BYTE PTR [EBP+8]
	PUSH EAX
	CALL _bytes
	JMP L_66
L_67:
	CALL _getbyte
	MOV BYTE PTR [EBP-10], AL
	MOVSX EAX,BYTE PTR [EBP-10]
	MOV DWORD PTR [EBP-8], EAX
	JMP L_65
L_68:
	CALL _getbyte
	MOV BYTE PTR [EBP-10], AL
	CALL _getbyte
	MOV ECX,8
	SHL EAX,CL
	AND EAX,0FFh
	MOV WORD PTR [EBP-12], AX
	MOVSX EAX,WORD PTR [EBP-12]
	MOVSX ECX,BYTE PTR [EBP-10]
	ADD EAX,ECX
	MOV DWORD PTR [EBP-8], EAX
	JMP L_65
L_69:
	CALL _getbyte
	MOV DWORD PTR [EBP-8], EAX
	CALL _getbyte
	MOV ECX,8
	SHL EAX,CL
	AND EAX,0FFh
	OR EAX,DWORD PTR [EBP-8]
	MOV DWORD PTR [EBP-8], EAX
	CALL _getbyte
	MOV ECX,16
	SHL EAX,CL
	AND EAX,0FFh
	OR EAX,DWORD PTR [EBP-8]
	MOV DWORD PTR [EBP-8], EAX
	CALL _getbyte
	MOV ECX,24
	SHL EAX,CL
	AND EAX,0FFh
	OR EAX,DWORD PTR [EBP-8]
	MOV DWORD PTR [EBP-8], EAX
	JMP L_65
L_66:
	CMP EAX,4
	JE L_69
	CMP EAX,2
	JE L_68
	CMP EAX,1
	JE L_67
L_65:
	MOV EAX,_addrIn
	ADD EAX,DWORD PTR [EBP-8]
	MOV DWORD PTR [EBP-4], EAX
	PUSH OFFSET L_lit+3743
	PUSH DWORD PTR [EBP-4]
	MOV EDI, 4
	CALL _xprintf
	ADD ESP,8
	JMP L_54
L_70:
	MOVSX EAX,BYTE PTR [EBP+8]
	PUSH EAX
	CALL _do_modrm
	JMP L_54
L_71:
	PUSH OFFSET L_lit+3746
	CALL _decode
	MOVSX EAX,BYTE PTR [EBP+8]
	PUSH EAX
	PUSH 4
	XOR EAX,EAX
	PUSH EAX
	PUSH 32
	CALL _ohex
	PUSH OFFSET L_lit+3751
	MOV EDI, 0
	CALL _xprintf
	ADD ESP,4
	JMP L_54
L_72:
	MOVSX EAX,BYTE PTR [EBP+8]
	PUSH EAX
	CALL _do_modrm
	JMP L_54
L_73:
	PUSH OFFSET L_lit+3753
	CALL _modrm
	MOV ECX,3
	SHR AL,CL
	MOV ECX,7
	AND EAX,ECX
	SHL EAX,2
	MOV ESI,OFFSET _seg_names
	ADD ESI,EAX
	PUSH DWORD PTR [ESI]
	MOV EDI, 4
	CALL _xprintf
	ADD ESP,8
	JMP L_54
L_74:
	PUSH OFFSET L_lit+3756
	CALL _modrm
	PUSH EAX
	MOV EDI, 4
	CALL _xprintf
	ADD ESP,8
	JMP L_54
L_75:
	PUSH OFFSET L_lit+3761
	MOV EDI, 0
	CALL _xprintf
	ADD ESP,4
	JMP L_54
L_76:
	PUSH OFFSET L_lit+3770
	MOV EDI, 0
	CALL _xprintf
	ADD ESP,4
	JMP L_54
L_77:
	CALL _getbyte
	MOV BYTE PTR [EBP-9], AL
	XOR EAX,EAX
	MOV AL,BYTE PTR [EBP-9]
	CMP EAX,16
	SETB AL
	AND AL,AL
	JZ L_78
	XOR EAX,EAX
	MOV AL,BYTE PTR [EBP-9]
	SHL EAX,2
	MOV ESI,OFFSET _SecOp00
	ADD ESI,EAX
	PUSH DWORD PTR [ESI]
	CALL _decode
	JMP L_79
L_78:
	XOR EAX,EAX
	MOV AL,BYTE PTR [EBP-9]
	CMP EAX,31
	SETA AL
	AND AL,AL
	JZ L_80
	XOR EAX,EAX
	MOV AL,BYTE PTR [EBP-9]
	CMP EAX,48
	SETB AL
	AND AL,AL
L_80:
	JZ L_81
	XOR EAX,EAX
	MOV AL,BYTE PTR [EBP-9]
	MOV ECX,32
	SUB EAX,ECX
	SHL EAX,2
	MOV ESI,OFFSET _SecOp20
	ADD ESI,EAX
	PUSH DWORD PTR [ESI]
	CALL _decode
	JMP L_82
L_81:
	XOR EAX,EAX
	MOV AL,BYTE PTR [EBP-9]
	CMP EAX,127
	SETA AL
	AND AL,AL
	JZ L_83
	XOR EAX,EAX
	MOV AL,BYTE PTR [EBP-9]
	CMP EAX,192
	SETB AL
	AND AL,AL
L_83:
	JZ L_84
	XOR EAX,EAX
	MOV AL,BYTE PTR [EBP-9]
	MOV ECX,128
	SUB EAX,ECX
	SHL EAX,2
	MOV ESI,OFFSET _SecOp80
	ADD ESI,EAX
	PUSH DWORD PTR [ESI]
	CALL _decode
	JMP L_85
L_84:
	PUSH OFFSET L_lit+3779
	MOV EDI, 0
	CALL _xprintf
	ADD ESP,4
L_85:
L_82:
L_79:
	JMP L_54
L_86:
	MOVSX EAX,_opsize
	CMP EAX,32
	SETE AL
	AND AL,AL
	JZ L_87
	MOVSX EAX,BYTE PTR [EBP+8]
	CMP EAX,119
	SETE AL
	AND AL,AL
	JZ L_88
	PUSH OFFSET L_lit+3787
	MOV EDI, 0
	CALL _xprintf
	ADD ESP,4
	JMP L_89
L_88:
	PUSH OFFSET L_lit+3789
	MOV EDI, 0
	CALL _xprintf
	ADD ESP,4
	PUSH OFFSET L_lit+3791
	MOVSX EAX,BYTE PTR [EBP+8]
	PUSH EAX
	MOV EDI, 4
	CALL _xprintf
	ADD ESP,8
L_89:
	JMP L_90
L_87:
	PUSH OFFSET L_lit+3794
	MOVSX EAX,BYTE PTR [EBP+8]
	PUSH EAX
	MOV EDI, 4
	CALL _xprintf
	ADD ESP,8
L_90:
	JMP L_54
L_91:
	PUSH OFFSET L_lit+3797
	MOV EDI, 0
	CALL _xprintf
	ADD ESP,4
	JMP L_54
L_92:
	MOVSX EAX,BYTE PTR [EBP+8]
	MOV ECX,48
	SUB EAX,ECX
	SHL EAX,5
	MOV EBX,EAX
	PUSH EBX
	CALL _modrm
	MOV ECX,3
	SHR AL,CL
	MOV ECX,7
	AND EAX,ECX
	SHL EAX,2
	POP EDX
	MOV ECX,EDX
	ADD EAX,ECX
	MOV ESI,OFFSET _groups
	ADD ESI,EAX
	PUSH DWORD PTR [ESI]
	CALL _decode
	JMP L_54
L_93:
	MOVSX EAX,BYTE PTR [EBP+8]
	JMP L_95
L_96:
L_97:
L_98:
L_99:
L_100:
L_101:
	MOVSX EAX,BYTE PTR [EBP+8]
	MOV _prefix, AX
	CALL _getbyte
	SHL EAX,2
	MOV ESI,OFFSET _opmap1
	ADD ESI,EAX
	PUSH DWORD PTR [ESI]
	CALL _decode
	JMP L_94
L_102:
	MOVSX EAX,_prefix
	AND EAX,EAX
	JZ L_103
	PUSH OFFSET L_lit+3808
	MOVSX EAX,_prefix
	PUSH EAX
	MOV EDI, 4
	CALL _xprintf
	ADD ESP,8
L_103:
	JMP L_94
L_104:
	CALL _getbyte
	SHL EAX,2
	MOV ESI,OFFSET _opmap1
	ADD ESI,EAX
	PUSH DWORD PTR [ESI]
	CALL _decode
	JMP L_94
L_95:
	CMP EAX,32
	JE L_104
	CMP EAX,58
	JE L_102
	CMP EAX,83
	JE L_101
	CMP EAX,71
	JE L_100
	CMP EAX,70
	JE L_99
	CMP EAX,69
	JE L_98
	CMP EAX,68
	JE L_97
	CMP EAX,67
	JE L_96
L_94:
	JMP L_54
L_105:
	MOVSX EAX,BYTE PTR [EBP+8]
	CMP EAX,111
	SETE AL
	AND AL,AL
	JZ L_106
	MOV EAX,48
	MOVSX ECX,_opsize
	SUB EAX,ECX
	MOV _opsize, AX
	CALL _getbyte
	SHL EAX,2
	MOV ESI,OFFSET _opmap1
	ADD ESI,EAX
	PUSH DWORD PTR [ESI]
	CALL _decode
L_106:
	JMP L_54
L_55:
	CMP EAX,115
	JE L_105
	CMP EAX,112
	JE L_93
	CMP EAX,103
	JE L_92
	CMP EAX,102
	JE L_91
	CMP EAX,101
	JE L_86
	CMP EAX,50
	JE L_77
	CMP EAX,89
	JE L_76
	CMP EAX,88
	JE L_75
	CMP EAX,84
	JE L_74
	CMP EAX,83
	JE L_73
	CMP EAX,82
	JE L_72
	CMP EAX,79
	JE L_71
	CMP EAX,77
	JE L_70
	CMP EAX,74
	JE L_64
	CMP EAX,73
	JE L_63
	CMP EAX,71
	JE L_60
	CMP EAX,69
	JE L_59
	CMP EAX,68
	JE L_58
	CMP EAX,67
	JE L_57
	CMP EAX,65
	JE L_56
L_54:
	MOV ESP,EBP
	POP EBP
	RETN 8
_decode:
	PUSH EBP
	MOV EBP,ESP
	SUB ESP,1
	MOV EAX,DWORD PTR [EBP+8]
	CMP EAX,0
	SETE AL
	AND AL,AL
	JZ L_107
	PUSH OFFSET L_lit+3813
	MOV EDI, 0
	CALL _xprintf
	ADD ESP,4
L_107:
L_108:
	MOV ESI,DWORD PTR [EBP+8]
	INC DWORD PTR [EBP+8]
	MOVSX EAX,BYTE PTR [ESI]
	MOV BYTE PTR [EBP-1], AL
	XOR ECX,ECX
	CMP EAX,ECX
	SETNE AL
	AND AL,AL
	JZ L_109
	MOVSX EAX,BYTE PTR [EBP-1]
	CMP EAX,126
	SETE AL
	AND AL,AL
	JZ L_110
	MOV ESI,DWORD PTR [EBP+8]
	INC DWORD PTR [EBP+8]
	MOVSX EAX,BYTE PTR [ESI]
	MOV BYTE PTR [EBP-1], AL
	MOVSX EAX,BYTE PTR [EBP-1]
	PUSH EAX
	MOV ESI,DWORD PTR [EBP+8]
	INC DWORD PTR [EBP+8]
	MOVSX EAX,BYTE PTR [ESI]
	PUSH EAX
	CALL _escape
	JMP L_111
L_110:
	MOVSX EAX,BYTE PTR [EBP-1]
	CMP EAX,32
	SETE AL
	AND AL,AL
	JZ L_112
	PUSH OFFSET L_lit+3823
	MOV EDI, 0
	CALL _xprintf
	ADD ESP,4
	JMP L_113
L_112:
	PUSH OFFSET L_lit+3825
	MOVSX EAX,BYTE PTR [EBP-1]
	PUSH EAX
	MOV EDI, 4
	CALL _xprintf
	ADD ESP,8
L_113:
L_111:
	JMP L_108
L_109:
	MOV ESP,EBP
	POP EBP
	RETN 4
_do_sib:
	PUSH EBP
	MOV EBP,ESP
	SUB ESP,6
	CALL _sib
	MOV ECX,6
	SHR AL,CL
	MOV ECX,7
	AND EAX,ECX
	MOV WORD PTR [EBP-2], AX
	CALL _sib
	MOV ECX,3
	SHR AL,CL
	MOV ECX,7
	AND EAX,ECX
	MOV WORD PTR [EBP-4], AX
	CALL _sib
	MOV ECX,7
	AND EAX,ECX
	MOV WORD PTR [EBP-6], AX
	MOVSX EAX,WORD PTR [EBP-6]
	JMP L_115
L_116:
	PUSH OFFSET L_lit+3828
	CALL _decode
	JMP L_114
L_117:
	PUSH OFFSET L_lit+3836
	CALL _decode
	JMP L_114
L_118:
	PUSH OFFSET L_lit+3844
	CALL _decode
	JMP L_114
L_119:
	PUSH OFFSET L_lit+3852
	CALL _decode
	JMP L_114
L_120:
	PUSH OFFSET L_lit+3860
	CALL _decode
	JMP L_114
L_121:
	MOVSX EAX,WORD PTR [EBP+8]
	XOR ECX,ECX
	CMP EAX,ECX
	SETE AL
	AND AL,AL
	JZ L_122
	PUSH OFFSET L_lit+3868
	CALL _decode
	PUSH 100
	PUSH 4
	XOR EAX,EAX
	PUSH EAX
	PUSH 32
	CALL _ohex
	JMP L_123
L_122:
	PUSH OFFSET L_lit+3873
	CALL _decode
L_123:
	JMP L_114
L_124:
	PUSH OFFSET L_lit+3881
	CALL _decode
	JMP L_114
L_125:
	PUSH OFFSET L_lit+3889
	CALL _decode
	JMP L_114
L_115:
	CMP EAX,7
	JE L_125
	CMP EAX,6
	JE L_124
	CMP EAX,5
	JE L_121
	CMP EAX,4
	JE L_120
	CMP EAX,3
	JE L_119
	CMP EAX,2
	JE L_118
	CMP EAX,1
	JE L_117
	CMP EAX,0
	JE L_116
L_114:
	MOVSX EAX,WORD PTR [EBP-4]
	JMP L_127
L_128:
	PUSH OFFSET L_lit+3897
	MOV EDI, 0
	CALL _xprintf
	ADD ESP,4
	JMP L_126
L_129:
	PUSH OFFSET L_lit+3902
	MOV EDI, 0
	CALL _xprintf
	ADD ESP,4
	JMP L_126
L_130:
	PUSH OFFSET L_lit+3907
	MOV EDI, 0
	CALL _xprintf
	ADD ESP,4
	JMP L_126
L_131:
	PUSH OFFSET L_lit+3912
	MOV EDI, 0
	CALL _xprintf
	ADD ESP,4
	JMP L_126
L_132:
	JMP L_126
L_133:
	PUSH OFFSET L_lit+3917
	MOV EDI, 0
	CALL _xprintf
	ADD ESP,4
	JMP L_126
L_134:
	PUSH OFFSET L_lit+3922
	MOV EDI, 0
	CALL _xprintf
	ADD ESP,4
	JMP L_126
L_135:
	PUSH OFFSET L_lit+3927
	MOV EDI, 0
	CALL _xprintf
	ADD ESP,4
	JMP L_126
L_127:
	CMP EAX,7
	JE L_135
	CMP EAX,6
	JE L_134
	CMP EAX,5
	JE L_133
	CMP EAX,4
	JE L_132
	CMP EAX,3
	JE L_131
	CMP EAX,2
	JE L_130
	CMP EAX,1
	JE L_129
	CMP EAX,0
	JE L_128
L_126:
	MOVSX EAX,WORD PTR [EBP-4]
	CMP EAX,4
	SETNE AL
	AND AL,AL
	JZ L_136
	MOVSX EAX,WORD PTR [EBP-2]
	JMP L_138
L_139:
	JMP L_137
L_140:
	PUSH OFFSET L_lit+3932
	MOV EDI, 0
	CALL _xprintf
	ADD ESP,4
	JMP L_137
L_141:
	PUSH OFFSET L_lit+3935
	MOV EDI, 0
	CALL _xprintf
	ADD ESP,4
	JMP L_137
L_142:
	PUSH OFFSET L_lit+3938
	MOV EDI, 0
	CALL _xprintf
	ADD ESP,4
	JMP L_137
L_138:
	CMP EAX,3
	JE L_142
	CMP EAX,2
	JE L_141
	CMP EAX,1
	JE L_140
	CMP EAX,0
	JE L_139
L_137:
L_136:
	MOV ESP,EBP
	POP EBP
	RETN 4
_do_modrm:
	PUSH EBP
	MOV EBP,ESP
	SUB ESP,4
	CALL _modrm
	MOV ECX,6
	SHR AL,CL
	MOV ECX,7
	AND EAX,ECX
	MOV WORD PTR [EBP-2], AX
	CALL _modrm
	MOV ECX,7
	AND EAX,ECX
	MOV WORD PTR [EBP-4], AX
	MOVSX EAX,WORD PTR [EBP-2]
	CMP EAX,3
	SETE AL
	AND AL,AL
	JZ L_143
	MOVSX EAX,WORD PTR [EBP-4]
	PUSH EAX
	MOVSX EAX,BYTE PTR [EBP+8]
	PUSH EAX
	CALL _reg_name
	JMP L_144
L_143:
	MOVSX EAX,WORD PTR [EBP-2]
	XOR ECX,ECX
	CMP EAX,ECX
	SETE AL
	AND AL,AL
	JZ L_145
	MOVSX EAX,WORD PTR [EBP-4]
	CMP EAX,5
	SETE AL
	AND AL,AL
L_145:
	JZ L_146
	PUSH OFFSET L_lit+3941
	CALL _decode
	PUSH 100
	PUSH 4
	XOR EAX,EAX
	PUSH EAX
	PUSH 32
	CALL _ohex
	PUSH OFFSET L_lit+3946
	MOV EDI, 0
	CALL _xprintf
	ADD ESP,4
	JMP L_144
L_146:
	MOVSX EAX,WORD PTR [EBP-4]
	CMP EAX,4
	SETNE AL
	AND AL,AL
	JZ L_147
	PUSH OFFSET L_lit+3948
	CALL _decode
L_147:
	MOVSX EAX,WORD PTR [EBP-4]
	JMP L_149
L_150:
	PUSH OFFSET L_lit+3953
	MOV EDI, 0
	CALL _xprintf
	ADD ESP,4
	JMP L_148
L_151:
	PUSH OFFSET L_lit+3957
	MOV EDI, 0
	CALL _xprintf
	ADD ESP,4
	JMP L_148
L_152:
	PUSH OFFSET L_lit+3961
	MOV EDI, 0
	CALL _xprintf
	ADD ESP,4
	JMP L_148
L_153:
	PUSH OFFSET L_lit+3965
	MOV EDI, 0
	CALL _xprintf
	ADD ESP,4
	JMP L_148
L_154:
	MOVSX EAX,WORD PTR [EBP-2]
	PUSH EAX
	CALL _do_sib
	JMP L_148
L_155:
	PUSH OFFSET L_lit+3969
	MOV EDI, 0
	CALL _xprintf
	ADD ESP,4
	JMP L_148
L_156:
	PUSH OFFSET L_lit+3973
	MOV EDI, 0
	CALL _xprintf
	ADD ESP,4
	JMP L_148
L_157:
	PUSH OFFSET L_lit+3977
	MOV EDI, 0
	CALL _xprintf
	ADD ESP,4
	JMP L_148
L_149:
	CMP EAX,7
	JE L_157
	CMP EAX,6
	JE L_156
	CMP EAX,5
	JE L_155
	CMP EAX,4
	JE L_154
	CMP EAX,3
	JE L_153
	CMP EAX,2
	JE L_152
	CMP EAX,1
	JE L_151
	CMP EAX,0
	JE L_150
L_148:
	MOVSX EAX,WORD PTR [EBP-2]
	JMP L_159
L_160:
	PUSH 98
	PUSH 4
	XOR EAX,EAX
	PUSH EAX
	PUSH 32
	CALL _ohex
	JMP L_158
L_161:
	PUSH OFFSET L_lit+3981
	MOV EDI, 0
	CALL _xprintf
	ADD ESP,4
	PUSH 118
	PUSH 4
	XOR EAX,EAX
	PUSH EAX
	PUSH 32
	CALL _ohex
	JMP L_158
L_159:
	CMP EAX,2
	JE L_161
	CMP EAX,1
	JE L_160
L_158:
	PUSH OFFSET L_lit+3983
	MOV EDI, 0
	CALL _xprintf
	ADD ESP,4
L_144:
	MOV ESP,EBP
	POP EBP
	RETN 4
PUBLIC _disassemble:
	PUSH EBP
	MOV EBP,ESP
	XOR EAX,EAX
	MOV _prefix, AX
	XOR EAX,EAX
	MOV _fmodrmv, AL
	XOR EAX,EAX
	MOV _fsibv, AL
	MOV EAX,32
	MOV _opsize, AX
	MOV EAX,DWORD PTR [EBP+8]
	MOV _addrIn, EAX
	PUSH OFFSET L_lit+3985
	PUSH _addrIn
	MOV EDI, 4
	CALL _xprintf
	ADD ESP,8
	CALL _getbyte
	SHL EAX,2
	MOV ESI,OFFSET _opmap1
	ADD ESI,EAX
	PUSH DWORD PTR [ESI]
	CALL _decode
	PUSH OFFSET L_lit+3993
	MOV EDI, 0
	CALL _xprintf
	ADD ESP,4
	MOV EAX,_addrIn
	POP EBP
	RETN 4
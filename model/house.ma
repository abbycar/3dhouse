//Maya ASCII 2014 scene
//Name: house.ma
//Last modified: Tue, Feb 17, 2015 06:42:05 PM
//Codeset: 1252
requires maya "2014";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2014";
fileInfo "version" "2014";
fileInfo "cutIdentifier" "201307170459-880822";
fileInfo "osv" "Microsoft Windows 7 Home Premium Edition, 64-bit Windows 7 Service Pack 1 (Build 7601)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 85.814887566531326 66.186050427910118 -19.880114484956813 ;
	setAttr ".r" -type "double3" -30.000000000007599 -263.20000000000823 0 ;
	setAttr ".rp" -type "double3" 5.5511151231257827e-017 0 1.4210854715202004e-014 ;
	setAttr ".rpt" -type "double3" 1.5100400289454104e-014 -6.2865608988460341e-016 
		-1.4866638290085151e-014 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999979;
	setAttr ".coi" 111.02776673343567;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 5.2214841842651225 7.6546850204467773 0.40770053863523403 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 90.817099755275095;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 3.1723615877002387 6.650138787882927 100.84260138350743 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 59.821454142447791;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 7.2930588621296284 3.7197575651200538 -3.5634192247605352 ;
	setAttr ".r" -type "double3" 0 89.999999999999972 0 ;
	setAttr ".rp" -type "double3" 0 -1.7763568394002505e-015 0 ;
	setAttr ".rpt" -type "double3" 4.4262519460430375e-016 1.7793662517494109e-015 -6.0142919714995199e-017 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 0.22541276838714186;
	setAttr ".ow" 38.116353952275752;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".tp" -type "double3" 7.0676460937424865 13.21132728039381 0.12438518715960351 ;
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "pCube4";
	setAttr ".t" -type "double3" 5.2669578466694356 7.8093694719508644 -16.757894380768391 ;
	setAttr ".s" -type "double3" 1.6818866415239395 1 1 ;
createNode mesh -n "polySurfaceShape1" -p "pCube4";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -10 -7.5 0.25 10 -7.5 0.25 -10 7.5 0.25 10 7.5 0.25
		 -10 7.5 -0.25 10 7.5 -0.25 -10 -7.5 -0.25 10 -7.5 -0.25;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "transform45" -p "pCube4";
	setAttr ".v" no;
createNode mesh -n "pCubeShape4" -p "transform45";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "refridge";
	setAttr ".t" -type "double3" 4.1359864150541252 6.9904422490567013 -1.7866266006383384 ;
createNode transform -n "transform3" -p "refridge";
	setAttr ".v" no;
createNode mesh -n "refridgeShape" -p "transform3";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:25]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 42 ".uvst[0].uvsp[0:41]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.625 0.1781351 0.625 0.57199597 0.875 0.17800401 0.625
		 0.16351208 0.625 0.58648789 0.875 0.16351208 0.625 0.011881455 0.625 0.73811853 0.875
		 0.011881455 0.625 0.018615335 0.625 0.73138463 0.875 0.018615343 0.625 0.1781351
		 0.875 0.17800401 0.875 0.25 0.625 0.25 0.625 0.1781351 0.875 0.17800401 0.875 0.25
		 0.625 0.25 0.625 0.018615335 0.875 0.018615343 0.875 0.16351208 0.625 0.16351208
		 0.625 0 0.875 0 0.875 0.011881455 0.625 0.011881455;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 11 ".pt";
	setAttr ".pt[10]" -type "float3" 0 0.39043394 -4.7683716e-007 ;
	setAttr ".pt[11]" -type "float3" 0 0.39043394 0 ;
	setAttr ".pt[14]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[20]" -type "float3" 0 0.24010548 -0.37361261 ;
	setAttr ".pt[21]" -type "float3" 0 0.24098305 0.37361261 ;
	setAttr ".pt[22]" -type "float3" 0 -0.24098305 0.37361261 ;
	setAttr ".pt[23]" -type "float3" 0 -0.24098305 -0.37361261 ;
	setAttr ".pt[24]" -type "float3" 0 0.22938257 -0.16858113 ;
	setAttr ".pt[25]" -type "float3" 0 0.22938257 0.16858065 ;
	setAttr ".pt[26]" -type "float3" 0 0.16105139 0.16858065 ;
	setAttr ".pt[27]" -type "float3" 0 0.16105139 -0.16858113 ;
	setAttr -s 32 ".vt[0:31]"  -3.40310669 -6.99044228 3.12110257 1.56731176 -6.99044228 3.12110257
		 -3.40310669 6.99044228 3.12110257 1.56731176 6.99044228 3.12110257 -3.40310669 6.99044228 -3.12110257
		 1.56731176 6.99044228 -3.12110257 -3.40310669 -6.99044228 -3.12110257 1.56731176 -6.99044228 -3.12110257
		 1.56731176 2.9715023 3.12110233 1.56731176 2.96417141 -3.12110257 1.56731176 2.15373135 3.12110233
		 1.56731176 2.15373135 -3.12110257 1.56731176 -6.32598925 3.12110257 1.56731176 -6.32598925 -3.12110257
		 1.56731176 -5.94940662 3.12110257 1.56731176 -5.94940662 -3.12110257 1.56731176 2.9715023 3.12110233
		 1.56731176 2.96417141 -3.12110257 1.56731176 6.99044228 -3.12110257 1.56731176 6.99044228 3.12110257
		 2.17235613 2.9715023 3.12110233 2.17235613 2.96417141 -3.12110257 2.17235613 6.99044228 -3.12110257
		 2.17235613 6.99044228 3.12110257 2.17235613 -5.94940662 3.12110257 2.17235613 -5.94940662 -3.12110257
		 2.17235613 2.15373135 -3.12110257 2.17235613 2.15373135 3.12110233 1.9204607 -6.99044228 -3.12110257
		 1.9204607 -6.99044228 3.12110257 1.9204607 -6.32598925 -3.12110257 1.9204607 -6.32598925 3.12110257;
	setAttr -s 56 ".ed[0:55]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 12 1 2 4 0
		 3 5 0 4 6 0 5 9 0 6 0 0 7 1 1 8 3 0 9 11 0 8 9 0 10 8 0 11 15 1 10 11 0 12 14 0 13 7 1
		 12 13 0 14 10 1 15 13 0 14 15 0 8 16 0 9 17 0 16 17 0 5 18 0 18 17 0 3 19 0 19 18 0
		 16 19 0 16 20 0 17 21 0 20 21 0 18 22 0 22 21 0 19 23 0 23 22 0 20 23 0 14 24 0 15 25 0
		 24 25 0 11 26 0 26 25 0 10 27 0 27 26 0 24 27 0 7 28 0 1 29 0 28 29 0 13 30 0 30 28 0
		 12 31 0 31 30 0 29 31 0;
	setAttr -s 26 -ch 112 ".fc[0:25]" -type "polyFaces" 
		f 8 0 5 18 21 15 12 -2 -5
		mu 0 8 0 1 20 23 17 14 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 8 2 9 13 16 22 19 -4 -9
		mu 0 8 4 5 15 18 24 21 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 34 -37 -39 -40
		mu 0 4 30 31 32 33
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		f 4 17 -14 -15 -16
		mu 0 4 17 19 16 14
		f 4 42 -45 -47 -48
		mu 0 4 34 35 36 37
		f 4 -51 -53 -55 -56
		mu 0 4 38 39 40 41
		f 4 20 -23 -24 -19
		mu 0 4 20 22 25 23
		f 4 14 25 -27 -25
		mu 0 4 14 16 27 26
		f 4 -10 27 28 -26
		mu 0 4 16 11 28 27
		f 4 -8 29 30 -28
		mu 0 4 11 3 29 28
		f 4 -13 24 31 -30
		mu 0 4 3 14 26 29
		f 4 26 33 -35 -33
		mu 0 4 26 27 31 30
		f 4 -29 35 36 -34
		mu 0 4 27 28 32 31
		f 4 -31 37 38 -36
		mu 0 4 28 29 33 32
		f 4 -32 32 39 -38
		mu 0 4 29 26 30 33
		f 4 23 41 -43 -41
		mu 0 4 23 25 35 34
		f 4 -17 43 44 -42
		mu 0 4 25 19 36 35
		f 4 -18 45 46 -44
		mu 0 4 19 17 37 36
		f 4 -22 40 47 -46
		mu 0 4 17 23 34 37
		f 4 -12 48 50 -50
		mu 0 4 1 10 39 38
		f 4 -20 51 52 -49
		mu 0 4 10 22 40 39
		f 4 -21 53 54 -52
		mu 0 4 22 20 41 40
		f 4 -6 49 55 -54
		mu 0 4 20 1 38 41;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
createNode transform -n "refridge_handler" -p "refridge";
	setAttr ".t" -type "double3" 2.4779658279045025 4.9766479482886465 1.941076265555979 ;
	setAttr ".r" -type "double3" 0 0 89.999999999999986 ;
	setAttr ".s" -type "double3" 0.37210522729839951 1 1 ;
createNode transform -n "transform2" -p "refridge_handler";
	setAttr ".v" no;
createNode mesh -n "refridge_handlerShape" -p "transform2";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 1;
createNode transform -n "refridge_handler1" -p "refridge";
	setAttr ".t" -type "double3" 2.4779658279045025 0.4177140904797616 1.941076265555979 ;
	setAttr ".r" -type "double3" 0 0 89.999999999999986 ;
	setAttr ".s" -type "double3" 0.49749344303772314 1 1 ;
createNode transform -n "transform1" -p "refridge_handler1";
	setAttr ".v" no;
createNode mesh -n "refridge_handler1Shape" -p "transform1";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:10]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0 0 1 0 0 0.072026394
		 1 0.072026394 0.89314306 0 0.89314306 0.072026394 0.097808562 0 0.097808562 0.072026394
		 0 0 0.097808562 0 0.097808562 0.072026394 0 0.072026394 0.89314306 0 1 0 1 0.072026394
		 0.89314306 0.072026394 0 0.67404771 1 0.67404771 1 0 0 0 0 0.73639965 1 0.73639965
		 1 0 0 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".vt[0:15]"  -2.8187542 0 0.20302439 2.81874847 0 0.20302439
		 -2.8187542 0 -0.20302439 2.81874847 0 -0.20302439 2.21634483 0 0.20302439 2.21634483 0 -0.20302439
		 -2.26735687 0 0.20302439 -2.26735687 0 -0.20302439 -2.8187542 0.26028425 0.20302439
		 -2.26735687 0.26028425 0.20302439 -2.26735687 0.26028425 -0.20302439 -2.8187542 0.26028425 -0.20302439
		 2.21634483 0.26028425 0.20302439 2.81874847 0.26028425 0.20302439 2.81874847 0.26028425 -0.20302439
		 2.21634483 0.26028425 -0.20302439;
	setAttr -s 28 ".ed[0:27]"  0 6 0 0 2 0 1 3 0 2 7 0 4 1 0 5 3 0 4 5 0
		 6 4 0 7 5 0 6 7 0 0 8 0 6 9 0 8 9 0 7 10 0 9 10 0 2 11 0 11 10 0 8 11 0 4 12 0 1 13 0
		 12 13 0 3 14 0 13 14 0 5 15 0 15 14 0 12 15 0 4 5 0 7 6 0;
	setAttr -s 11 -ch 44 ".fc[0:10]" -type "polyFaces" 
		f 4 7 6 -9 -10
		mu 0 4 6 4 5 7
		f 4 0 11 -13 -11
		mu 0 4 0 6 9 8
		f 4 9 13 -15 -12
		mu 0 4 6 7 10 9
		f 4 -4 15 16 -14
		mu 0 4 7 2 11 10
		f 4 -2 10 17 -16
		mu 0 4 2 0 8 11
		f 4 4 19 -21 -19
		mu 0 4 4 1 13 12
		f 4 2 21 -23 -20
		mu 0 4 1 3 14 13
		f 4 -6 23 24 -22
		mu 0 4 3 5 15 14
		f 4 -7 18 25 -24
		mu 0 4 5 4 12 15
		f 4 -5 26 5 -3
		mu 0 4 16 17 18 19
		f 4 -1 1 3 27
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
createNode transform -n "refridge1";
	setAttr ".rp" -type "double3" 4.0622889161349214 0.40912007819973972 -16.748821655294901 ;
	setAttr ".sp" -type "double3" 4.0622889161349214 0.40912007819973972 -16.748821655294901 ;
createNode mesh -n "refridgeShape1" -p "refridge1";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "dishwasher";
createNode transform -n "dishwasher" -p "|dishwasher";
	setAttr ".t" -type "double3" 0.4665188632900179 3.4556569690323271 -0.17540845753841564 ;
	setAttr ".s" -type "double3" 0.72763339695481599 1.0738518903566989 0.81905808317233686 ;
createNode transform -n "transform9" -p "|dishwasher|dishwasher";
	setAttr ".v" no;
createNode mesh -n "dishwasherShape" -p "transform9";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt";
	setAttr ".pt[8]" -type "float3" 0 -5.9604645e-008 0 ;
	setAttr ".pt[9]" -type "float3" 0 -5.9604645e-008 0 ;
	setAttr ".pt[14]" -type "float3" 0 -5.9604645e-008 0 ;
	setAttr ".pt[15]" -type "float3" 0 -5.9604645e-008 0 ;
	setAttr ".pt[23]" -type "float3" 0 -5.9604645e-008 0 ;
	setAttr ".pt[25]" -type "float3" 0 -5.9604645e-008 0 ;
	setAttr ".pt[36]" -type "float3" 0 7.4505806e-009 0 ;
	setAttr ".pt[37]" -type "float3" 0 7.4505806e-009 0 ;
	setAttr ".pt[39]" -type "float3" -0.3270646 0.058493096 -0.15504985 ;
	setAttr ".pt[40]" -type "float3" -0.3270646 0.058493096 0.15504985 ;
	setAttr ".pt[41]" -type "float3" -0.18234292 -0.05849313 0.15504985 ;
	setAttr ".pt[42]" -type "float3" -0.18234292 -0.05849313 -0.15504985 ;
createNode transform -n "button" -p "|dishwasher";
	setAttr ".t" -type "double3" 2.6087893957203283 5.8445666846630733 1.5115054448022134 ;
	setAttr ".r" -type "double3" 90 90 0 ;
	setAttr ".s" -type "double3" 1 0.25364124681222439 1 ;
createNode transform -n "transform8" -p "button";
	setAttr ".v" no;
createNode mesh -n "buttonShape" -p "transform8";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 3 ".pt";
	setAttr ".pt[24]" -type "float3" 0 0.2127289 0 ;
	setAttr ".pt[25]" -type "float3" 0 -0.2127289 0 ;
	setAttr ".dv" yes;
	setAttr ".dr" 1;
createNode transform -n "button1" -p "|dishwasher";
	setAttr ".t" -type "double3" 2.5117770169346691 5.9885567978786778 -1.2860521831521998 ;
	setAttr ".r" -type "double3" 0 90 90 ;
	setAttr ".s" -type "double3" 0.3351322805242945 0.53416653913284962 0.46697457499330958 ;
createNode transform -n "transform7" -p "button1";
	setAttr ".v" no;
createNode mesh -n "buttonShape1" -p "transform7";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "button2" -p "|dishwasher";
	setAttr ".t" -type "double3" 2.5117770169346691 5.9885567978786778 -1.579265320818271 ;
	setAttr ".r" -type "double3" 0 90 90 ;
	setAttr ".s" -type "double3" 0.3351322805242945 0.53416653913284962 0.46697457499330958 ;
createNode transform -n "transform6" -p "button2";
	setAttr ".v" no;
createNode mesh -n "buttonShape2" -p "transform6";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.35569292 -0.060261216 0.20086929 0.35569292 -0.060261216 0.20086929
		 -0.35569292 0.060261216 0.20086929 0.35569292 0.060261216 0.20086929 -0.35569292 0.060261216 -0.20086929
		 0.35569292 0.060261216 -0.20086929 -0.35569292 -0.060261216 -0.20086929 0.35569292 -0.060261216 -0.20086929;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "button3" -p "|dishwasher";
	setAttr ".t" -type "double3" 2.5117770169346691 5.9885567978786778 -1.9156159678275897 ;
	setAttr ".r" -type "double3" 0 90 90 ;
	setAttr ".s" -type "double3" 0.3351322805242945 0.53416653913284962 0.46697457499330958 ;
createNode transform -n "transform5" -p "button3";
	setAttr ".v" no;
createNode mesh -n "buttonShape3" -p "transform5";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.35569292 -0.060261216 0.20086929 0.35569292 -0.060261216 0.20086929
		 -0.35569292 0.060261216 0.20086929 0.35569292 0.060261216 0.20086929 -0.35569292 0.060261216 -0.20086929
		 0.35569292 0.060261216 -0.20086929 -0.35569292 -0.060261216 -0.20086929 0.35569292 -0.060261216 -0.20086929;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "button4" -p "|dishwasher";
	setAttr ".t" -type "double3" 2.5117770169346691 5.9885567978786778 -2.2674884872846426 ;
	setAttr ".r" -type "double3" 0 90 90 ;
	setAttr ".s" -type "double3" 0.3351322805242945 0.53416653913284962 0.46697457499330958 ;
createNode transform -n "transform4" -p "button4";
	setAttr ".v" no;
createNode mesh -n "buttonShape4" -p "transform4";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.35569292 -0.060261216 0.20086929 0.35569292 -0.060261216 0.20086929
		 -0.35569292 0.060261216 0.20086929 0.35569292 0.060261216 0.20086929 -0.35569292 0.060261216 -0.20086929
		 0.35569292 0.060261216 -0.20086929 -0.35569292 -0.060261216 -0.20086929 0.35569292 -0.060261216 -0.20086929;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "dishwasher1";
	setAttr ".t" -type "double3" -0.22940045679052901 0 12.046614509195914 ;
	setAttr ".s" -type "double3" 1.2655842445989904 1.0744541532688345 1.0744541532688345 ;
createNode transform -n "polySurface1" -p "dishwasher1";
	setAttr ".t" -type "double3" 0 0 0.4722362607797479 ;
	setAttr ".s" -type "double3" 1 1 1.2207915061983923 ;
createNode transform -n "transform20" -p "polySurface1";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape2" -p "transform20";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface2" -p "dishwasher1";
	setAttr ".t" -type "double3" -0.081787436090238877 0 0.57748920302136719 ;
createNode transform -n "transform19" -p "polySurface2";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape3" -p "transform19";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface3" -p "dishwasher1";
createNode transform -n "transform18" -p "polySurface3";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape4" -p "transform18";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface4" -p "dishwasher1";
createNode transform -n "transform17" -p "polySurface4";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape5" -p "transform17";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface5" -p "dishwasher1";
createNode transform -n "transform16" -p "polySurface5";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape6" -p "transform16";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface6" -p "dishwasher1";
createNode transform -n "transform15" -p "polySurface6";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape7" -p "transform15";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "transform14" -p "dishwasher1";
	setAttr ".v" no;
createNode mesh -n "dishwasherShape1" -p "transform14";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 1;
createNode transform -n "sink";
createNode transform -n "tube" -p "|sink";
	setAttr ".t" -type "double3" -2.6338267242950781 13.079908387771601 -1.3643996293650915 ;
	setAttr ".r" -type "double3" 0 47.741161908556798 0 ;
	setAttr ".s" -type "double3" 0.6524599038645329 1.4707831034403929 0.6524599038645329 ;
createNode mesh -n "tubeShape1Orig" -p "tube";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "transform13" -p "tube";
	setAttr ".v" no;
createNode mesh -n "tubeShape" -p "transform13";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 2 ".ciog[0].cog";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 35 ".pt[5:39]" -type "float3"  0.51746434 -0.043268405 0.19923331 
		0.51746434 -0.043268405 0.19923331 0.51746434 -0.043268405 0.19923331 0.51746434 
		-0.043268405 0.19923331 0.51746434 -0.043268405 0.19923331 0.50695729 -0.048674289 
		0.1300616 0.58204067 -0.026472529 0.1300616 0.58204061 -0.026472522 0.1300616 0.50695723 
		-0.0486743 0.1300616 0.46055338 -0.062395848 0.1300616 0.08825589 -0.27916765 0.088141404 
		0.01875354 -0.35116833 0.088141404 0.01875354 -0.35116839 0.088141404 0.08825589 
		-0.27916768 0.088141404 0.13121094 -0.23466869 0.088141404 0.53444719 -0.048518352 
		0.15347977 0.53444719 -0.048518352 0.15347977 0.53444719 -0.048518352 0.15347977 
		0.53444719 -0.048518352 0.15347977 0.53444719 -0.048518352 0.15347977 0.55342168 
		-0.053741463 0.15271355 0.55342168 -0.053741463 0.15271355 0.55342168 -0.053741463 
		0.15271355 0.55342168 -0.053741463 0.15271355 0.55342168 -0.053741463 0.15271355 
		0.28930941 -0.073821768 0.097135909 0.38720548 -0.012726884 0.097135872 0.38720548 
		-0.012726884 0.097135872 0.2893095 -0.073821768 0.097135872 0.22880638 -0.11158063 
		0.097135872 0.53797132 -0.035825856 0.12986523 0.53797132 -0.035825856 0.12986523 
		0.53797132 -0.035825856 0.12986523 0.53797132 -0.035825856 0.12986523 0.53797132 
		-0.035825856 0.12986523;
	setAttr ".dr" 1;
createNode transform -n "sink" -p "|sink";
	setAttr ".t" -type "double3" -0.16099351727314826 3.9724223644043071 -1.8191619718243641 ;
	setAttr ".s" -type "double3" 0.67647009121640556 1.0404592956593746 1 ;
createNode transform -n "transform12" -p "|sink|sink";
	setAttr ".v" no;
createNode mesh -n "sinkShape" -p "transform12";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 2 ".ciog[0].cog";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 20 ".pt";
	setAttr ".pt[2]" -type "float3" 0 -4.6566129e-010 0 ;
	setAttr ".pt[3]" -type "float3" 0 -4.6566129e-010 0 ;
	setAttr ".pt[4]" -type "float3" 0 -4.6566129e-010 0 ;
	setAttr ".pt[5]" -type "float3" 0 -4.6566129e-010 0 ;
	setAttr ".pt[8]" -type "float3" 5.9604645e-008 -9.3132257e-010 -5.9604645e-008 ;
	setAttr ".pt[9]" -type "float3" -5.9604645e-008 -9.3132257e-010 -5.9604645e-008 ;
	setAttr ".pt[10]" -type "float3" -5.9604645e-008 -9.3132257e-010 5.9604645e-008 ;
	setAttr ".pt[11]" -type "float3" 5.9604645e-008 -9.3132257e-010 5.9604645e-008 ;
	setAttr ".pt[28]" -type "float3" 0 -5.9604645e-008 -2.9802322e-008 ;
	setAttr ".pt[29]" -type "float3" 0 -5.9604645e-008 -2.9802322e-008 ;
	setAttr ".pt[30]" -type "float3" 0 5.9604645e-008 5.9604645e-008 ;
	setAttr ".pt[31]" -type "float3" 0 5.9604645e-008 -2.9802322e-008 ;
	setAttr ".pt[32]" -type "float3" 0 0.46971172 0.3945843 ;
	setAttr ".pt[33]" -type "float3" 0 0.46971172 -0.3945843 ;
	setAttr ".pt[34]" -type "float3" 0 -0.46971172 0.3945843 ;
	setAttr ".pt[35]" -type "float3" 0 -0.46971172 -0.39266339 ;
	setAttr ".pt[36]" -type "float3" 0 0.48159391 0.30154887 ;
	setAttr ".pt[37]" -type "float3" 0 0.48159391 -0.30351824 ;
	setAttr ".pt[38]" -type "float3" 0 -0.48159391 0.30351824 ;
	setAttr ".pt[39]" -type "float3" 0 -0.48159391 -0.30351824 ;
createNode transform -n "handler1" -p "|sink";
	setAttr ".t" -type "double3" 2.8875983550560749 5.6450664948394644 -2.0026332333555512 ;
createNode transform -n "transform11" -p "handler1";
	setAttr ".v" no;
createNode mesh -n "handlerShape1" -p "transform11";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 2 ".ciog[0].cog";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "handler2" -p "|sink";
	setAttr ".t" -type "double3" 2.8875983550560749 5.6450664948394644 -0.22233531284568531 ;
createNode transform -n "transform10" -p "handler2";
	setAttr ".v" no;
createNode mesh -n "handlerShape2" -p "transform10";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 2 ".ciog[0].cog";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.1 -0.75 0.18333104 0.1 -0.75 0.18333104
		 -0.1 0.75 0.18333104 0.1 0.75 0.18333104 -0.1 0.75 -0.18333104 0.1 0.75 -0.18333104
		 -0.1 -0.75 -0.18333104 0.1 -0.75 -0.18333104;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "sink1";
createNode transform -n "polySurface8" -p "sink1";
	setAttr ".t" -type "double3" 0 1.0013613104974612 0 ;
	setAttr ".s" -type "double3" 1 0.88151735816011501 1 ;
createNode transform -n "transform25" -p "polySurface8";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape9" -p "transform25";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface9" -p "sink1";
createNode transform -n "transform24" -p "polySurface9";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape10" -p "transform24";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface10" -p "sink1";
createNode transform -n "transform23" -p "polySurface10";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape11" -p "transform23";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface11" -p "sink1";
createNode transform -n "transform22" -p "polySurface11";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape12" -p "transform22";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "transform21" -p "sink1";
	setAttr ".v" no;
createNode mesh -n "sink1Shape" -p "transform21";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 6 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface7";
	setAttr ".t" -type "double3" 0 0 7.3287788720717231 ;
	setAttr ".s" -type "double3" 1.0589866225471027 1.0589866225471027 1.0589866225471027 ;
createNode transform -n "polySurface19" -p "polySurface7";
createNode transform -n "transform43" -p "polySurface19";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape19" -p "transform43";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface20" -p "polySurface7";
	setAttr ".t" -type "double3" 4.02 0 0 ;
createNode transform -n "transform42" -p "polySurface20";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape20" -p "transform42";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 25 ".pt[0:24]" -type "float3"  -4.0189142 0 0 -4.0189142 
		0 0 -4.0189142 0 0 -4.0189142 0 0 -4.0189142 0 0 -4.0189142 0 0 -4.0189142 0 0 -4.0189142 
		0 0 -4.0189142 0 0 -4.0189142 0 0 -4.0189142 0 0 -4.0189142 0 0 -4.0189142 0 0 -4.0189142 
		0 0 -4.0189142 0 0 -4.0189142 0 0 -4.0189142 0 0 -4.0189142 0 0 -4.0189142 0 0 -4.0189142 
		0 0 -4.0189142 0 0 -4.0189142 0 0 -4.0189142 0 0 -4.0189142 0 0 -4.0189142 0 0;
createNode transform -n "polySurface21" -p "polySurface7";
	setAttr ".t" -type "double3" 4.0280468936492957 0 0 ;
createNode transform -n "transform41" -p "polySurface21";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape21" -p "transform41";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -4.0189142 0 0 -4.0189142 
		0 0 -4.0189142 0 0 -4.0189142 0 0 -4.0189142 0 0 -4.0189142 0 0 -4.0189142 0 0 -4.0189142 
		0 0;
createNode transform -n "polySurface22" -p "polySurface7";
	setAttr ".t" -type "double3" 4.0280468936492957 0 0 ;
createNode transform -n "transform40" -p "polySurface22";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape22" -p "transform40";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -4.0189142 0 0 -4.0189142 
		0 0 -4.0189142 0 0 -4.0189142 0 0 -4.0189142 0 0 -4.0189142 0 0 -4.0189142 0 0 -4.0189142 
		0 0;
createNode transform -n "polySurface23" -p "polySurface7";
	setAttr ".t" -type "double3" 4.0280468936492957 0 0 ;
createNode transform -n "transform39" -p "polySurface23";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape23" -p "transform39";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -4.0189142 0 0 -4.0189142 
		0 0 -4.0189142 0 0 -4.0189142 0 0 -4.0189142 0 0 -4.0189142 0 0 -4.0189142 0 0 -4.0189142 
		0 0;
createNode transform -n "polySurface24" -p "polySurface7";
	setAttr ".t" -type "double3" 4.0280468936492957 0 0 ;
createNode transform -n "transform38" -p "polySurface24";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape24" -p "transform38";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -4.0189142 0 0 -4.0189142 
		0 0 -4.0189142 0 0 -4.0189142 0 0 -4.0189142 0 0 -4.0189142 0 0 -4.0189142 0 0 -4.0189142 
		0 0;
createNode transform -n "transform27" -p "polySurface7";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape8" -p "transform27";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface12";
	setAttr ".t" -type "double3" 0 0 11.363840335879315 ;
createNode transform -n "polySurface13" -p "polySurface12";
createNode transform -n "transform37" -p "polySurface13";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape14" -p "transform37";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface14" -p "polySurface12";
createNode transform -n "transform36" -p "polySurface14";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape15" -p "transform36";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface15" -p "polySurface12";
createNode transform -n "transform35" -p "polySurface15";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape16" -p "transform35";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface16" -p "polySurface12";
createNode transform -n "transform34" -p "polySurface16";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape17" -p "transform34";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "transform26" -p "polySurface12";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape13" -p "transform26";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 6 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "cabinet";
	setAttr ".t" -type "double3" -0.040284830016313666 4.0822921015129108 -4.5616294206913821 ;
	setAttr ".s" -type "double3" 0.80083721387177542 1.0891857929862045 2.0853100977202095 ;
createNode transform -n "polySurface17" -p "cabinet";
	setAttr ".t" -type "double3" 0.33799672295601729 -5.9815443963692179 -0.39366064979877269 ;
	setAttr ".s" -type "double3" 1.2486932208923462 1.1196838104103726 0.47954498522462546 ;
createNode transform -n "transform32" -p "polySurface17";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape17" -p "transform32";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:4]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 12 ".uvst[0].uvsp[0:11]" -type "float2" 0.375 0 0.625 0 0.625
		 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0
		 0.875 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  2.78759837 4.89506626 -0.039004266 2.98759818 4.89506626 -0.039004266
		 2.78759837 6.39506626 -0.039004266 2.98759818 6.39506626 -0.039004266 2.78759837 6.39506626 -0.40566635
		 2.98759818 6.39506626 -0.40566635 2.78759837 4.89506626 -0.40566635 2.98759818 4.89506626 -0.40566635;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 3 2 4 5
		f 4 2 9 -4 -9
		mu 0 4 5 4 6 7
		f 4 3 11 -1 -11
		mu 0 4 7 6 8 9
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface18" -p "cabinet";
	setAttr ".t" -type "double3" 0.33799672295601729 -5.9815443963692179 -1.446079795808012 ;
	setAttr ".s" -type "double3" 1.2486932208923462 1.1196838104103726 0.47954498522462546 ;
createNode transform -n "transform31" -p "polySurface18";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape18" -p "transform31";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:4]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 12 ".uvst[0].uvsp[0:11]" -type "float2" 0.375 0 0.625 0 0.625
		 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0
		 0.875 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  2.78759837 4.89506626 -0.039004266 2.98759818 4.89506626 -0.039004266
		 2.78759837 6.39506626 -0.039004266 2.98759818 6.39506626 -0.039004266 2.78759837 6.39506626 -0.40566635
		 2.98759818 6.39506626 -0.40566635 2.78759837 4.89506626 -0.40566635 2.98759818 4.89506626 -0.40566635;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 3 2 4 5
		f 4 2 9 -4 -9
		mu 0 4 5 4 6 7
		f 4 3 11 -1 -11
		mu 0 4 7 6 8 9
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface25" -p "cabinet";
	setAttr ".t" -type "double3" 0.26860447663526099 3.0107271515596543 4.2501034326964167 ;
	setAttr ".r" -type "double3" -90 0 0 ;
	setAttr ".s" -type "double3" 1.2486932208923462 0.34274784796969188 0.91811700670306662 ;
	setAttr ".rp" -type "double3" 3.6057243920743276 1.9348343127039769 -0.20412982819086675 ;
	setAttr ".rpt" -type "double3" 0 -2.138964140894843 -1.7307044845131101 ;
	setAttr ".sp" -type "double3" 2.8875982761383057 5.6450662612915039 -0.22233530879020691 ;
	setAttr ".spt" -type "double3" 0.71812611593602205 -3.710231948587527 0.01820548059934015 ;
createNode transform -n "transform30" -p "polySurface25";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape25" -p "transform30";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:4]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 12 ".uvst[0].uvsp[0:11]" -type "float2" 0.375 0 0.625 0 0.625
		 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0
		 0.875 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  2.78759837 4.89506626 -0.039004266 2.98759818 4.89506626 -0.039004266
		 2.78759837 6.39506626 -0.039004266 2.98759818 6.39506626 -0.039004266 2.78759837 6.39506626 -0.40566635
		 2.98759818 6.39506626 -0.40566635 2.78759837 4.89506626 -0.40566635 2.98759818 4.89506626 -0.40566635;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 3 2 4 5
		f 4 2 9 -4 -9
		mu 0 4 5 4 6 7
		f 4 3 11 -1 -11
		mu 0 4 7 6 8 9
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface26" -p "cabinet";
	setAttr ".t" -type "double3" 0.26860447663526099 0.78964407168758166 4.2501034326964167 ;
	setAttr ".r" -type "double3" -90 0 0 ;
	setAttr ".s" -type "double3" 1.2486932208923462 0.34274784796969188 0.91811700670306662 ;
	setAttr ".rp" -type "double3" 3.6057243920743276 1.9348343127039769 -0.20412982819086675 ;
	setAttr ".rpt" -type "double3" 0 -2.138964140894843 -1.7307044845131101 ;
	setAttr ".sp" -type "double3" 2.8875982761383057 5.6450662612915039 -0.22233530879020691 ;
	setAttr ".spt" -type "double3" 0.71812611593602205 -3.710231948587527 0.01820548059934015 ;
createNode transform -n "transform29" -p "polySurface26";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape26" -p "transform29";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:4]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 12 ".uvst[0].uvsp[0:11]" -type "float2" 0.375 0 0.625 0 0.625
		 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0
		 0.875 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  2.78759837 4.89506626 -0.039004266 2.98759818 4.89506626 -0.039004266
		 2.78759837 6.39506626 -0.039004266 2.98759818 6.39506626 -0.039004266 2.78759837 6.39506626 -0.40566635
		 2.98759818 6.39506626 -0.40566635 2.78759837 4.89506626 -0.40566635 2.98759818 4.89506626 -0.40566635;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 3 2 4 5
		f 4 2 9 -4 -9
		mu 0 4 5 4 6 7
		f 4 3 11 -1 -11
		mu 0 4 7 6 8 9
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface27" -p "cabinet";
	setAttr ".t" -type "double3" 0.26860447663526099 -1.4352703421148347 4.2501034326964167 ;
	setAttr ".r" -type "double3" -90 0 0 ;
	setAttr ".s" -type "double3" 1.2486932208923462 0.34274784796969188 0.91811700670306662 ;
	setAttr ".rp" -type "double3" 3.6057243920743276 1.9348343127039769 -0.20412982819086675 ;
	setAttr ".rpt" -type "double3" 0 -2.138964140894843 -1.7307044845131101 ;
	setAttr ".sp" -type "double3" 2.8875982761383057 5.6450662612915039 -0.22233530879020691 ;
	setAttr ".spt" -type "double3" 0.71812611593602205 -3.710231948587527 0.01820548059934015 ;
createNode transform -n "transform28" -p "polySurface27";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape27" -p "transform28";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:4]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 12 ".uvst[0].uvsp[0:11]" -type "float2" 0.375 0 0.625 0 0.625
		 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0
		 0.875 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  2.78759837 4.89506626 -0.039004266 2.98759818 4.89506626 -0.039004266
		 2.78759837 6.39506626 -0.039004266 2.98759818 6.39506626 -0.039004266 2.78759837 6.39506626 -0.40566635
		 2.98759818 6.39506626 -0.40566635 2.78759837 4.89506626 -0.40566635 2.98759818 4.89506626 -0.40566635;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 3 2 4 5
		f 4 2 9 -4 -9
		mu 0 4 5 4 6 7
		f 4 3 11 -1 -11
		mu 0 4 7 6 8 9
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "transform33" -p "cabinet";
	setAttr ".v" no;
createNode mesh -n "cabinetShape" -p "transform33";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[42:45]" -type "float3"  0 0.42755753 0.14503077 0 
		0.42755753 -0.14503074 0 -0.42755753 0.14503077 0 -0.42755753 -0.14503077;
createNode transform -n "polySurface28";
	setAttr ".rp" -type "double3" -7.7947584639400365 0 -4.7650377919886662 ;
	setAttr ".sp" -type "double3" -7.7947584639400365 0 -4.7650377919886662 ;
createNode mesh -n "polySurfaceShape28" -p "polySurface28";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface29";
	setAttr ".rp" -type "double3" -7.3829240070578219 5.7904666503998756 3.6030015268567404 ;
	setAttr ".sp" -type "double3" -7.3829240070578219 5.7904666503998756 3.6030015268567404 ;
createNode mesh -n "polySurfaceShape29" -p "polySurface29";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface30";
	setAttr ".rp" -type "double3" -7.7518930031601503 3.6287544589889089 12.377969788779538 ;
	setAttr ".sp" -type "double3" -7.7518930031601503 3.6287544589889089 12.377969788779538 ;
createNode mesh -n "polySurfaceShape30" -p "polySurface30";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube5";
	setAttr ".t" -type "double3" 2.0508147122999922 10.512081793781947 20.676883393814393 ;
	setAttr ".s" -type "double3" 0.72730916930655409 0.5479371984646807 1 ;
createNode transform -n "transform44" -p "pCube5";
	setAttr ".v" no;
createNode mesh -n "pCubeShape5" -p "transform44";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface31";
createNode mesh -n "polySurfaceShape31" -p "polySurface31";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 13 ".pt";
	setAttr ".pt[8]" -type "float3" 0 0 -3.856761 ;
	setAttr ".pt[9]" -type "float3" 0 0 -3.856761 ;
	setAttr ".pt[10]" -type "float3" 0 0 -3.856761 ;
	setAttr ".pt[11]" -type "float3" 0 0 -3.856761 ;
	setAttr ".pt[12]" -type "float3" 0 0 -3.856761 ;
	setAttr ".pt[13]" -type "float3" 0 0 -3.856761 ;
	setAttr ".pt[14]" -type "float3" 0 0 -3.856761 ;
	setAttr ".pt[15]" -type "float3" 0 0 -3.856761 ;
	setAttr ".pt[16]" -type "float3" 0 0 -3.856761 ;
	setAttr ".pt[17]" -type "float3" 0 0 -3.856761 ;
	setAttr ".pt[18]" -type "float3" 0 0 -3.856761 ;
	setAttr ".pt[19]" -type "float3" 0 0 -3.856761 ;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 6 ".lnk";
	setAttr -s 6 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 1\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n"
		+ "                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n"
		+ "                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 1\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n"
		+ "            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n"
		+ "                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n"
		+ "                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n"
		+ "            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n"
		+ "                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n"
		+ "                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n"
		+ "                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n"
		+ "            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n"
		+ "            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n"
		+ "        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n"
		+ "                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n"
		+ "                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n"
		+ "                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n"
		+ "            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n"
		+ "            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n"
		+ "            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -docTag \"isolOutln_fromSeln\" \n                -showShapes 0\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n"
		+ "                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n"
		+ "                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"ascend\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n"
		+ "            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n"
		+ "            -attrAlphaOrder \"ascend\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n"
		+ "                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n"
		+ "                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n"
		+ "                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 1\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n"
		+ "                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n"
		+ "                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n"
		+ "                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 1\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n"
		+ "                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n"
		+ "                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n"
		+ "                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n"
		+ "                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n"
		+ "                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n"
		+ "                -showConnectionToSelected 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n"
		+ "                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -island 0\n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n"
		+ "                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -island 0\n                -showNamespace 1\n"
		+ "                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"Stereo\" -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels `;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n"
		+ "                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n"
		+ "                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n"
		+ "                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n"
		+ "                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n"
		+ "                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n"
		+ "                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n"
		+ "        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"vacantCell.xpm\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Top View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Top View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"persp\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 1\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Top View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"persp\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 1\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 24 -ast 1 -aet 48 ";
	setAttr ".st" 6;
createNode polySplitRing -n "polySplitRing1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:3]";
	setAttr ".ix" -type "matrix" 1.6818866415239395 0 0 0 0 1 0 0 0 0 1 0 5.2669578466694364 5.5780640974739333 -20.026738522899688 1;
	setAttr ".wt" 0.023738963529467583;
	setAttr ".re" 2;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	setAttr ".ics" -type "componentList" 1 "f[0]";
	setAttr ".ix" -type "matrix" 1.6818866415239395 0 0 0 0 1 0 0 0 0 1 0 5.2669578466694364 5.5780640974739333 -20.026738522899688 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -11.152646 5.578064 -19.776739 ;
	setAttr ".rs" 54582;
	setAttr ".lt" -type "double3" 0 -8.8817841970012523e-016 34.33118790227725 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -11.551908568569958 -1.9219359025260667 -19.776738522899688 ;
	setAttr ".cbx" -type "double3" -10.753383893782855 13.078064097473934 -19.776738522899688 ;
createNode polySplitRing -n "polySplitRing3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[20:21]" "e[23]" "e[25]";
	setAttr ".ix" -type "matrix" 1.6818866415239395 0 0 0 0 1 0 0 0 0 1 0 5.2669578466694364 5.5780640974739333 -20.026738522899688 1;
	setAttr ".wt" 0.98533511161804199;
	setAttr ".dr" no;
	setAttr ".re" 25;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	setAttr ".ics" -type "componentList" 1 "f[15]";
	setAttr ".ix" -type "matrix" 1.6818866415239395 0 0 0 0 1 0 0 0 0 1 0 5.2669578466694364 5.5780640974739333 -20.026738522899688 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -10.753384 5.578064 14.302718 ;
	setAttr ".rs" 57068;
	setAttr ".lt" -type "double3" -0.059250974302862691 4.5779152702362032e-016 32.748260221774892 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -10.753383893782855 -1.9219359025260667 14.050985933887421 ;
	setAttr ".cbx" -type "double3" -10.753383893782855 13.078064097473934 14.554449679004609 ;
createNode polySplitRing -n "polySplitRing4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[12:13]" "e[15]" "e[17]";
	setAttr ".ix" -type "matrix" 1.6818866415239395 0 0 0 0 1 0 0 0 0 1 0 5.2669578466694364 5.5780640974739333 -20.026738522899688 1;
	setAttr ".wt" 0.96905976533889771;
	setAttr ".dr" no;
	setAttr ".re" 15;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak1";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[1]" -type "float3" -5.7861099 -1.7763568e-015 0 ;
	setAttr ".tk[3]" -type "float3" -5.7861099 -1.7763568e-015 0 ;
	setAttr ".tk[5]" -type "float3" -5.7861099 -1.7763568e-015 0 ;
	setAttr ".tk[7]" -type "float3" -5.7861099 -1.7763568e-015 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	setAttr ".ics" -type "componentList" 1 "f[22]";
	setAttr ".ix" -type "matrix" 1.6818866415239395 0 0 0 0 1 0 0 0 0 1 0 5.2669578466694364 5.5780640974739333 -20.026738522899688 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 12.021812 5.578064 -19.776739 ;
	setAttr ".rs" 57257;
	setAttr ".lt" -type "double3" -1.7763568394002505e-015 5.3290705182007514e-015 24.069432611390987 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 11.689380801489428 -1.9219359025260667 -19.776738522899688 ;
	setAttr ".cbx" -type "double3" 12.354243273811974 13.078064097473934 -19.776738522899688 ;
createNode polyTweak -n "polyTweak2";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[24:27]" -type "float3"  0.029783824 -8.8817842e-016
		 0 0.029783824 -8.8817842e-016 0 0.029783824 -8.8817842e-016 0 0.029783824 -8.8817842e-016
		 0;
createNode polySplitRing -n "polySplitRing5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[52:53]" "e[55]" "e[57]";
	setAttr ".ix" -type "matrix" 1.6818866415239395 0 0 0 0 1 0 0 0 0 1 0 5.2669578466694364 5.5780640974739333 -20.026738522899688 1;
	setAttr ".wt" 0.96762758493423462;
	setAttr ".dr" no;
	setAttr ".re" 55;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyExtrudeFace -n "polyExtrudeFace4";
	setAttr ".ics" -type "componentList" 1 "f[33]";
	setAttr ".ix" -type "matrix" 1.6818866415239395 0 0 0 0 1 0 0 0 0 1 0 5.2669578466694364 5.5780640974739333 -20.026738522899688 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 12.354243 5.578064 3.9031017 ;
	setAttr ".rs" 46176;
	setAttr ".lt" -type "double3" -4.1166271134504387e-015 1.1585599183555302e-015 9.4603596658413238 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 12.354243273811974 -1.9219359025260667 3.5135084406012886 ;
	setAttr ".cbx" -type "double3" 12.354243273811974 13.078064097473934 4.2926946893805855 ;
createNode polyPlane -n "polyPlane1";
	setAttr ".w" 5.6375040838073858;
	setAttr ".h" 0.40604906345077563;
	setAttr ".sw" 1;
	setAttr ".sh" 1;
	setAttr ".cuv" 2;
createNode polySplitRing -n "polySplitRing6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[0]" "e[3]";
	setAttr ".ix" -type "matrix" 1.083476689443515e-016 0.48795452148424329 0 0 -1 2.2204460492503131e-016 0 0
		 0 0 1 0 0.45917520228548625 13.211328676442895 6.1758578754041578 1;
	setAttr ".wt" 0.89314305782318115;
	setAttr ".dr" no;
	setAttr ".re" 0;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[0]" "e[3]";
	setAttr ".ix" -type "matrix" 1.083476689443515e-016 0.48795452148424329 0 0 -1 2.2204460492503131e-016 0 0
		 0 0 1 0 0.45917520228548625 13.211328676442895 6.1758578754041578 1;
	setAttr ".wt" 0.10951051861047745;
	setAttr ".re" 0;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyExtrudeFace -n "polyExtrudeFace8";
	setAttr ".ics" -type "componentList" 1 "f[0:1]";
	setAttr ".ix" -type "matrix" 1.083476689443515e-016 0.48795452148424329 0 0 -1 2.2204460492503131e-016 0 0
		 0 0 1 0 0.45917520228548625 13.211328676442895 6.1758578754041578 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.4591752 13.211329 6.175858 ;
	setAttr ".rs" 46961;
	setAttr ".lt" -type "double3" 5.2712758057761262e-015 -1.6896647707633133e-015 0.26028424533952865 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.45917520228548592 11.835905868507339 5.9728333390329267 ;
	setAttr ".cbx" -type "double3" 0.45917520228548658 14.58675148437845 6.3788824117753888 ;
createNode deleteComponent -n "deleteComponent1";
	setAttr ".dc" -type "componentList" 1 "f[0:1]";
createNode polyAppend -n "polyAppend1";
	setAttr -s 3 ".d[0:2]"  -2147483644 -2147483643 -2147483646;
	setAttr ".tx" 1;
createNode polyAppend -n "polyAppend2";
	setAttr -s 3 ".d[0:2]"  -2147483648 -2147483647 -2147483645;
	setAttr ".tx" 1;
createNode lambert -n "lambert2";
	setAttr ".c" -type "float3" 1 0.89148593 0.64705884 ;
createNode shadingEngine -n "lambert2SG";
	setAttr ".ihi" 0;
	setAttr -s 45 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 45 ".gn";
createNode materialInfo -n "materialInfo1";
createNode lambert -n "lambert3";
	setAttr ".c" -type "float3" 0.42924801 0.49143875 0.70599997 ;
createNode shadingEngine -n "lambert3SG";
	setAttr ".ihi" 0;
	setAttr -s 20 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 20 ".gn";
createNode materialInfo -n "materialInfo2";
createNode polyUnite -n "polyUnite1";
	setAttr -s 3 ".ip";
	setAttr -s 3 ".im";
createNode groupId -n "groupId1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:10]";
createNode groupId -n "groupId4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:25]";
createNode groupId -n "groupId8";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts3";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[26:47]";
createNode polyCube -n "polyCube1";
	setAttr ".w" 5.0519155080448677;
	setAttr ".h" 6.058217740768792;
	setAttr ".d" 6.4209596536439353;
	setAttr ".cuv" 4;
createNode polySplit -n "polySplit1";
	setAttr -s 2 ".e[0:1]"  0.73399562 0.26600435;
	setAttr -s 2 ".d[0:1]"  -2147483643 -2147483639;
createNode polySplit -n "polySplit2";
	setAttr -s 2 ".e[0:1]"  0.95155722 0.048442755;
	setAttr -s 2 ".d[0:1]"  -2147483643 -2147483635;
createNode polySplit -n "polySplit3";
	setAttr -s 2 ".e[0:1]"  0.06342867 0.9365713;
	setAttr -s 2 ".d[0:1]"  -2147483643 -2147483632;
createNode polyExtrudeFace -n "polyExtrudeFace9";
	setAttr ".ics" -type "componentList" 2 "f[4]" "f[7]";
	setAttr ".ix" -type "matrix" 0.72763339695481599 0 0 0 0 1.0738518903566989 0 0 0 0 0.81905808317233686 0
		 0.4665188632900179 3.4556569690323271 -0.17540845753841564 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 2.3044903 3.5997598 -0.17540845 ;
	setAttr ".rs" 63565;
	setAttr ".lt" -type "double3" 1.5205876325695402e-017 -5.4114248979192166e-016 0.17925531256978999 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 2.3044901344583422 0.49104872224482943 -2.804977836438959 ;
	setAttr ".cbx" -type "double3" 2.3044903079396626 6.7084711399978865 2.4541609213621278 ;
createNode polySplit -n "polySplit4";
	setAttr -s 2 ".e[0:1]"  0.35955575 0.35955575;
	setAttr -s 2 ".d[0:1]"  -2147483621 -2147483625;
createNode polyTweak -n "polyTweak3";
	setAttr ".uopa" yes;
	setAttr -s 9 ".tk";
	setAttr ".tk[14]" -type "float3" 1.7169276e-008 0.056808703 -0.22635028 ;
	setAttr ".tk[15]" -type "float3" -1.7169283e-008 0.056808703 0.22635028 ;
	setAttr ".tk[16]" -type "float3" 1.7169276e-008 -0.056808706 0.22635028 ;
	setAttr ".tk[17]" -type "float3" 1.7169276e-008 -0.056808706 -0.22635028 ;
	setAttr ".tk[18]" -type "float3" -2.6779128e-008 0.21110374 -0.34204379 ;
	setAttr ".tk[19]" -type "float3" 2.6779132e-008 0.21110374 0.34204379 ;
	setAttr ".tk[20]" -type "float3" 2.6779132e-008 -0.21110372 0.34204379 ;
	setAttr ".tk[21]" -type "float3" 2.6779132e-008 -0.21110371 -0.34204379 ;
createNode polySplit -n "polySplit5";
	setAttr -s 2 ".e[0:1]"  0.47389993 0.4738999;
	setAttr -s 2 ".d[0:1]"  -2147483611 -2147483610;
createNode polySplit -n "polySplit6";
	setAttr -s 2 ".e[0:1]"  0.20210657 0.20210643;
	setAttr -s 2 ".d[0:1]"  -2147483609 -2147483606;
createNode polySplit -n "polySplit7";
	setAttr -s 2 ".e[0:1]"  0.84202814 0.8420282;
	setAttr -s 2 ".d[0:1]"  -2147483605 -2147483604;
createNode polyExtrudeFace -n "polyExtrudeFace10";
	setAttr ".ics" -type "componentList" 1 "f[19]";
	setAttr ".ix" -type "matrix" 0.72763339695481599 0 0 0 0 1.0738518903566989 0 0 0 0 0.81905808317233686 0
		 0.4665188632900179 3.4556569690323271 -0.17540845753841564 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 2.4837456 5.6621804 -0.23069067 ;
	setAttr ".rs" 51400;
	setAttr ".lt" -type "double3" -4.4880642897755042e-017 1.8223836038276592e-015 -0.3768964409859607 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 2.4837454338609755 5.1548788137931805 -0.97251370381717783 ;
	setAttr ".cbx" -type "double3" 2.4837457808236167 6.1694823913888364 0.51113235230579657 ;
createNode polyTweak -n "polyTweak4";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[26:29]" -type "float3"  0 -0.14237839 0 0 -0.14237839
		 0 0 -0.080845863 0 0 -0.080845863 0;
createNode polySplit -n "polySplit8";
	setAttr ".e[0]"  0.39487743;
	setAttr ".d[0]"  -2147483592;
createNode polySplit -n "polySplit9";
	setAttr -s 4 ".e[0:3]"  0.22842006 0.64115757 0.25317866 0.22842008;
	setAttr -s 4 ".d[0:3]"  -2147483605 -2147483592 -2147483595 -2147483604;
createNode polyExtrudeFace -n "polyExtrudeFace11";
	setAttr ".ics" -type "componentList" 1 "f[19]";
	setAttr ".ix" -type "matrix" 0.72763339695481599 0 0 0 0 1.0738518903566989 0 0 0 0 0.81905808317233686 0
		 0.4665188632900179 3.4556569690323271 -0.17540845753841564 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 2.1068492 5.90941 -0.23069063 ;
	setAttr ".rs" 34184;
	setAttr ".lt" -type "double3" -1.0921660285521524e-016 9.5040666056895548e-016 0.5081321480785812 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 2.1068492846975868 5.649337430207245 -0.97251360617784566 ;
	setAttr ".cbx" -type "double3" 2.1068492846975868 6.1694823913888364 0.51113235230579657 ;
createNode polyTweak -n "polyTweak5";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[35]" -type "float3" 0 -0.24516316 0 ;
	setAttr ".tk[36]" -type "float3" 0 -0.24516316 0 ;
	setAttr ".tk[37]" -type "float3" 0 -0.24516316 0 ;
	setAttr ".tk[38]" -type "float3" 0 -0.24516316 0 ;
createNode polyCube -n "polyCube2";
	setAttr ".w" 0.71138585921039699;
	setAttr ".h" 0.12052243039386761;
	setAttr ".d" 0.40173857920674383;
	setAttr ".cuv" 4;
createNode polySphere -n "polySphere1";
	setAttr ".r" 0.3;
	setAttr ".sa" 12;
	setAttr ".sh" 3;
createNode polyUnite -n "polyUnite2";
	setAttr -s 6 ".ip";
	setAttr -s 6 ".im";
createNode groupId -n "groupId9";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:31]";
createNode groupId -n "groupId10";
	setAttr ".ihi" 0;
createNode groupId -n "groupId11";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:35]";
createNode groupId -n "groupId12";
	setAttr ".ihi" 0;
createNode groupId -n "groupId13";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts6";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId14";
	setAttr ".ihi" 0;
createNode groupId -n "groupId15";
	setAttr ".ihi" 0;
createNode groupId -n "groupId16";
	setAttr ".ihi" 0;
createNode groupId -n "groupId17";
	setAttr ".ihi" 0;
createNode groupId -n "groupId18";
	setAttr ".ihi" 0;
createNode groupId -n "groupId19";
	setAttr ".ihi" 0;
createNode groupId -n "groupId20";
	setAttr ".ihi" 0;
createNode groupId -n "groupId21";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts7";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:31]";
createNode groupId -n "groupId22";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts8";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[32:91]";
createNode polyCube -n "polyCube3";
	setAttr ".w" 7.2762898154551934;
	setAttr ".h" 7.1827911055137781;
	setAttr ".d" 10.54612106267143;
	setAttr ".cuv" 4;
createNode polyExtrudeFace -n "polyExtrudeFace12";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 0.67647009121640556 0 0 0 0 1.0404592956593746 0 0 0 0 1 0
		 -0.16099351727314826 3.9724223644043071 -1.8191619718243641 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.16099352 7.7091231 -1.819162 ;
	setAttr ".rs" 52657;
	setAttr ".lt" -type "double3" 0 -1.2579781906944724e-016 0.43345698891481632 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.6220897769470928 7.7091233180147043 -7.0922222936322257 ;
	setAttr ".cbx" -type "double3" 2.3001027424007963 7.7091233180147043 3.453898349983497 ;
createNode polyExtrudeFace -n "polyExtrudeFace13";
	setAttr ".ics" -type "componentList" 1 "f[6:9]";
	setAttr ".ix" -type "matrix" 0.67647009121640556 0 0 0 0 1.0404592956593746 0 0 0 0 1 0
		 -0.16099351727314826 3.9724223644043071 -1.8191619718243641 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.16099352 7.9258518 -1.819162 ;
	setAttr ".rs" 40930;
	setAttr ".lt" -type "double3" 0 0 1.1536375683934992 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.6220897769470928 7.7091230699498769 -7.0922222936322257 ;
	setAttr ".cbx" -type "double3" 2.3001027424007963 8.1425801374651527 3.453898349983497 ;
createNode polySplit -n "polySplit10";
	setAttr -s 2 ".e[0:1]"  0.5 0.5;
	setAttr -s 2 ".d[0:1]"  -2147483633 -2147483635;
createNode polyExtrudeFace -n "polyExtrudeFace14";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 0.67647009121640556 0 0 0 0 1.0404592956593746 0 0 0 0 1 0
		 -0.16099351727314826 3.9724223644043071 -1.8191619718243641 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.16099352 8.14258 -4.4556923 ;
	setAttr ".rs" 49606;
	setAttr ".lt" -type "double3" 0 2.128944846196077e-015 -2.4120847839790098 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.6220897769470928 8.1425801374651527 -7.0922222936322257 ;
	setAttr ".cbx" -type "double3" 2.3001027424007963 8.1425801374651527 -1.8191619718243641 ;
createNode polySplit -n "polySplit11";
	setAttr -s 2 ".e[0:1]"  0.42924392 0.57214868;
	setAttr -s 2 ".d[0:1]"  -2147483641 -2147483637;
createNode polyExtrudeFace -n "polyExtrudeFace15";
	setAttr ".ics" -type "componentList" 1 "f[23]";
	setAttr ".ix" -type "matrix" 0.67647009121640556 0 0 0 0 1.0404592956593746 0 0 0 0 1 0
		 -0.16099351727314826 3.9724223644043071 -1.8191619718243641 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 2.3001027 3.9724224 1.1904691 ;
	setAttr ".rs" 34163;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 2.3001027424007963 0.235722154988391 -1.072959979789452 ;
	setAttr ".cbx" -type "double3" 2.3001027424007963 7.7091225738202231 3.453898349983497 ;
createNode polyExtrudeFace -n "polyExtrudeFace16";
	setAttr ".ics" -type "componentList" 2 "f[4]" "f[23]";
	setAttr ".ix" -type "matrix" 0.67647009121640556 0 0 0 0 1.0404592956593746 0 0 0 0 1 0
		 -0.16099351727314826 3.9724223644043071 -1.8191619718243641 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 2.3001027 3.9724226 -1.819162 ;
	setAttr ".rs" 40439;
	setAttr ".lt" -type "double3" 9.2174608286193309e-017 1.4939980151765997e-016 0.41511753153072162 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 2.3001027424007963 0.2357224030532179 -7.0922222936322257 ;
	setAttr ".cbx" -type "double3" 2.3001027424007963 7.7091225738202231 3.453898349983497 ;
createNode polyCylinder -n "polyCylinder1";
	setAttr ".r" 0.51734161067794893;
	setAttr ".h" 5;
	setAttr ".sa" 5;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polySplitRing -n "polySplitRing8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[10:14]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 2.1573532045264514 7.9229158275684064 7.960620143677235 1;
	setAttr ".wt" 0.57002949714660645;
	setAttr ".dr" no;
	setAttr ".re" 13;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[10:14]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 2.1573532045264514 7.9229158275684064 7.960620143677235 1;
	setAttr ".wt" 0.74520468711853027;
	setAttr ".dr" no;
	setAttr ".re" 13;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing10";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[25:26]" "e[28]" "e[30]" "e[32]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 2.1573532045264514 7.9229158275684064 7.960620143677235 1;
	setAttr ".wt" 0.35016965866088867;
	setAttr ".re" 25;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing11";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[25:26]" "e[28]" "e[30]" "e[32]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 2.2542122431262293 0 0 0 0 1 0 2.1573532045264514 7.9229158275684064 7.960620143677235 1;
	setAttr ".wt" 0.49494490027427673;
	setAttr ".re" 26;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak6";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk";
	setAttr ".tk[5]" -type "float3" 4.5630651 -1.6627234 0 ;
	setAttr ".tk[6]" -type "float3" 4.878747 -1.4341316 0 ;
	setAttr ".tk[7]" -type "float3" 4.8787479 -1.4341314 0 ;
	setAttr ".tk[8]" -type "float3" 4.5630651 -1.6627234 0 ;
	setAttr ".tk[9]" -type "float3" 4.3679628 -1.804001 0 ;
	setAttr ".tk[11]" -type "float3" 4.6503201 -1.5995427 0 ;
	setAttr ".tk[12]" -type "float3" 0.24560869 -0.48937213 0 ;
	setAttr ".tk[13]" -type "float3" 0.56129205 -0.26077914 0 ;
	setAttr ".tk[14]" -type "float3" 0.56129205 -0.26077914 0 ;
	setAttr ".tk[15]" -type "float3" 0.24560875 -0.48937225 0 ;
	setAttr ".tk[16]" -type "float3" 0.050507486 -0.63065022 0 ;
	setAttr ".tk[22]" -type "float3" 1.7574513 -0.90024418 0 ;
	setAttr ".tk[23]" -type "float3" 2.073137 -0.67165124 0 ;
	setAttr ".tk[24]" -type "float3" 2.073137 -0.67165124 0 ;
	setAttr ".tk[25]" -type "float3" 1.7574513 -0.90024418 0 ;
	setAttr ".tk[26]" -type "float3" 1.5623477 -1.0415226 0 ;
createNode polySplitRing -n "polySplitRing12";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[35:36]" "e[38]" "e[40]" "e[42]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 2.2542122431262293 0 0 0 0 1 0 2.1573532045264514 7.9229158275684064 7.960620143677235 1;
	setAttr ".wt" 0.46370542049407959;
	setAttr ".re" 35;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing13";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[25:26]" "e[28]" "e[30]" "e[32]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 2.2542122431262293 0 0 0 0 1 0 2.1573532045264514 7.9229158275684064 7.960620143677235 1;
	setAttr ".wt" 0.49844133853912354;
	setAttr ".re" 25;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing14";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[55:56]" "e[58]" "e[60]" "e[62]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 2.2542122431262293 0 0 0 0 1 0 2.1573532045264514 7.9229158275684064 7.960620143677235 1;
	setAttr ".wt" 0.52638357877731323;
	setAttr ".dr" no;
	setAttr ".re" 62;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak7";
	setAttr ".uopa" yes;
	setAttr -s 41 ".tk";
	setAttr ".tk[5]" -type "float3" -0.27941644 -1.9757112 0 ;
	setAttr ".tk[6]" -type "float3" 0.38840973 -2.0211575 0 ;
	setAttr ".tk[7]" -type "float3" 0.38840973 -2.021158 0 ;
	setAttr ".tk[8]" -type "float3" -0.27941644 -1.9757112 0 ;
	setAttr ".tk[9]" -type "float3" -0.69215596 -1.9476238 0 ;
	setAttr ".tk[11]" -type "float3" -0.094836861 -1.988273 0 ;
	setAttr ".tk[12]" -type "float3" -0.00013912411 -3.1411531e-005 0 ;
	setAttr ".tk[13]" -type "float3" 0.00058934791 0.00013306446 0 ;
	setAttr ".tk[14]" -type "float3" 0.00058934744 0.00013306283 0 ;
	setAttr ".tk[15]" -type "float3" -0.00013912225 -3.1411299e-005 0 ;
	setAttr ".tk[16]" -type "float3" -0.00058934884 -0.00013306446 0 ;
	setAttr ".tk[17]" -type "float3" -0.0060197222 -0.1975335 0 ;
	setAttr ".tk[18]" -type "float3" 0.025499947 -0.11398698 0 ;
	setAttr ".tk[19]" -type "float3" 0.025499947 -0.11398698 0 ;
	setAttr ".tk[20]" -type "float3" -0.0060197231 -0.1975335 0 ;
	setAttr ".tk[21]" -type "float3" -0.025499947 -0.24916814 0 ;
	setAttr ".tk[22]" -type "float3" 0.072470568 -0.37346998 0 ;
	setAttr ".tk[23]" -type "float3" 0.5422163 -0.36247325 0 ;
	setAttr ".tk[24]" -type "float3" 0.5422163 -0.36247325 0 ;
	setAttr ".tk[25]" -type "float3" 0.072470509 -0.37346992 0 ;
	setAttr ".tk[26]" -type "float3" -0.21784943 -0.38026649 0 ;
	setAttr ".tk[27]" -type "float3" 0.19128034 -0.02730527 0 ;
	setAttr ".tk[28]" -type "float3" 0.19128034 -0.02730527 0 ;
	setAttr ".tk[29]" -type "float3" 0.007522461 -0.052899104 0 ;
	setAttr ".tk[30]" -type "float3" -0.10604627 -0.068716861 0 ;
	setAttr ".tk[31]" -type "float3" 0.007522495 -0.052899059 0 ;
	setAttr ".tk[32]" -type "float3" -0.1061507 -0.038149063 0 ;
	setAttr ".tk[33]" -type "float3" -0.13846016 -0.069739908 0 ;
	setAttr ".tk[34]" -type "float3" -0.13846016 -0.069739908 0 ;
	setAttr ".tk[35]" -type "float3" -0.10615068 -0.038149051 0 ;
	setAttr ".tk[36]" -type "float3" -0.086182371 -0.018624783 0 ;
	setAttr ".tk[37]" -type "float3" -0.024943216 -0.0040511936 0 ;
	setAttr ".tk[38]" -type "float3" 0.10566121 0.017161595 0 ;
	setAttr ".tk[39]" -type "float3" 0.10566121 0.017161595 0 ;
	setAttr ".tk[40]" -type "float3" -0.02494327 -0.0040512094 0 ;
	setAttr ".tk[41]" -type "float3" -0.10566121 -0.017161597 0 ;
	setAttr ".tk[42]" -type "float3" 0.027148778 -0.16552907 0 ;
	setAttr ".tk[43]" -type "float3" 0.35215229 -0.13902518 0 ;
	setAttr ".tk[44]" -type "float3" 0.35215229 -0.13902518 0 ;
	setAttr ".tk[45]" -type "float3" 0.027148748 -0.16552907 0 ;
	setAttr ".tk[46]" -type "float3" -0.17371476 -0.18190962 0 ;
createNode deleteComponent -n "deleteComponent2";
	setAttr ".dc" -type "componentList" 4 "e[87]" "e[89]" "e[91]" "e[93:94]";
createNode deleteComponent -n "deleteComponent3";
	setAttr ".dc" -type "componentList" 1 "vtx[42:46]";
createNode polyTweak -n "polyTweak8";
	setAttr ".uopa" yes;
	setAttr -s 38 ".tk";
	setAttr ".tk[0]" -type "float3" 0 -0.82596207 0 ;
	setAttr ".tk[1]" -type "float3" 0 -0.82596207 0 ;
	setAttr ".tk[2]" -type "float3" 0 -0.82596207 0 ;
	setAttr ".tk[3]" -type "float3" 0 -0.82596207 0 ;
	setAttr ".tk[4]" -type "float3" 0 -0.82596207 0 ;
	setAttr ".tk[10]" -type "float3" 0 -0.82596207 0 ;
	setAttr ".tk[12]" -type "float3" -0.0044358931 0.049403045 0 ;
	setAttr ".tk[13]" -type "float3" -0.099812858 0.022399848 0 ;
	setAttr ".tk[14]" -type "float3" -0.099812858 0.02239985 0 ;
	setAttr ".tk[15]" -type "float3" -0.004435841 0.049403068 0 ;
	setAttr ".tk[16]" -type "float3" 0.054510202 0.066092111 0 ;
	setAttr ".tk[17]" -type "float3" -0.010725759 -0.0099838562 0 ;
	setAttr ".tk[18]" -type "float3" 0.045435164 0.042292282 0 ;
	setAttr ".tk[19]" -type "float3" 0.045435157 0.042292278 0 ;
	setAttr ".tk[20]" -type "float3" -0.01072576 -0.0099838609 0 ;
	setAttr ".tk[21]" -type "float3" -0.045435157 -0.042292282 0 ;
	setAttr ".tk[22]" -type "float3" -0.21163228 0.07568448 0 ;
	setAttr ".tk[23]" -type "float3" -0.16734409 0.067197576 0 ;
	setAttr ".tk[24]" -type "float3" -0.16734409 0.067197576 0 ;
	setAttr ".tk[25]" -type "float3" -0.2116323 0.075684488 0 ;
	setAttr ".tk[26]" -type "float3" -0.23900396 0.080929697 0 ;
	setAttr ".tk[27]" -type "float3" 0.45185024 0.024689129 0 ;
	setAttr ".tk[28]" -type "float3" 0.45185024 0.024689129 0 ;
	setAttr ".tk[29]" -type "float3" 0.24631685 0.028505534 0 ;
	setAttr ".tk[30]" -type "float3" 0.11929028 0.030864034 0 ;
	setAttr ".tk[31]" -type "float3" 0.24631691 0.02850556 0 ;
	setAttr ".tk[32]" -type "float3" -0.003614035 -0.033872068 0 ;
	setAttr ".tk[33]" -type "float3" 0.015309235 -0.013811273 0 ;
	setAttr ".tk[34]" -type "float3" 0.015309235 -0.013811274 0 ;
	setAttr ".tk[35]" -type "float3" -0.0036140482 -0.033872068 0 ;
	setAttr ".tk[36]" -type "float3" -0.01530923 -0.046270367 0 ;
	setAttr ".tk[37]" -type "float3" 0.1136317 0.09077283 0 ;
	setAttr ".tk[38]" -type "float3" 0.09696579 0.088921942 0 ;
	setAttr ".tk[39]" -type "float3" 0.09696579 0.088921942 0 ;
	setAttr ".tk[40]" -type "float3" 0.11363171 0.090772837 0 ;
	setAttr ".tk[41]" -type "float3" 0.1239318 0.091916762 0 ;
createNode deleteComponent -n "deleteComponent4";
	setAttr ".dc" -type "componentList" 1 "f[10:14]";
createNode polyTweak -n "polyTweak9";
	setAttr ".uopa" yes;
	setAttr -s 27 ".tk";
	setAttr ".tk[5]" -type "float3" -0.20291167 -0.15847005 0 ;
	setAttr ".tk[6]" -type "float3" -0.11818538 -0.20515822 0 ;
	setAttr ".tk[7]" -type "float3" -0.11818562 -0.20515834 0 ;
	setAttr ".tk[8]" -type "float3" -0.20291167 -0.15847005 0 ;
	setAttr ".tk[9]" -type "float3" -0.25527522 -0.12961516 0 ;
	setAttr ".tk[11]" -type "float3" 0.15896127 0 0 ;
	setAttr ".tk[12]" -type "float3" 0.15896127 0 0 ;
	setAttr ".tk[13]" -type "float3" 0.15896127 0 0 ;
	setAttr ".tk[14]" -type "float3" 0.15896127 0 0 ;
	setAttr ".tk[15]" -type "float3" 0.15896127 0 0 ;
	setAttr ".tk[21]" -type "float3" 0.75792813 -0.091805026 0 ;
	setAttr ".tk[22]" -type "float3" 0.87193 -0.12397437 0 ;
	setAttr ".tk[23]" -type "float3" 0.87193 -0.12397437 0 ;
	setAttr ".tk[24]" -type "float3" 0.75792813 -0.091805041 0 ;
	setAttr ".tk[25]" -type "float3" 0.68747097 -0.071923271 0 ;
	setAttr ".tk[26]" -type "float3" 0.54230034 0 0 ;
	setAttr ".tk[27]" -type "float3" 0.54230034 0 0 ;
	setAttr ".tk[28]" -type "float3" 0.54230034 0 0 ;
	setAttr ".tk[29]" -type "float3" 0.54230034 0 0 ;
	setAttr ".tk[30]" -type "float3" 0.54230034 0 0 ;
	setAttr ".tk[36]" -type "float3" 0.22266659 -1.4527701e-005 0 ;
	setAttr ".tk[37]" -type "float3" 0.22266659 -1.4527701e-005 0 ;
	setAttr ".tk[38]" -type "float3" 0.22266659 -1.4527701e-005 0 ;
	setAttr ".tk[39]" -type "float3" 0.22266659 -1.4527701e-005 0 ;
	setAttr ".tk[40]" -type "float3" 0.22266659 -1.4527701e-005 0 ;
createNode deleteComponent -n "deleteComponent5";
	setAttr ".dc" -type "componentList" 1 "f[5:9]";
createNode polyCube -n "polyCube4";
	setAttr ".w" 0.2;
	setAttr ".h" 1.5;
	setAttr ".d" 0.36666207146960339;
	setAttr ".cuv" 4;
createNode phong -n "phong1";
	setAttr ".c" -type "float3" 0.56516725 0.82352942 0.7843864 ;
createNode shadingEngine -n "phong1SG";
	setAttr ".ihi" 0;
	setAttr -s 7 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 7 ".gn";
createNode materialInfo -n "materialInfo3";
createNode polyUnite -n "polyUnite3";
	setAttr -s 4 ".ip";
	setAttr -s 4 ".im";
createNode groupId -n "groupId23";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts9";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:34]";
createNode groupId -n "groupId24";
	setAttr ".ihi" 0;
createNode groupId -n "groupId25";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts10";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:35]";
createNode groupId -n "groupId26";
	setAttr ".ihi" 0;
createNode groupId -n "groupId27";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts11";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId28";
	setAttr ".ihi" 0;
createNode groupId -n "groupId29";
	setAttr ".ihi" 0;
createNode groupId -n "groupId30";
	setAttr ".ihi" 0;
createNode groupId -n "groupId31";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts12";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:34]";
createNode groupId -n "groupId32";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts13";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[35:70]";
createNode groupId -n "groupId33";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts14";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[71:82]";
createNode polySeparate -n "polySeparate1";
	setAttr ".ic" 6;
	setAttr -s 6 ".out";
createNode groupId -n "groupId34";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts15";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 32 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]" "f[12]" "f[13]" "f[14]" "f[15]" "f[16]" "f[17]" "f[18]" "f[19]" "f[20]" "f[21]" "f[22]" "f[23]" "f[24]" "f[25]" "f[26]" "f[27]" "f[28]" "f[29]" "f[30]" "f[31]";
createNode groupId -n "groupId35";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts16";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 36 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]" "f[12]" "f[13]" "f[14]" "f[15]" "f[16]" "f[17]" "f[18]" "f[19]" "f[20]" "f[21]" "f[22]" "f[23]" "f[24]" "f[25]" "f[26]" "f[27]" "f[28]" "f[29]" "f[30]" "f[31]" "f[32]" "f[33]" "f[34]" "f[35]";
createNode groupId -n "groupId36";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts17";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 6 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]";
createNode groupId -n "groupId37";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts18";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 6 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]";
createNode groupId -n "groupId38";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts19";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 6 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]";
createNode groupId -n "groupId39";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts20";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 6 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]";
createNode polyUnite -n "polyUnite4";
	setAttr -s 6 ".ip";
	setAttr -s 6 ".im";
createNode groupId -n "groupId40";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts21";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:31]";
createNode groupId -n "groupId41";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts22";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[32:91]";
createNode polySeparate -n "polySeparate2";
	setAttr ".ic" 4;
	setAttr -s 4 ".out";
createNode groupId -n "groupId42";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts23";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 35 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]" "f[12]" "f[13]" "f[14]" "f[15]" "f[16]" "f[17]" "f[18]" "f[19]" "f[20]" "f[21]" "f[22]" "f[23]" "f[24]" "f[25]" "f[26]" "f[27]" "f[28]" "f[29]" "f[30]" "f[31]" "f[32]" "f[33]" "f[34]";
createNode groupId -n "groupId43";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts24";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 36 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]" "f[12]" "f[13]" "f[14]" "f[15]" "f[16]" "f[17]" "f[18]" "f[19]" "f[20]" "f[21]" "f[22]" "f[23]" "f[24]" "f[25]" "f[26]" "f[27]" "f[28]" "f[29]" "f[30]" "f[31]" "f[32]" "f[33]" "f[34]" "f[35]";
createNode groupId -n "groupId44";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts25";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 6 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]";
createNode groupId -n "groupId45";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts26";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 6 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]";
createNode polyUnite -n "polyUnite5";
	setAttr -s 4 ".ip";
	setAttr -s 4 ".im";
createNode groupId -n "groupId46";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts27";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:34]";
createNode groupId -n "groupId47";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts28";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[35:70]";
createNode groupId -n "groupId48";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts29";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[71:82]";
createNode polyCube -n "polyCube5";
	setAttr ".w" 6.4134724010919939;
	setAttr ".h" 6.8259984976863572;
	setAttr ".d" 6.7615161439822398;
	setAttr ".cuv" 4;
createNode polySplit -n "polySplit12";
	setAttr -s 2 ".e[0:1]"  0.2996141 0.70038587;
	setAttr -s 2 ".d[0:1]"  -2147483641 -2147483637;
createNode polySplit -n "polySplit13";
	setAttr -s 2 ".e[0:1]"  0.5482794 0.45172063;
	setAttr -s 2 ".d[0:1]"  -2147483636 -2147483637;
createNode polySplit -n "polySplit14";
	setAttr -s 2 ".e[0:1]"  0.77586931 0.22413069;
	setAttr -s 2 ".d[0:1]"  -2147483643 -2147483634;
createNode polySplit -n "polySplit15";
	setAttr -s 2 ".e[0:1]"  0.4668546 0.53314537;
	setAttr -s 2 ".d[0:1]"  -2147483643 -2147483629;
createNode polyExtrudeFace -n "polyExtrudeFace17";
	setAttr ".ics" -type "componentList" 2 "f[6]" "f[8:9]";
	setAttr ".ix" -type "matrix" 0.80083721387177542 0 0 0 0 1.0891857929862045 0 0 0 0 2.0853100977202095 0
		 -0.040284830016313666 4.0822921015129108 -4.5616294206913821 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 2.5277889 4.0822921 0.37604102 ;
	setAttr ".rs" 49874;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 2.5277887641587724 0.36490191244191728 -1.7362174081094381 ;
	setAttr ".cbx" -type "double3" 2.5277887641587724 7.7996822905839043 2.488299472883198 ;
createNode polyTweak -n "polyTweak10";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[10]" -type "float3" 0 0 0.17623082 ;
	setAttr ".tk[11]" -type "float3" 0 0 0.17623082 ;
	setAttr ".tk[12]" -type "float3" 0 -0.63675976 0 ;
	setAttr ".tk[13]" -type "float3" 0 -0.63675976 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace18";
	setAttr ".ics" -type "componentList" 1 "f[6]";
	setAttr ".ix" -type "matrix" 0.80083721387177542 0 0 0 0 1.0891857929862045 0 0 0 0 2.0853100977202095 0
		 -0.040284830016313666 4.0822921015129108 -4.5616294206913821 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 2.5277889 6.6197267 0.37604091 ;
	setAttr ".rs" 54612;
	setAttr ".lt" -type "double3" -8.243882968492987e-017 4.6380866651861059e-017 0.37872851735009005 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 2.5277887641587724 5.4397703039964354 -1.7362171595211029 ;
	setAttr ".cbx" -type "double3" 2.5277887641587724 7.7996825502660334 2.4882989757065275 ;
createNode polyExtrudeFace -n "polyExtrudeFace19";
	setAttr ".ics" -type "componentList" 1 "f[8]";
	setAttr ".ix" -type "matrix" 0.80083721387177542 0 0 0 0 1.0891857929862045 0 0 0 0 2.0853100977202095 0
		 -0.040284830016313666 4.0822921015129108 -4.5616294206913821 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 2.5277889 4.2488422 0.37604067 ;
	setAttr ".rs" 56007;
	setAttr ".lt" -type "double3" 3.154522270055848e-017 4.8014366175196942e-017 0.39206705319955448 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 2.5277887641587724 3.0579141387680036 -1.7362176566977734 ;
	setAttr ".cbx" -type "double3" 2.5277887641587724 5.4397703039964354 2.4882989757065275 ;
createNode polyTweak -n "polyTweak11";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk";
	setAttr ".tk[16]" -type "float3" 0 2.9802322e-008 0 ;
	setAttr ".tk[17]" -type "float3" 0 2.9802322e-008 0 ;
	setAttr ".tk[18]" -type "float3" 0 -2.9802322e-008 0 ;
	setAttr ".tk[19]" -type "float3" 0 -2.9802322e-008 0 ;
	setAttr ".tk[24]" -type "float3" 0 0.18071821 -0.16897187 ;
	setAttr ".tk[25]" -type "float3" 0 0.18071821 0.16897187 ;
	setAttr ".tk[26]" -type "float3" 0 -0.18071821 0.16897187 ;
	setAttr ".tk[27]" -type "float3" 0 -0.18071821 -0.16897187 ;
createNode polyExtrudeFace -n "polyExtrudeFace20";
	setAttr ".ics" -type "componentList" 1 "f[9]";
	setAttr ".ix" -type "matrix" 0.80083721387177542 0 0 0 0 1.0891857929862045 0 0 0 0 2.0853100977202095 0
		 -0.040284830016313666 4.0822921015129108 -4.5616294206913821 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 2.5277889 1.7114078 0.3760404 ;
	setAttr ".rs" 55522;
	setAttr ".lt" -type "double3" 1.0288410404139898e-016 -6.7612035969300173e-017 0.463348812623192 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 2.5277887641587724 0.36490139307765901 -1.7362181538744439 ;
	setAttr ".cbx" -type "double3" 2.5277887641587724 3.0579141387680036 2.4882989757065275 ;
createNode polyTweak -n "polyTweak12";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[28]" -type "float3" 0 0.14335209 -0.13279964 ;
	setAttr ".tk[29]" -type "float3" 0 0.14335209 0.13279966 ;
	setAttr ".tk[30]" -type "float3" 0 -0.14335211 0.13279961 ;
	setAttr ".tk[31]" -type "float3" 0 -0.14335211 -0.13279964 ;
createNode polyExtrudeFace -n "polyExtrudeFace21";
	setAttr ".ics" -type "componentList" 1 "f[7]";
	setAttr ".ix" -type "matrix" 0.80083721387177542 0 0 0 0 1.0891857929862045 0 0 0 0 2.0853100977202095 0
		 -0.040284830016313666 4.0822921015129108 -4.5616294206913821 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 2.5277889 4.0822921 -4.2596931 ;
	setAttr ".rs" 53175;
	setAttr ".lt" -type "double3" -7.9097252554046059e-016 -2.6812749197740562e-016 
		0.43777642871568173 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 2.5277887641587724 0.36490139307765901 -6.783168412007722 ;
	setAttr ".cbx" -type "double3" 2.5277887641587724 7.7996825502660334 -1.7362179052861086 ;
createNode polyTweak -n "polyTweak13";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[32]" -type "float3" 0 0.20425791 0.16735891 ;
	setAttr ".tk[33]" -type "float3" 0 0.20425791 -0.16735891 ;
	setAttr ".tk[34]" -type "float3" 0 -0.20425791 0.16735889 ;
	setAttr ".tk[35]" -type "float3" 0 -0.20425791 -0.16735891 ;
createNode polyExtrudeFace -n "polyExtrudeFace22";
	setAttr ".ics" -type "componentList" 1 "f[4]";
	setAttr ".ix" -type "matrix" 0.80083721387177542 0 0 0 0 1.0891857929862045 0 0 0 0 2.0853100977202095 0
		 -0.040284830016313666 4.0822921015129108 -4.5616294206913821 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 2.5277889 4.0822921 -9.1973629 ;
	setAttr ".rs" 45880;
	setAttr ".lt" -type "double3" 1.8634837894509546e-015 -4.21538066465028e-016 0.3923848997822792 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 2.5277887641587724 0.36490139307765901 -11.611558314265963 ;
	setAttr ".cbx" -type "double3" 2.5277887641587724 7.7996825502660334 -6.783167417654381 ;
createNode polyTweak -n "polyTweak14";
	setAttr ".uopa" yes;
	setAttr -s 7 ".tk";
	setAttr ".tk[36]" -type "float3" 0 0.38718173 0.13727991 ;
	setAttr ".tk[37]" -type "float3" 0 0.38718173 -0.1372799 ;
	setAttr ".tk[38]" -type "float3" 0 -0.38718173 0.13727987 ;
	setAttr ".tk[39]" -type "float3" 0 -0.38718173 -0.13727991 ;
	setAttr ".tk[40]" -type "float3" 0 -0.14138703 -0.13727991 ;
	setAttr ".tk[41]" -type "float3" 0 0.10669321 -0.1372799 ;
createNode polySeparate -n "polySeparate3";
	setAttr ".ic" 4;
	setAttr -s 4 ".out";
createNode groupId -n "groupId49";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts30";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 35 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]" "f[12]" "f[13]" "f[14]" "f[15]" "f[16]" "f[17]" "f[18]" "f[19]" "f[20]" "f[21]" "f[22]" "f[23]" "f[24]" "f[25]" "f[26]" "f[27]" "f[28]" "f[29]" "f[30]" "f[31]" "f[32]" "f[33]" "f[34]";
createNode groupId -n "groupId50";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts31";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 36 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]" "f[12]" "f[13]" "f[14]" "f[15]" "f[16]" "f[17]" "f[18]" "f[19]" "f[20]" "f[21]" "f[22]" "f[23]" "f[24]" "f[25]" "f[26]" "f[27]" "f[28]" "f[29]" "f[30]" "f[31]" "f[32]" "f[33]" "f[34]" "f[35]";
createNode groupId -n "groupId51";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts32";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 6 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]";
createNode groupId -n "groupId52";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts33";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 6 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]";
createNode groupId -n "groupId54";
	setAttr ".ihi" 0;
createNode groupId -n "groupId55";
	setAttr ".ihi" 0;
createNode deleteComponent -n "deleteComponent6";
	setAttr ".dc" -type "componentList" 1 "f[5]";
createNode deleteComponent -n "deleteComponent7";
	setAttr ".dc" -type "componentList" 1 "f[5]";
createNode polySeparate -n "polySeparate4";
	setAttr ".ic" 6;
	setAttr -s 6 ".out";
createNode groupId -n "groupId56";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts34";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 32 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]" "f[12]" "f[13]" "f[14]" "f[15]" "f[16]" "f[17]" "f[18]" "f[19]" "f[20]" "f[21]" "f[22]" "f[23]" "f[24]" "f[25]" "f[26]" "f[27]" "f[28]" "f[29]" "f[30]" "f[31]";
createNode groupId -n "groupId57";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts35";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 36 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]" "f[12]" "f[13]" "f[14]" "f[15]" "f[16]" "f[17]" "f[18]" "f[19]" "f[20]" "f[21]" "f[22]" "f[23]" "f[24]" "f[25]" "f[26]" "f[27]" "f[28]" "f[29]" "f[30]" "f[31]" "f[32]" "f[33]" "f[34]" "f[35]";
createNode groupId -n "groupId58";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts36";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 6 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]";
createNode groupId -n "groupId59";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts37";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 6 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]";
createNode groupId -n "groupId60";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts38";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 6 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]";
createNode groupId -n "groupId61";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts39";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 6 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]";
createNode deleteComponent -n "deleteComponent8";
	setAttr ".dc" -type "componentList" 1 "f[1]";
createNode deleteComponent -n "deleteComponent9";
	setAttr ".dc" -type "componentList" 1 "f[1]";
createNode deleteComponent -n "deleteComponent10";
	setAttr ".dc" -type "componentList" 1 "f[1]";
createNode deleteComponent -n "deleteComponent11";
	setAttr ".dc" -type "componentList" 1 "f[1]";
createNode deleteComponent -n "deleteComponent12";
	setAttr ".dc" -type "componentList" 1 "f[12:23]";
createNode groupId -n "groupId62";
	setAttr ".ihi" 0;
createNode groupId -n "groupId63";
	setAttr ".ihi" 0;
createNode groupId -n "groupId64";
	setAttr ".ihi" 0;
createNode polyUnite -n "polyUnite6";
	setAttr -s 6 ".ip";
	setAttr -s 6 ".im";
createNode groupId -n "groupId65";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts40";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:39]";
createNode groupId -n "groupId66";
	setAttr ".ihi" 0;
createNode groupId -n "groupId67";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts41";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:39]";
createNode groupId -n "groupId68";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts42";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[40:64]";
createNode polyUnite -n "polyUnite7";
	setAttr -s 4 ".ip";
	setAttr -s 4 ".im";
createNode groupId -n "groupId69";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts43";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:34]";
createNode groupId -n "groupId70";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts44";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[35:70]";
createNode groupId -n "groupId71";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts45";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[71:80]";
createNode polyUnite -n "polyUnite8";
	setAttr -s 6 ".ip";
	setAttr -s 6 ".im";
createNode groupId -n "groupId72";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts46";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:31]";
createNode groupId -n "groupId73";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts47";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[32:75]";
createNode polyCube -n "polyCube6";
	setAttr ".w" 10.279212562265851;
	setAttr ".h" 10.211295926317645;
	setAttr ".d" 10.763494070926143;
	setAttr ".cuv" 4;
createNode polyChipOff -n "polyChipOff1";
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".ix" -type "matrix" 0.72730916930655409 0 0 0 0 0.5479371984646807 0 0 0 0 1 0
		 2.0508147122999922 10.512081793781947 20.676883393814393 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 2.0508146 10.512082 20.676884 ;
	setAttr ".rs" 40647;
	setAttr ".dup" no;
createNode polyBoolOp -n "polyBoolOp1";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
	setAttr ".op" 2;
	setAttr ".uth" yes;
createNode groupId -n "groupId74";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts48";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:37]";
createNode groupId -n "groupId75";
	setAttr ".ihi" 0;
createNode groupId -n "groupId76";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts49";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId77";
	setAttr ".ihi" 0;
createNode lambert -n "lambert4";
	setAttr ".c" -type "float3" 1 0.82426256 0.78431374 ;
createNode shadingEngine -n "lambert4SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo4";
createNode transformGeometry -n "transformGeometry1";
	setAttr ".txf" -type "matrix" 0.88326999401437212 0 0 0 0 0.88326999401437212 0 0
		 0 0 0.88326999401437212 0 -8.2443100272775798 0.15577273129595604 -5.6227695436288059 1;
createNode transformGeometry -n "transformGeometry2";
	setAttr ".txf" -type "matrix" 0.85484205466966112 0 0 0 0 0.85484205466966112 0 0
		 0 0 0.85484205466966112 0 -7.2926055045060609 0.19827789640233817 -4.5561910101868346 1;
createNode transformGeometry -n "transformGeometry3";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -7.7947584639400365 0 -4.7650377919886662 1;
createNode transformGeometry -n "transformGeometry4";
	setAttr ".txf" -type "matrix" 2.0833141154236018e-016 0 0.93824126739174274 0 0 1.0016896919429532 0 0
		 -0.93824126739174274 0 2.0833141154236018e-016 0 4.0622889161349214 0.40912007819973972 -16.748821655294901 1;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -s 6 ".st";
select -ne :initialShadingGroup;
	setAttr -s 4 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 4 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultShaderList1;
	setAttr -s 6 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :renderGlobalsList1;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 18 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surfaces" "Particles" "Fluids" "Image Planes" "UI:" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 18 0 1 1 1 1 1
		 1 0 0 0 0 0 0 0 0 0 0 0 ;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".fn" -type "string" "im";
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "groupId74.id" "pCubeShape4.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape4.iog.og[0].gco";
connectAttr "groupParts48.og" "pCubeShape4.i";
connectAttr "groupId75.id" "pCubeShape4.ciog.cog[0].cgid";
connectAttr "groupId1.id" "refridgeShape.iog.og[0].gid";
connectAttr "lambert3SG.mwc" "refridgeShape.iog.og[0].gco";
connectAttr "groupId2.id" "refridgeShape.ciog.cog[0].cgid";
connectAttr "groupId3.id" "refridge_handlerShape.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "refridge_handlerShape.iog.og[0].gco";
connectAttr "groupParts1.og" "refridge_handlerShape.i";
connectAttr "groupId4.id" "refridge_handlerShape.ciog.cog[0].cgid";
connectAttr "groupId5.id" "refridge_handler1Shape.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "refridge_handler1Shape.iog.og[0].gco";
connectAttr "groupId6.id" "refridge_handler1Shape.ciog.cog[0].cgid";
connectAttr "transformGeometry4.og" "refridgeShape1.i";
connectAttr "groupId7.id" "refridgeShape1.iog.og[0].gid";
connectAttr "lambert3SG.mwc" "refridgeShape1.iog.og[0].gco";
connectAttr "groupId8.id" "refridgeShape1.iog.og[1].gid";
connectAttr "lambert2SG.mwc" "refridgeShape1.iog.og[1].gco";
connectAttr "groupId9.id" "dishwasherShape.iog.og[0].gid";
connectAttr "lambert3SG.mwc" "dishwasherShape.iog.og[0].gco";
connectAttr "groupParts4.og" "dishwasherShape.i";
connectAttr "groupId10.id" "dishwasherShape.ciog.cog[0].cgid";
connectAttr "groupId11.id" "buttonShape.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "buttonShape.iog.og[0].gco";
connectAttr "groupParts5.og" "buttonShape.i";
connectAttr "groupId12.id" "buttonShape.ciog.cog[0].cgid";
connectAttr "groupId13.id" "buttonShape1.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "buttonShape1.iog.og[0].gco";
connectAttr "groupParts6.og" "buttonShape1.i";
connectAttr "groupId14.id" "buttonShape1.ciog.cog[0].cgid";
connectAttr "groupId15.id" "buttonShape2.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "buttonShape2.iog.og[0].gco";
connectAttr "groupId16.id" "buttonShape2.ciog.cog[0].cgid";
connectAttr "groupId17.id" "buttonShape3.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "buttonShape3.iog.og[0].gco";
connectAttr "groupId18.id" "buttonShape3.ciog.cog[0].cgid";
connectAttr "groupId19.id" "buttonShape4.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "buttonShape4.iog.og[0].gco";
connectAttr "groupId20.id" "buttonShape4.ciog.cog[0].cgid";
connectAttr "groupParts15.og" "polySurfaceShape2.i";
connectAttr "groupId34.id" "polySurfaceShape2.iog.og[0].gid";
connectAttr "lambert3SG.mwc" "polySurfaceShape2.iog.og[0].gco";
connectAttr "groupParts16.og" "polySurfaceShape3.i";
connectAttr "groupId35.id" "polySurfaceShape3.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape3.iog.og[0].gco";
connectAttr "groupParts17.og" "polySurfaceShape4.i";
connectAttr "groupId36.id" "polySurfaceShape4.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape4.iog.og[0].gco";
connectAttr "groupParts18.og" "polySurfaceShape5.i";
connectAttr "groupId37.id" "polySurfaceShape5.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape5.iog.og[0].gco";
connectAttr "groupParts19.og" "polySurfaceShape6.i";
connectAttr "groupId38.id" "polySurfaceShape6.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape6.iog.og[0].gco";
connectAttr "groupParts20.og" "polySurfaceShape7.i";
connectAttr "groupId39.id" "polySurfaceShape7.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape7.iog.og[0].gco";
connectAttr "groupParts8.og" "dishwasherShape1.i";
connectAttr "groupId21.id" "dishwasherShape1.iog.og[0].gid";
connectAttr "lambert3SG.mwc" "dishwasherShape1.iog.og[0].gco";
connectAttr "groupId22.id" "dishwasherShape1.iog.og[1].gid";
connectAttr "lambert2SG.mwc" "dishwasherShape1.iog.og[1].gco";
connectAttr "polyCylinder1.out" "tubeShape1Orig.i";
connectAttr "groupId23.id" "tubeShape.iog.og[6].gid";
connectAttr "phong1SG.mwc" "tubeShape.iog.og[6].gco";
connectAttr "groupParts9.og" "tubeShape.i";
connectAttr "groupId24.id" "tubeShape.ciog.cog[1].cgid";
connectAttr "groupId25.id" "sinkShape.iog.og[1].gid";
connectAttr "lambert3SG.mwc" "sinkShape.iog.og[1].gco";
connectAttr "groupParts10.og" "sinkShape.i";
connectAttr "groupId26.id" "sinkShape.ciog.cog[1].cgid";
connectAttr "groupId27.id" "handlerShape1.iog.og[1].gid";
connectAttr "lambert2SG.mwc" "handlerShape1.iog.og[1].gco";
connectAttr "groupParts11.og" "handlerShape1.i";
connectAttr "groupId28.id" "handlerShape1.ciog.cog[1].cgid";
connectAttr "groupId29.id" "handlerShape2.iog.og[1].gid";
connectAttr "lambert2SG.mwc" "handlerShape2.iog.og[1].gco";
connectAttr "groupId30.id" "handlerShape2.ciog.cog[1].cgid";
connectAttr "groupParts23.og" "polySurfaceShape9.i";
connectAttr "groupId42.id" "polySurfaceShape9.iog.og[0].gid";
connectAttr "phong1SG.mwc" "polySurfaceShape9.iog.og[0].gco";
connectAttr "groupParts24.og" "polySurfaceShape10.i";
connectAttr "groupId43.id" "polySurfaceShape10.iog.og[0].gid";
connectAttr "lambert3SG.mwc" "polySurfaceShape10.iog.og[0].gco";
connectAttr "groupParts25.og" "polySurfaceShape11.i";
connectAttr "groupId44.id" "polySurfaceShape11.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape11.iog.og[0].gco";
connectAttr "groupParts26.og" "polySurfaceShape12.i";
connectAttr "groupId45.id" "polySurfaceShape12.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape12.iog.og[0].gco";
connectAttr "groupParts14.og" "sink1Shape.i";
connectAttr "groupId31.id" "sink1Shape.iog.og[0].gid";
connectAttr "phong1SG.mwc" "sink1Shape.iog.og[0].gco";
connectAttr "groupId32.id" "sink1Shape.iog.og[1].gid";
connectAttr "lambert3SG.mwc" "sink1Shape.iog.og[1].gco";
connectAttr "groupId33.id" "sink1Shape.iog.og[2].gid";
connectAttr "lambert2SG.mwc" "sink1Shape.iog.og[2].gco";
connectAttr "groupParts34.og" "polySurfaceShape19.i";
connectAttr "groupId56.id" "polySurfaceShape19.iog.og[0].gid";
connectAttr "lambert3SG.mwc" "polySurfaceShape19.iog.og[0].gco";
connectAttr "deleteComponent12.og" "polySurfaceShape20.i";
connectAttr "groupId57.id" "polySurfaceShape20.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape20.iog.og[0].gco";
connectAttr "deleteComponent11.og" "polySurfaceShape21.i";
connectAttr "groupId58.id" "polySurfaceShape21.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape21.iog.og[0].gco";
connectAttr "deleteComponent10.og" "polySurfaceShape22.i";
connectAttr "groupId59.id" "polySurfaceShape22.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape22.iog.og[0].gco";
connectAttr "deleteComponent9.og" "polySurfaceShape23.i";
connectAttr "groupId60.id" "polySurfaceShape23.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape23.iog.og[0].gco";
connectAttr "deleteComponent8.og" "polySurfaceShape24.i";
connectAttr "groupId61.id" "polySurfaceShape24.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape24.iog.og[0].gco";
connectAttr "groupParts22.og" "polySurfaceShape8.i";
connectAttr "groupId40.id" "polySurfaceShape8.iog.og[0].gid";
connectAttr "lambert3SG.mwc" "polySurfaceShape8.iog.og[0].gco";
connectAttr "groupId41.id" "polySurfaceShape8.iog.og[1].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape8.iog.og[1].gco";
connectAttr "groupParts30.og" "polySurfaceShape14.i";
connectAttr "groupId49.id" "polySurfaceShape14.iog.og[0].gid";
connectAttr "phong1SG.mwc" "polySurfaceShape14.iog.og[0].gco";
connectAttr "groupParts31.og" "polySurfaceShape15.i";
connectAttr "groupId50.id" "polySurfaceShape15.iog.og[0].gid";
connectAttr "lambert3SG.mwc" "polySurfaceShape15.iog.og[0].gco";
connectAttr "deleteComponent6.og" "polySurfaceShape16.i";
connectAttr "groupId51.id" "polySurfaceShape16.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape16.iog.og[0].gco";
connectAttr "deleteComponent7.og" "|polySurface12|polySurface16|transform34|polySurfaceShape17.i"
		;
connectAttr "groupId52.id" "|polySurface12|polySurface16|transform34|polySurfaceShape17.iog.og[0].gid"
		;
connectAttr "lambert2SG.mwc" "|polySurface12|polySurface16|transform34|polySurfaceShape17.iog.og[0].gco"
		;
connectAttr "groupParts29.og" "polySurfaceShape13.i";
connectAttr "groupId46.id" "polySurfaceShape13.iog.og[0].gid";
connectAttr "phong1SG.mwc" "polySurfaceShape13.iog.og[0].gco";
connectAttr "groupId47.id" "polySurfaceShape13.iog.og[1].gid";
connectAttr "lambert3SG.mwc" "polySurfaceShape13.iog.og[1].gco";
connectAttr "groupId48.id" "polySurfaceShape13.iog.og[2].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape13.iog.og[2].gco";
connectAttr "groupId55.id" "|cabinet|polySurface17|transform32|polySurfaceShape17.iog.og[0].gid"
		;
connectAttr "lambert2SG.mwc" "|cabinet|polySurface17|transform32|polySurfaceShape17.iog.og[0].gco"
		;
connectAttr "groupId54.id" "polySurfaceShape18.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape18.iog.og[0].gco";
connectAttr "groupId62.id" "polySurfaceShape25.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape25.iog.og[0].gco";
connectAttr "groupId63.id" "polySurfaceShape26.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape26.iog.og[0].gco";
connectAttr "groupId64.id" "polySurfaceShape27.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape27.iog.og[0].gco";
connectAttr "groupId65.id" "cabinetShape.iog.og[0].gid";
connectAttr "lambert3SG.mwc" "cabinetShape.iog.og[0].gco";
connectAttr "groupParts40.og" "cabinetShape.i";
connectAttr "groupId66.id" "cabinetShape.ciog.cog[0].cgid";
connectAttr "transformGeometry3.og" "polySurfaceShape28.i";
connectAttr "groupId67.id" "polySurfaceShape28.iog.og[0].gid";
connectAttr "lambert3SG.mwc" "polySurfaceShape28.iog.og[0].gco";
connectAttr "groupId68.id" "polySurfaceShape28.iog.og[1].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape28.iog.og[1].gco";
connectAttr "transformGeometry2.og" "polySurfaceShape29.i";
connectAttr "groupId69.id" "polySurfaceShape29.iog.og[0].gid";
connectAttr "phong1SG.mwc" "polySurfaceShape29.iog.og[0].gco";
connectAttr "groupId70.id" "polySurfaceShape29.iog.og[1].gid";
connectAttr "lambert3SG.mwc" "polySurfaceShape29.iog.og[1].gco";
connectAttr "groupId71.id" "polySurfaceShape29.iog.og[2].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape29.iog.og[2].gco";
connectAttr "transformGeometry1.og" "polySurfaceShape30.i";
connectAttr "groupId72.id" "polySurfaceShape30.iog.og[0].gid";
connectAttr "lambert3SG.mwc" "polySurfaceShape30.iog.og[0].gco";
connectAttr "groupId73.id" "polySurfaceShape30.iog.og[1].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape30.iog.og[1].gco";
connectAttr "groupId76.id" "pCubeShape5.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape5.iog.og[0].gco";
connectAttr "groupParts49.og" "pCubeShape5.i";
connectAttr "groupId77.id" "pCubeShape5.ciog.cog[0].cgid";
connectAttr "polyBoolOp1.out" "polySurfaceShape31.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "phong1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert4SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "phong1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert4SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polySurfaceShape1.o" "polySplitRing1.ip";
connectAttr "pCubeShape4.wm" "polySplitRing1.mp";
connectAttr "polySplitRing1.out" "polyExtrudeFace1.ip";
connectAttr "pCubeShape4.wm" "polyExtrudeFace1.mp";
connectAttr "polyExtrudeFace1.out" "polySplitRing3.ip";
connectAttr "pCubeShape4.wm" "polySplitRing3.mp";
connectAttr "polySplitRing3.out" "polyExtrudeFace2.ip";
connectAttr "pCubeShape4.wm" "polyExtrudeFace2.mp";
connectAttr "polyTweak1.out" "polySplitRing4.ip";
connectAttr "pCubeShape4.wm" "polySplitRing4.mp";
connectAttr "polyExtrudeFace2.out" "polyTweak1.ip";
connectAttr "polyTweak2.out" "polyExtrudeFace3.ip";
connectAttr "pCubeShape4.wm" "polyExtrudeFace3.mp";
connectAttr "polySplitRing4.out" "polyTweak2.ip";
connectAttr "polyExtrudeFace3.out" "polySplitRing5.ip";
connectAttr "pCubeShape4.wm" "polySplitRing5.mp";
connectAttr "polySplitRing5.out" "polyExtrudeFace4.ip";
connectAttr "pCubeShape4.wm" "polyExtrudeFace4.mp";
connectAttr "polyPlane1.out" "polySplitRing6.ip";
connectAttr "refridge_handlerShape.wm" "polySplitRing6.mp";
connectAttr "polySplitRing6.out" "polySplitRing7.ip";
connectAttr "refridge_handlerShape.wm" "polySplitRing7.mp";
connectAttr "polySplitRing7.out" "polyExtrudeFace8.ip";
connectAttr "refridge_handlerShape.wm" "polyExtrudeFace8.mp";
connectAttr "polyExtrudeFace8.out" "deleteComponent1.ig";
connectAttr "deleteComponent1.og" "polyAppend1.ip";
connectAttr "polyAppend1.out" "polyAppend2.ip";
connectAttr "lambert2.oc" "lambert2SG.ss";
connectAttr "refridge_handlerShape.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "refridge_handlerShape.ciog.cog[0]" "lambert2SG.dsm" -na;
connectAttr "refridge_handler1Shape.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "refridge_handler1Shape.ciog.cog[0]" "lambert2SG.dsm" -na;
connectAttr "refridgeShape1.iog.og[1]" "lambert2SG.dsm" -na;
connectAttr "buttonShape.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "buttonShape.ciog.cog[0]" "lambert2SG.dsm" -na;
connectAttr "buttonShape1.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "buttonShape1.ciog.cog[0]" "lambert2SG.dsm" -na;
connectAttr "buttonShape2.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "buttonShape2.ciog.cog[0]" "lambert2SG.dsm" -na;
connectAttr "buttonShape3.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "buttonShape3.ciog.cog[0]" "lambert2SG.dsm" -na;
connectAttr "buttonShape4.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "buttonShape4.ciog.cog[0]" "lambert2SG.dsm" -na;
connectAttr "dishwasherShape1.iog.og[1]" "lambert2SG.dsm" -na;
connectAttr "handlerShape1.iog.og[1]" "lambert2SG.dsm" -na;
connectAttr "handlerShape1.ciog.cog[1]" "lambert2SG.dsm" -na;
connectAttr "handlerShape2.iog.og[1]" "lambert2SG.dsm" -na;
connectAttr "handlerShape2.ciog.cog[1]" "lambert2SG.dsm" -na;
connectAttr "sink1Shape.iog.og[2]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape3.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape4.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape5.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape6.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape7.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape8.iog.og[1]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape11.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape12.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape13.iog.og[2]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape16.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "|polySurface12|polySurface16|transform34|polySurfaceShape17.iog.og[0]" "lambert2SG.dsm"
		 -na;
connectAttr "polySurfaceShape18.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "|cabinet|polySurface17|transform32|polySurfaceShape17.iog.og[0]" "lambert2SG.dsm"
		 -na;
connectAttr "polySurfaceShape20.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape21.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape22.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape23.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape24.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape25.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape26.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape27.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape28.iog.og[1]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape29.iog.og[2]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape30.iog.og[1]" "lambert2SG.dsm" -na;
connectAttr "groupId3.msg" "lambert2SG.gn" -na;
connectAttr "groupId4.msg" "lambert2SG.gn" -na;
connectAttr "groupId5.msg" "lambert2SG.gn" -na;
connectAttr "groupId6.msg" "lambert2SG.gn" -na;
connectAttr "groupId8.msg" "lambert2SG.gn" -na;
connectAttr "groupId11.msg" "lambert2SG.gn" -na;
connectAttr "groupId12.msg" "lambert2SG.gn" -na;
connectAttr "groupId13.msg" "lambert2SG.gn" -na;
connectAttr "groupId14.msg" "lambert2SG.gn" -na;
connectAttr "groupId15.msg" "lambert2SG.gn" -na;
connectAttr "groupId16.msg" "lambert2SG.gn" -na;
connectAttr "groupId17.msg" "lambert2SG.gn" -na;
connectAttr "groupId18.msg" "lambert2SG.gn" -na;
connectAttr "groupId19.msg" "lambert2SG.gn" -na;
connectAttr "groupId20.msg" "lambert2SG.gn" -na;
connectAttr "groupId22.msg" "lambert2SG.gn" -na;
connectAttr "groupId27.msg" "lambert2SG.gn" -na;
connectAttr "groupId28.msg" "lambert2SG.gn" -na;
connectAttr "groupId29.msg" "lambert2SG.gn" -na;
connectAttr "groupId30.msg" "lambert2SG.gn" -na;
connectAttr "groupId33.msg" "lambert2SG.gn" -na;
connectAttr "groupId35.msg" "lambert2SG.gn" -na;
connectAttr "groupId36.msg" "lambert2SG.gn" -na;
connectAttr "groupId37.msg" "lambert2SG.gn" -na;
connectAttr "groupId38.msg" "lambert2SG.gn" -na;
connectAttr "groupId39.msg" "lambert2SG.gn" -na;
connectAttr "groupId41.msg" "lambert2SG.gn" -na;
connectAttr "groupId44.msg" "lambert2SG.gn" -na;
connectAttr "groupId45.msg" "lambert2SG.gn" -na;
connectAttr "groupId48.msg" "lambert2SG.gn" -na;
connectAttr "groupId51.msg" "lambert2SG.gn" -na;
connectAttr "groupId52.msg" "lambert2SG.gn" -na;
connectAttr "groupId54.msg" "lambert2SG.gn" -na;
connectAttr "groupId55.msg" "lambert2SG.gn" -na;
connectAttr "groupId57.msg" "lambert2SG.gn" -na;
connectAttr "groupId58.msg" "lambert2SG.gn" -na;
connectAttr "groupId59.msg" "lambert2SG.gn" -na;
connectAttr "groupId60.msg" "lambert2SG.gn" -na;
connectAttr "groupId61.msg" "lambert2SG.gn" -na;
connectAttr "groupId62.msg" "lambert2SG.gn" -na;
connectAttr "groupId63.msg" "lambert2SG.gn" -na;
connectAttr "groupId64.msg" "lambert2SG.gn" -na;
connectAttr "groupId68.msg" "lambert2SG.gn" -na;
connectAttr "groupId71.msg" "lambert2SG.gn" -na;
connectAttr "groupId73.msg" "lambert2SG.gn" -na;
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "lambert2.msg" "materialInfo1.m";
connectAttr "lambert3.oc" "lambert3SG.ss";
connectAttr "refridgeShape.iog.og[0]" "lambert3SG.dsm" -na;
connectAttr "refridgeShape.ciog.cog[0]" "lambert3SG.dsm" -na;
connectAttr "refridgeShape1.iog.og[0]" "lambert3SG.dsm" -na;
connectAttr "dishwasherShape.iog.og[0]" "lambert3SG.dsm" -na;
connectAttr "dishwasherShape.ciog.cog[0]" "lambert3SG.dsm" -na;
connectAttr "dishwasherShape1.iog.og[0]" "lambert3SG.dsm" -na;
connectAttr "sinkShape.iog.og[1]" "lambert3SG.dsm" -na;
connectAttr "sinkShape.ciog.cog[1]" "lambert3SG.dsm" -na;
connectAttr "sink1Shape.iog.og[1]" "lambert3SG.dsm" -na;
connectAttr "polySurfaceShape2.iog.og[0]" "lambert3SG.dsm" -na;
connectAttr "polySurfaceShape8.iog.og[0]" "lambert3SG.dsm" -na;
connectAttr "polySurfaceShape10.iog.og[0]" "lambert3SG.dsm" -na;
connectAttr "polySurfaceShape13.iog.og[1]" "lambert3SG.dsm" -na;
connectAttr "polySurfaceShape15.iog.og[0]" "lambert3SG.dsm" -na;
connectAttr "polySurfaceShape19.iog.og[0]" "lambert3SG.dsm" -na;
connectAttr "cabinetShape.iog.og[0]" "lambert3SG.dsm" -na;
connectAttr "cabinetShape.ciog.cog[0]" "lambert3SG.dsm" -na;
connectAttr "polySurfaceShape28.iog.og[0]" "lambert3SG.dsm" -na;
connectAttr "polySurfaceShape29.iog.og[1]" "lambert3SG.dsm" -na;
connectAttr "polySurfaceShape30.iog.og[0]" "lambert3SG.dsm" -na;
connectAttr "groupId1.msg" "lambert3SG.gn" -na;
connectAttr "groupId2.msg" "lambert3SG.gn" -na;
connectAttr "groupId7.msg" "lambert3SG.gn" -na;
connectAttr "groupId9.msg" "lambert3SG.gn" -na;
connectAttr "groupId10.msg" "lambert3SG.gn" -na;
connectAttr "groupId21.msg" "lambert3SG.gn" -na;
connectAttr "groupId25.msg" "lambert3SG.gn" -na;
connectAttr "groupId26.msg" "lambert3SG.gn" -na;
connectAttr "groupId32.msg" "lambert3SG.gn" -na;
connectAttr "groupId34.msg" "lambert3SG.gn" -na;
connectAttr "groupId40.msg" "lambert3SG.gn" -na;
connectAttr "groupId43.msg" "lambert3SG.gn" -na;
connectAttr "groupId47.msg" "lambert3SG.gn" -na;
connectAttr "groupId50.msg" "lambert3SG.gn" -na;
connectAttr "groupId56.msg" "lambert3SG.gn" -na;
connectAttr "groupId65.msg" "lambert3SG.gn" -na;
connectAttr "groupId66.msg" "lambert3SG.gn" -na;
connectAttr "groupId67.msg" "lambert3SG.gn" -na;
connectAttr "groupId70.msg" "lambert3SG.gn" -na;
connectAttr "groupId72.msg" "lambert3SG.gn" -na;
connectAttr "lambert3SG.msg" "materialInfo2.sg";
connectAttr "lambert3.msg" "materialInfo2.m";
connectAttr "refridgeShape.o" "polyUnite1.ip[0]";
connectAttr "refridge_handlerShape.o" "polyUnite1.ip[1]";
connectAttr "refridge_handler1Shape.o" "polyUnite1.ip[2]";
connectAttr "refridgeShape.wm" "polyUnite1.im[0]";
connectAttr "refridge_handlerShape.wm" "polyUnite1.im[1]";
connectAttr "refridge_handler1Shape.wm" "polyUnite1.im[2]";
connectAttr "polyAppend2.out" "groupParts1.ig";
connectAttr "groupId3.id" "groupParts1.gi";
connectAttr "polyUnite1.out" "groupParts2.ig";
connectAttr "groupId7.id" "groupParts2.gi";
connectAttr "groupParts2.og" "groupParts3.ig";
connectAttr "groupId8.id" "groupParts3.gi";
connectAttr "polyCube1.out" "polySplit1.ip";
connectAttr "polySplit1.out" "polySplit2.ip";
connectAttr "polySplit2.out" "polySplit3.ip";
connectAttr "polySplit3.out" "polyExtrudeFace9.ip";
connectAttr "dishwasherShape.wm" "polyExtrudeFace9.mp";
connectAttr "polyTweak3.out" "polySplit4.ip";
connectAttr "polyExtrudeFace9.out" "polyTweak3.ip";
connectAttr "polySplit4.out" "polySplit5.ip";
connectAttr "polySplit5.out" "polySplit6.ip";
connectAttr "polySplit6.out" "polySplit7.ip";
connectAttr "polyTweak4.out" "polyExtrudeFace10.ip";
connectAttr "dishwasherShape.wm" "polyExtrudeFace10.mp";
connectAttr "polySplit7.out" "polyTweak4.ip";
connectAttr "polyExtrudeFace10.out" "polySplit8.ip";
connectAttr "polySplit8.out" "polySplit9.ip";
connectAttr "polyTweak5.out" "polyExtrudeFace11.ip";
connectAttr "dishwasherShape.wm" "polyExtrudeFace11.mp";
connectAttr "polySplit9.out" "polyTweak5.ip";
connectAttr "dishwasherShape.o" "polyUnite2.ip[0]";
connectAttr "buttonShape.o" "polyUnite2.ip[1]";
connectAttr "buttonShape1.o" "polyUnite2.ip[2]";
connectAttr "buttonShape2.o" "polyUnite2.ip[3]";
connectAttr "buttonShape3.o" "polyUnite2.ip[4]";
connectAttr "buttonShape4.o" "polyUnite2.ip[5]";
connectAttr "dishwasherShape.wm" "polyUnite2.im[0]";
connectAttr "buttonShape.wm" "polyUnite2.im[1]";
connectAttr "buttonShape1.wm" "polyUnite2.im[2]";
connectAttr "buttonShape2.wm" "polyUnite2.im[3]";
connectAttr "buttonShape3.wm" "polyUnite2.im[4]";
connectAttr "buttonShape4.wm" "polyUnite2.im[5]";
connectAttr "polyExtrudeFace11.out" "groupParts4.ig";
connectAttr "groupId9.id" "groupParts4.gi";
connectAttr "polySphere1.out" "groupParts5.ig";
connectAttr "groupId11.id" "groupParts5.gi";
connectAttr "polyCube2.out" "groupParts6.ig";
connectAttr "groupId13.id" "groupParts6.gi";
connectAttr "polyUnite2.out" "groupParts7.ig";
connectAttr "groupId21.id" "groupParts7.gi";
connectAttr "groupParts7.og" "groupParts8.ig";
connectAttr "groupId22.id" "groupParts8.gi";
connectAttr "polyCube3.out" "polyExtrudeFace12.ip";
connectAttr "sinkShape.wm" "polyExtrudeFace12.mp";
connectAttr "polyExtrudeFace12.out" "polyExtrudeFace13.ip";
connectAttr "sinkShape.wm" "polyExtrudeFace13.mp";
connectAttr "polyExtrudeFace13.out" "polySplit10.ip";
connectAttr "polySplit10.out" "polyExtrudeFace14.ip";
connectAttr "sinkShape.wm" "polyExtrudeFace14.mp";
connectAttr "polyExtrudeFace14.out" "polySplit11.ip";
connectAttr "polySplit11.out" "polyExtrudeFace15.ip";
connectAttr "sinkShape.wm" "polyExtrudeFace15.mp";
connectAttr "polyExtrudeFace15.out" "polyExtrudeFace16.ip";
connectAttr "sinkShape.wm" "polyExtrudeFace16.mp";
connectAttr "tubeShape1Orig.w" "polySplitRing8.ip";
connectAttr "tubeShape.wm" "polySplitRing8.mp";
connectAttr "polySplitRing8.out" "polySplitRing9.ip";
connectAttr "tubeShape.wm" "polySplitRing9.mp";
connectAttr "polySplitRing9.out" "polySplitRing10.ip";
connectAttr "tubeShape.wm" "polySplitRing10.mp";
connectAttr "polyTweak6.out" "polySplitRing11.ip";
connectAttr "tubeShape.wm" "polySplitRing11.mp";
connectAttr "polySplitRing10.out" "polyTweak6.ip";
connectAttr "polySplitRing11.out" "polySplitRing12.ip";
connectAttr "tubeShape.wm" "polySplitRing12.mp";
connectAttr "polySplitRing12.out" "polySplitRing13.ip";
connectAttr "tubeShape.wm" "polySplitRing13.mp";
connectAttr "polySplitRing13.out" "polySplitRing14.ip";
connectAttr "tubeShape.wm" "polySplitRing14.mp";
connectAttr "polySplitRing14.out" "polyTweak7.ip";
connectAttr "polyTweak7.out" "deleteComponent2.ig";
connectAttr "deleteComponent2.og" "deleteComponent3.ig";
connectAttr "deleteComponent3.og" "polyTweak8.ip";
connectAttr "polyTweak8.out" "deleteComponent4.ig";
connectAttr "deleteComponent4.og" "polyTweak9.ip";
connectAttr "polyTweak9.out" "deleteComponent5.ig";
connectAttr "phong1.oc" "phong1SG.ss";
connectAttr "tubeShape.iog.og[6]" "phong1SG.dsm" -na;
connectAttr "tubeShape.ciog.cog[1]" "phong1SG.dsm" -na;
connectAttr "sink1Shape.iog.og[0]" "phong1SG.dsm" -na;
connectAttr "polySurfaceShape9.iog.og[0]" "phong1SG.dsm" -na;
connectAttr "polySurfaceShape13.iog.og[0]" "phong1SG.dsm" -na;
connectAttr "polySurfaceShape14.iog.og[0]" "phong1SG.dsm" -na;
connectAttr "polySurfaceShape29.iog.og[0]" "phong1SG.dsm" -na;
connectAttr "groupId23.msg" "phong1SG.gn" -na;
connectAttr "groupId24.msg" "phong1SG.gn" -na;
connectAttr "groupId31.msg" "phong1SG.gn" -na;
connectAttr "groupId42.msg" "phong1SG.gn" -na;
connectAttr "groupId46.msg" "phong1SG.gn" -na;
connectAttr "groupId49.msg" "phong1SG.gn" -na;
connectAttr "groupId69.msg" "phong1SG.gn" -na;
connectAttr "phong1SG.msg" "materialInfo3.sg";
connectAttr "phong1.msg" "materialInfo3.m";
connectAttr "tubeShape.o" "polyUnite3.ip[0]";
connectAttr "sinkShape.o" "polyUnite3.ip[1]";
connectAttr "handlerShape1.o" "polyUnite3.ip[2]";
connectAttr "handlerShape2.o" "polyUnite3.ip[3]";
connectAttr "tubeShape.wm" "polyUnite3.im[0]";
connectAttr "sinkShape.wm" "polyUnite3.im[1]";
connectAttr "handlerShape1.wm" "polyUnite3.im[2]";
connectAttr "handlerShape2.wm" "polyUnite3.im[3]";
connectAttr "deleteComponent5.og" "groupParts9.ig";
connectAttr "groupId23.id" "groupParts9.gi";
connectAttr "polyExtrudeFace16.out" "groupParts10.ig";
connectAttr "groupId25.id" "groupParts10.gi";
connectAttr "polyCube4.out" "groupParts11.ig";
connectAttr "groupId27.id" "groupParts11.gi";
connectAttr "polyUnite3.out" "groupParts12.ig";
connectAttr "groupId31.id" "groupParts12.gi";
connectAttr "groupParts12.og" "groupParts13.ig";
connectAttr "groupId32.id" "groupParts13.gi";
connectAttr "groupParts13.og" "groupParts14.ig";
connectAttr "groupId33.id" "groupParts14.gi";
connectAttr "dishwasherShape1.o" "polySeparate1.ip";
connectAttr "polySeparate1.out[0]" "groupParts15.ig";
connectAttr "groupId34.id" "groupParts15.gi";
connectAttr "polySeparate1.out[1]" "groupParts16.ig";
connectAttr "groupId35.id" "groupParts16.gi";
connectAttr "polySeparate1.out[2]" "groupParts17.ig";
connectAttr "groupId36.id" "groupParts17.gi";
connectAttr "polySeparate1.out[3]" "groupParts18.ig";
connectAttr "groupId37.id" "groupParts18.gi";
connectAttr "polySeparate1.out[4]" "groupParts19.ig";
connectAttr "groupId38.id" "groupParts19.gi";
connectAttr "polySeparate1.out[5]" "groupParts20.ig";
connectAttr "groupId39.id" "groupParts20.gi";
connectAttr "polySurfaceShape2.o" "polyUnite4.ip[0]";
connectAttr "polySurfaceShape3.o" "polyUnite4.ip[1]";
connectAttr "polySurfaceShape4.o" "polyUnite4.ip[2]";
connectAttr "polySurfaceShape5.o" "polyUnite4.ip[3]";
connectAttr "polySurfaceShape6.o" "polyUnite4.ip[4]";
connectAttr "polySurfaceShape7.o" "polyUnite4.ip[5]";
connectAttr "polySurfaceShape2.wm" "polyUnite4.im[0]";
connectAttr "polySurfaceShape3.wm" "polyUnite4.im[1]";
connectAttr "polySurfaceShape4.wm" "polyUnite4.im[2]";
connectAttr "polySurfaceShape5.wm" "polyUnite4.im[3]";
connectAttr "polySurfaceShape6.wm" "polyUnite4.im[4]";
connectAttr "polySurfaceShape7.wm" "polyUnite4.im[5]";
connectAttr "polyUnite4.out" "groupParts21.ig";
connectAttr "groupId40.id" "groupParts21.gi";
connectAttr "groupParts21.og" "groupParts22.ig";
connectAttr "groupId41.id" "groupParts22.gi";
connectAttr "sink1Shape.o" "polySeparate2.ip";
connectAttr "polySeparate2.out[0]" "groupParts23.ig";
connectAttr "groupId42.id" "groupParts23.gi";
connectAttr "polySeparate2.out[1]" "groupParts24.ig";
connectAttr "groupId43.id" "groupParts24.gi";
connectAttr "polySeparate2.out[2]" "groupParts25.ig";
connectAttr "groupId44.id" "groupParts25.gi";
connectAttr "polySeparate2.out[3]" "groupParts26.ig";
connectAttr "groupId45.id" "groupParts26.gi";
connectAttr "polySurfaceShape9.o" "polyUnite5.ip[0]";
connectAttr "polySurfaceShape10.o" "polyUnite5.ip[1]";
connectAttr "polySurfaceShape11.o" "polyUnite5.ip[2]";
connectAttr "polySurfaceShape12.o" "polyUnite5.ip[3]";
connectAttr "polySurfaceShape9.wm" "polyUnite5.im[0]";
connectAttr "polySurfaceShape10.wm" "polyUnite5.im[1]";
connectAttr "polySurfaceShape11.wm" "polyUnite5.im[2]";
connectAttr "polySurfaceShape12.wm" "polyUnite5.im[3]";
connectAttr "polyUnite5.out" "groupParts27.ig";
connectAttr "groupId46.id" "groupParts27.gi";
connectAttr "groupParts27.og" "groupParts28.ig";
connectAttr "groupId47.id" "groupParts28.gi";
connectAttr "groupParts28.og" "groupParts29.ig";
connectAttr "groupId48.id" "groupParts29.gi";
connectAttr "polyCube5.out" "polySplit12.ip";
connectAttr "polySplit12.out" "polySplit13.ip";
connectAttr "polySplit13.out" "polySplit14.ip";
connectAttr "polySplit14.out" "polySplit15.ip";
connectAttr "polyTweak10.out" "polyExtrudeFace17.ip";
connectAttr "cabinetShape.wm" "polyExtrudeFace17.mp";
connectAttr "polySplit15.out" "polyTweak10.ip";
connectAttr "polyExtrudeFace17.out" "polyExtrudeFace18.ip";
connectAttr "cabinetShape.wm" "polyExtrudeFace18.mp";
connectAttr "polyTweak11.out" "polyExtrudeFace19.ip";
connectAttr "cabinetShape.wm" "polyExtrudeFace19.mp";
connectAttr "polyExtrudeFace18.out" "polyTweak11.ip";
connectAttr "polyTweak12.out" "polyExtrudeFace20.ip";
connectAttr "cabinetShape.wm" "polyExtrudeFace20.mp";
connectAttr "polyExtrudeFace19.out" "polyTweak12.ip";
connectAttr "polyTweak13.out" "polyExtrudeFace21.ip";
connectAttr "cabinetShape.wm" "polyExtrudeFace21.mp";
connectAttr "polyExtrudeFace20.out" "polyTweak13.ip";
connectAttr "polyTweak14.out" "polyExtrudeFace22.ip";
connectAttr "cabinetShape.wm" "polyExtrudeFace22.mp";
connectAttr "polyExtrudeFace21.out" "polyTweak14.ip";
connectAttr "polySurfaceShape13.o" "polySeparate3.ip";
connectAttr "polySeparate3.out[0]" "groupParts30.ig";
connectAttr "groupId49.id" "groupParts30.gi";
connectAttr "polySeparate3.out[1]" "groupParts31.ig";
connectAttr "groupId50.id" "groupParts31.gi";
connectAttr "polySeparate3.out[2]" "groupParts32.ig";
connectAttr "groupId51.id" "groupParts32.gi";
connectAttr "polySeparate3.out[3]" "groupParts33.ig";
connectAttr "groupId52.id" "groupParts33.gi";
connectAttr "groupParts32.og" "deleteComponent6.ig";
connectAttr "groupParts33.og" "deleteComponent7.ig";
connectAttr "polySurfaceShape8.o" "polySeparate4.ip";
connectAttr "polySeparate4.out[0]" "groupParts34.ig";
connectAttr "groupId56.id" "groupParts34.gi";
connectAttr "polySeparate4.out[1]" "groupParts35.ig";
connectAttr "groupId57.id" "groupParts35.gi";
connectAttr "polySeparate4.out[2]" "groupParts36.ig";
connectAttr "groupId58.id" "groupParts36.gi";
connectAttr "polySeparate4.out[3]" "groupParts37.ig";
connectAttr "groupId59.id" "groupParts37.gi";
connectAttr "polySeparate4.out[4]" "groupParts38.ig";
connectAttr "groupId60.id" "groupParts38.gi";
connectAttr "polySeparate4.out[5]" "groupParts39.ig";
connectAttr "groupId61.id" "groupParts39.gi";
connectAttr "groupParts39.og" "deleteComponent8.ig";
connectAttr "groupParts38.og" "deleteComponent9.ig";
connectAttr "groupParts37.og" "deleteComponent10.ig";
connectAttr "groupParts36.og" "deleteComponent11.ig";
connectAttr "groupParts35.og" "deleteComponent12.ig";
connectAttr "cabinetShape.o" "polyUnite6.ip[0]";
connectAttr "|cabinet|polySurface17|transform32|polySurfaceShape17.o" "polyUnite6.ip[1]"
		;
connectAttr "polySurfaceShape18.o" "polyUnite6.ip[2]";
connectAttr "polySurfaceShape25.o" "polyUnite6.ip[3]";
connectAttr "polySurfaceShape26.o" "polyUnite6.ip[4]";
connectAttr "polySurfaceShape27.o" "polyUnite6.ip[5]";
connectAttr "cabinetShape.wm" "polyUnite6.im[0]";
connectAttr "|cabinet|polySurface17|transform32|polySurfaceShape17.wm" "polyUnite6.im[1]"
		;
connectAttr "polySurfaceShape18.wm" "polyUnite6.im[2]";
connectAttr "polySurfaceShape25.wm" "polyUnite6.im[3]";
connectAttr "polySurfaceShape26.wm" "polyUnite6.im[4]";
connectAttr "polySurfaceShape27.wm" "polyUnite6.im[5]";
connectAttr "polyExtrudeFace22.out" "groupParts40.ig";
connectAttr "groupId65.id" "groupParts40.gi";
connectAttr "polyUnite6.out" "groupParts41.ig";
connectAttr "groupId67.id" "groupParts41.gi";
connectAttr "groupParts41.og" "groupParts42.ig";
connectAttr "groupId68.id" "groupParts42.gi";
connectAttr "polySurfaceShape14.o" "polyUnite7.ip[0]";
connectAttr "polySurfaceShape15.o" "polyUnite7.ip[1]";
connectAttr "polySurfaceShape16.o" "polyUnite7.ip[2]";
connectAttr "|polySurface12|polySurface16|transform34|polySurfaceShape17.o" "polyUnite7.ip[3]"
		;
connectAttr "polySurfaceShape14.wm" "polyUnite7.im[0]";
connectAttr "polySurfaceShape15.wm" "polyUnite7.im[1]";
connectAttr "polySurfaceShape16.wm" "polyUnite7.im[2]";
connectAttr "|polySurface12|polySurface16|transform34|polySurfaceShape17.wm" "polyUnite7.im[3]"
		;
connectAttr "polyUnite7.out" "groupParts43.ig";
connectAttr "groupId69.id" "groupParts43.gi";
connectAttr "groupParts43.og" "groupParts44.ig";
connectAttr "groupId70.id" "groupParts44.gi";
connectAttr "groupParts44.og" "groupParts45.ig";
connectAttr "groupId71.id" "groupParts45.gi";
connectAttr "polySurfaceShape19.o" "polyUnite8.ip[0]";
connectAttr "polySurfaceShape20.o" "polyUnite8.ip[1]";
connectAttr "polySurfaceShape21.o" "polyUnite8.ip[2]";
connectAttr "polySurfaceShape22.o" "polyUnite8.ip[3]";
connectAttr "polySurfaceShape23.o" "polyUnite8.ip[4]";
connectAttr "polySurfaceShape24.o" "polyUnite8.ip[5]";
connectAttr "polySurfaceShape19.wm" "polyUnite8.im[0]";
connectAttr "polySurfaceShape20.wm" "polyUnite8.im[1]";
connectAttr "polySurfaceShape21.wm" "polyUnite8.im[2]";
connectAttr "polySurfaceShape22.wm" "polyUnite8.im[3]";
connectAttr "polySurfaceShape23.wm" "polyUnite8.im[4]";
connectAttr "polySurfaceShape24.wm" "polyUnite8.im[5]";
connectAttr "polyUnite8.out" "groupParts46.ig";
connectAttr "groupId72.id" "groupParts46.gi";
connectAttr "groupParts46.og" "groupParts47.ig";
connectAttr "groupId73.id" "groupParts47.gi";
connectAttr "polyCube6.out" "polyChipOff1.ip";
connectAttr "pCubeShape5.wm" "polyChipOff1.mp";
connectAttr "pCubeShape4.o" "polyBoolOp1.ip[0]";
connectAttr "pCubeShape5.o" "polyBoolOp1.ip[1]";
connectAttr "pCubeShape4.wm" "polyBoolOp1.im[0]";
connectAttr "pCubeShape5.wm" "polyBoolOp1.im[1]";
connectAttr "polyExtrudeFace4.out" "groupParts48.ig";
connectAttr "groupId74.id" "groupParts48.gi";
connectAttr "polyChipOff1.out" "groupParts49.ig";
connectAttr "groupId76.id" "groupParts49.gi";
connectAttr "lambert4.oc" "lambert4SG.ss";
connectAttr "polySurfaceShape31.iog" "lambert4SG.dsm" -na;
connectAttr "lambert4SG.msg" "materialInfo4.sg";
connectAttr "lambert4.msg" "materialInfo4.m";
connectAttr "groupParts47.og" "transformGeometry1.ig";
connectAttr "groupParts45.og" "transformGeometry2.ig";
connectAttr "groupParts42.og" "transformGeometry3.ig";
connectAttr "groupParts3.og" "transformGeometry4.ig";
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "lambert3SG.pa" ":renderPartition.st" -na;
connectAttr "phong1SG.pa" ":renderPartition.st" -na;
connectAttr "lambert4SG.pa" ":renderPartition.st" -na;
connectAttr "pCubeShape4.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape4.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape5.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape5.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "groupId74.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId75.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId76.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId77.msg" ":initialShadingGroup.gn" -na;
connectAttr "lambert2.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert3.msg" ":defaultShaderList1.s" -na;
connectAttr "phong1.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert4.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of house.ma

//Maya ASCII 2018ff09 scene
//Name: L_arm2_GenericLimb.ma
//Last modified: Mon, Aug 17, 2020 05:48:43 PM
//Codeset: 1252
requires maya "2018ff09";
requires "stereoCamera" "10.0";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "3.1.2.1";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2018";
fileInfo "version" "2018";
fileInfo "cutIdentifier" "201903222215-65bada0e52";
fileInfo "osv" "Microsoft Windows 8 Home Premium Edition, 64-bit  (Build 9200)\n";
createNode transform -s -n "persp";
	rename -uid "8E85F343-4434-DF8B-D6DF-D09BF1ED046F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 12.511593220487578 20.828821415612147 19.666332737950228 ;
	setAttr ".r" -type "double3" -26.738352731708641 -338.60000000008159 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "CC6CD94A-4AE6-7032-D86C-E1BA0339723C";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 24.643475069996001;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 4.2957745105629987 11.765840745873401 -4.0245271608891571 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "DF0D0A3E-4C03-7D34-2984-43A2B348B641";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "39E29896-4570-F623-DBEE-1EAB73C80F43";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "AAE691F2-4FAE-1128-FD69-70BAC074DB2A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "F01B45DD-4604-ED7E-6267-6386CB0ABE5F";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "F76068E3-4A11-FD9C-8BEF-AD862E04C6D9";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "933BE522-406C-C082-DA51-53889E1EEBC6";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "guide";
	rename -uid "521F2D27-4ED6-DA1A-3582-928507B18E21";
	addAttr -ci true -sn "part_input" -ln "part_input" -dt "string";
	addAttr -ci true -sn "follow_IK" -ln "follow_IK" -dt "string";
	addAttr -ci true -sn "follow_PV" -ln "follow_PV" -dt "string";
	addAttr -ci true -sn "follow_IKin" -ln "follow_IKin" -dt "string";
	setAttr -cb on ".part_input" -type "string" "C_torso_part_out";
	setAttr -cb on ".follow_IK" -type "string" "global=global_in, body=C_torso_body_out, chest=C_torso_part_out, clavicle=L_arm_clavicle_part_out";
	setAttr -cb on ".follow_PV" -type "string" "global=global_in, body=C_torso_body_out, chest=C_torso_part_out, hand=L_armIK2_CTL";
	setAttr -cb on ".follow_IKin" -type "string" "IKin=L_hand_knuckle_CTL";
createNode joint -n "limb_clavicle_01_GUIDE" -p "guide";
	rename -uid "C7DB31D8-4EC2-4D18-8CF6-C98B1B70A0A1";
	setAttr ".t" -type "double3" 0.25631935891543178 14.218676662994145 0.59783324021383777 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.9922248401827112 33.051849115841016 3.649322486595862 ;
	setAttr ".radi" 1.407446233689116;
createNode joint -n "limb_clavicle_02_GUIDE" -p "limb_clavicle_01_GUIDE";
	rename -uid "98C87CE6-4639-78BA-A06B-999E0599D376";
	setAttr ".t" -type "double3" 1.6561512326405947 -5.3290705182007514e-15 -5.5511151231257827e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 1.407446233689116;
createNode joint -n "limb_clavicleOrient_GUIDE" -p "limb_clavicle_01_GUIDE";
	rename -uid "4FC7504F-4682-2B78-480B-F8A8B6AFC425";
	setAttr ".t" -type "double3" -1.8987978400719641e-07 -2.9396997547337378e-07 -2.6575115330551569e-08 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -90.000000407016188 -3.791516639546772e-22 4.2117165348778123e-06 ;
	setAttr ".radi" 0.5;
createNode joint -n "limb_clavicleAutoOut_orient_GUIDE" -p "limb_clavicleOrient_GUIDE";
	rename -uid "0F6B41F2-4636-3F33-44D0-179003133C8F";
	setAttr ".t" -type "double3" 4.1078251911130792e-15 3.219646771412954e-15 -2.8421709430404007e-14 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 -7.573348927914779 19.247035386052058 ;
	setAttr ".radi" 1.407446233689116;
createNode joint -n "limb_scapulaAutoOut_orient_GUIDE" -p "limb_clavicleAutoOut_orient_GUIDE";
	rename -uid "E11757A7-4B17-1980-B28C-168C4AE069F0";
	setAttr ".t" -type "double3" 1.5268579506984121 1.8596235662471372e-15 8.1809559127066223e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 1.407446233689116;
createNode joint -n "limb_clavicleAutoIn_orient_GUIDE" -p "limb_clavicleOrient_GUIDE";
	rename -uid "E336F21C-4032-F5C8-0E02-918E87720A94";
	setAttr ".t" -type "double3" 4.4408920985006262e-15 3.1086244689504383e-15 -2.8421709430404007e-14 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -1.7598794798104107 -7.3671926084151389 -21.845968788246591 ;
	setAttr ".radi" 1.407446233689116;
createNode joint -n "limb_scapulaAutoIn_orient_GUIDE" -p "limb_clavicleAutoIn_orient_GUIDE";
	rename -uid "21D192C2-4D4B-BB82-E69E-C4AFC382A95E";
	setAttr ".t" -type "double3" 1.526857950698421 -5.3568260938163803e-15 2.8518853945058709e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 1.407446233689116;
createNode joint -n "limb_clavicleAutoDown_orient_GUIDE" -p "limb_clavicleOrient_GUIDE";
	rename -uid "9FDB800E-4909-1A24-9BE4-6FB02819CC66";
	setAttr ".t" -type "double3" 3.9968028886505635e-15 3.3306690738754696e-15 -3.0198066269804258e-14 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 37.045185140299836 0 ;
	setAttr ".radi" 1.407446233689116;
createNode joint -n "limb_scapulaAutoDown_orient_GUIDE" -p "limb_clavicleAutoDown_orient_GUIDE";
	rename -uid "8B4526FA-4532-E47A-A360-44BF3C8303DC";
	setAttr ".t" -type "double3" 1.5268579506984041 5.2735593669694936e-16 2.8518853945058709e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 1.407446233689116;
createNode joint -n "limb_clavicleAutoUp_orient_GUIDE" -p "limb_clavicleOrient_GUIDE";
	rename -uid "3FAE5AC9-45AC-F314-5BCA-4EA85B32563A";
	setAttr ".t" -type "double3" 4.1078251911130792e-15 3.219646771412954e-15 -2.8421709430404007e-14 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 -19.063754200228725 0 ;
	setAttr ".radi" 1.407446233689116;
createNode joint -n "limb_scapulaAutoUp_orient_GUIDE" -p "limb_clavicleAutoUp_orient_GUIDE";
	rename -uid "CF22D1CC-4E7C-6D99-FDF9-C1B71DF2DC53";
	setAttr ".t" -type "double3" 1.5268579506984263 -2.9143354396410359e-15 -4.253541963095131e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 1.407446233689116;
createNode transform -n "limb_PV_FOL_GRP" -p "guide";
	rename -uid "71384529-4041-6585-8E52-3F872D7AB924";
createNode transform -n "limb_PV_loc" -p "limb_PV_FOL_GRP";
	rename -uid "70B4218E-49A3-B311-836C-35B45802F49F";
	addAttr -ci true -sn "follow_global" -ln "follow_global" -dt "string";
	addAttr -ci true -sn "follow_body" -ln "follow_body" -dt "string";
	addAttr -ci true -sn "follow_chest" -ln "follow_chest" -dt "string";
	addAttr -ci true -sn "follow_hand" -ln "follow_hand" -dt "string";
	setAttr ".t" -type "double3" -4.9960036108131926e-16 3.9294298723081016 1.3322676295501878e-15 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000004 1 ;
	setAttr -cb on ".follow_global" -type "string" "global_in";
	setAttr -cb on ".follow_body" -type "string" "C_torso_body_out";
	setAttr -cb on ".follow_chest" -type "string" "C_torso_part_out";
	setAttr -cb on ".follow_hand" -type "string" "L_armIK2_CTL";
createNode locator -n "limb_PV_locShape" -p "limb_PV_loc";
	rename -uid "21098965-4530-CB13-B53B-F98A74DCA449";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
createNode joint -n "limb_PV_GUIDE" -p "limb_PV_loc";
	rename -uid "1112F640-46EA-529C-8D58-AE94BB7A03D7";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.5;
createNode joint -n "limb_PV_end" -p "limb_PV_GUIDE";
	rename -uid "8266846B-4293-EF47-EFB4-B48650583F60";
	setAttr ".t" -type "double3" 1 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.5;
createNode parentConstraint -n "plane01_0_FOL_PAC" -p "limb_PV_FOL_GRP";
	rename -uid "6BCDCC11-458F-544D-E5A0-7283665176BA";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "plane01_0_FOLW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 8.8817841970012523e-16 2.2204460492503131e-16 
		-1.7763568394002505e-15 ;
	setAttr ".tg[0].tor" -type "double3" 179.99999999999943 6.5598940305185035e-15 1.0515719567635882 ;
	setAttr ".lr" -type "double3" 261.64640397850678 -4.3468045645095925 -45.517801484109242 ;
	setAttr ".rst" -type "double3" 3.5320184191278097 12.371875013774567 -0.14914287151074757 ;
	setAttr ".rsrr" -type "double3" 261.64640397850678 -4.3468045645095863 -45.517801484109199 ;
	setAttr -k on ".w0";
createNode transform -n "static_GRP" -p "guide";
	rename -uid "4E699DEF-407E-93C3-3A48-D6A827727479";
createNode transform -n "CLU_GRP" -p "static_GRP";
	rename -uid "9A2C4D6F-40DF-20EC-C8F3-E1951CFD164B";
	setAttr ".v" no;
createNode transform -n "cluster1Handle" -p "CLU_GRP";
	rename -uid "81934275-4EEC-2FD7-2321-2A880BBE4D60";
	setAttr ".rp" -type "double3" -0.5 3.061616997868383e-17 -0.5 ;
	setAttr ".sp" -type "double3" -0.5 3.061616997868383e-17 -0.5 ;
createNode clusterHandle -n "cluster1HandleShape" -p "cluster1Handle";
	rename -uid "E3EBEE04-439E-FECF-8D75-54B07FF5E4E2";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" -0.5 3.061616997868383e-17 -0.5 ;
createNode parentConstraint -n "limb_01_GUIDE_PAC" -p "cluster1Handle";
	rename -uid "B2A50199-4DD0-4CBB-967C-BB8E53EB5B2B";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "limb_01_GUIDEW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -98.468410864139116 10.358766670313232 -47.688981661703778 ;
	setAttr ".rst" -type "double3" 2.1416530869066022 14.3070318094782 0.19457207335409255 ;
	setAttr ".rsrr" -type "double3" -98.468410864139102 10.358766670313232 -47.688981661703764 ;
	setAttr -k on ".w0";
createNode transform -n "cluster2Handle" -p "CLU_GRP";
	rename -uid "A877033B-4928-06CF-8AB6-0C9EEC1D876F";
	setAttr ".rp" -type "double3" 0.5 3.061616997868383e-17 -0.5 ;
	setAttr ".sp" -type "double3" 0.5 3.061616997868383e-17 -0.5 ;
createNode clusterHandle -n "cluster2HandleShape" -p "cluster2Handle";
	rename -uid "F0C305AA-43F3-CDC0-28CF-17B08C133499";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 0.5 3.061616997868383e-17 -0.5 ;
createNode parentConstraint -n "limb_03_GUIDE_PAC" -p "cluster2Handle";
	rename -uid "1A2D0F23-413A-34AF-B902-EBA0ED2BB30D";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "limb_03_GUIDEW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -98.815510567967351 -19.045905588479787 -43.258274310434857 ;
	setAttr ".rst" -type "double3" 4.9223837513490141 10.436718218070931 0.50714218362441232 ;
	setAttr ".rsrr" -type "double3" -98.815510567967337 -19.045905588479794 -43.258274310434835 ;
	setAttr -k on ".w0";
createNode transform -n "cluster3Handle" -p "CLU_GRP";
	rename -uid "BD2DDDA6-45F8-1AE6-0DEA-0A958E8A80D5";
	setAttr ".s" -type "double3" 9.9999999999999998e-13 9.9999999999999998e-13 9.9999999999999998e-13 ;
	setAttr ".rp" -type "double3" 0 -3.061616997868383e-17 0.5 ;
	setAttr ".sp" -type "double3" 0 -3.061616997868383e-17 0.5 ;
createNode clusterHandle -n "cluster3HandleShape" -p "cluster3Handle";
	rename -uid "9CB40DB8-43AC-BAAD-7EFB-30AF56A223FF";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 0 -3.061616997868383e-17 0.5 ;
createNode parentConstraint -n "limb_02_GUIDE_PAC" -p "cluster3Handle";
	rename -uid "FB561A95-4628-5EFB-30BE-29A5DDAEDAAF";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "limb_02_GUIDEW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -98.815510567967365 -19.045905588479787 -43.258274310434857 ;
	setAttr ".rst" -type "double3" 3.6261838208930399 12.126903399872599 -1.3443136125124062 ;
	setAttr ".rsrr" -type "double3" -98.815510567967337 -19.045905588479791 -43.258274310434849 ;
	setAttr -k on ".w0";
createNode transform -n "PV_SRF" -p "static_GRP";
	rename -uid "F76F62C9-40F2-4B68-2F93-679B82919F2F";
	setAttr ".v" no;
createNode nurbsSurface -n "PV_SRFShape" -p "PV_SRF";
	rename -uid "0C59A95F-41BD-B62C-8A4C-C6BEAD214198";
	setAttr -k off ".v";
	setAttr -s 8 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".tw" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode nurbsSurface -n "PV_SRFShape1Orig" -p "PV_SRF";
	rename -uid "8C8D5E6C-4F53-E5FB-58A7-4D97B7A84542";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".tw" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
createNode transform -n "PV_FOL" -p "static_GRP";
	rename -uid "3C5DA928-4DE2-5928-0724-25B993C78CAE";
	setAttr ".v" no;
	setAttr ".it" no;
createNode follicle -n "PV_FOLShape" -p "PV_FOL";
	rename -uid "E0E65682-4021-9D0E-883D-36A796A3FD02";
	setAttr -k off ".v";
	setAttr ".pu" 0.5;
	setAttr ".pv" 1;
	setAttr -s 2 ".sts[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".cws[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".ats[0:1]"  0 1 3 1 0.2 3;
createNode transform -n "limb_01_GUIDE_GRP" -p "guide";
	rename -uid "AC488105-444C-195B-CA23-86843D7B7078";
	setAttr ".r" -type "double3" -98.468410864139102 10.358766670313232 -47.688981661703764 ;
createNode joint -n "limb_01_GUIDE" -p "limb_01_GUIDE_GRP";
	rename -uid "5472FB8A-4A4B-2E4C-72CF-1789DF7ED0D2";
	setAttr ".t" -type "double3" 0 1.1102230246251565e-16 -1.7763568394002505e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -1.1131941385122312e-14 -4.7708320221952752e-15 7.9513867036587919e-15 ;
	setAttr ".radi" 1.8143923540027047;
createNode joint -n "limb_02_GUIDE" -p "limb_01_GUIDE";
	rename -uid "FA61CC0A-4FF3-956B-C051-24A1AB37DBCA";
	setAttr ".t" -type "double3" 2.9969517678698141 -2.7755575615628914e-16 8.8817841970012523e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -29.727349918769988 ;
	setAttr ".radi" 1.8438557821668482;
createNode joint -n "limb_03_GUIDE" -p "limb_02_GUIDE";
	rename -uid "09567907-4B41-36F2-CD08-AE9A407DE793";
	addAttr -ci true -sn "follow_global" -ln "follow_global" -dt "string";
	addAttr -ci true -sn "follow_body" -ln "follow_body" -dt "string";
	addAttr -ci true -sn "follow_chest" -ln "follow_chest" -dt "string";
	addAttr -ci true -sn "follow_clavicle" -ln "follow_clavicle" -dt "string";
	setAttr ".t" -type "double3" 2.6092215528250886 -1.3322676295501878e-15 -7.1054273576010019e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 1.8438557821668482;
	setAttr -cb on ".follow_global" -type "string" "global_in";
	setAttr -cb on ".follow_body" -type "string" "C_torso_body_out";
	setAttr -cb on ".follow_chest" -type "string" "C_torso_part_out";
	setAttr -cb on ".follow_clavicle" -type "string" "L_arm_clavicle_part_out";
createNode pointConstraint -n "limb_clavicle_02_GUIDE_POC" -p "limb_01_GUIDE_GRP";
	rename -uid "B4867E36-46DC-E22E-2B57-72A25D6FCA43";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "limb_clavicle_02_GUIDEW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".o" -type "double3" 0 0 -1.1102230246251565e-16 ;
	setAttr ".rst" -type "double3" 1.6416530869066022 14.3070318094782 -0.30542792664590745 ;
	setAttr -k on ".w0";
createNode transform -n "limb_scapular_01_GUIDE_GRP" -p "guide";
	rename -uid "AAA81578-4A03-854F-39D5-78BF6437112D";
	setAttr ".r" -type "double3" 3.9696110698324327 152.65141260705437 18.756404942384702 ;
createNode joint -n "limb_scapular_01_GUIDE" -p "limb_scapular_01_GUIDE_GRP";
	rename -uid "B85F0E92-4CE0-3B3F-3F66-86922D4EF125";
	setAttr ".t" -type "double3" 8.8817841970012523e-16 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 3.1805546814635168e-15 3.1805546814635183e-15 1.5902773407317592e-15 ;
	setAttr ".radi" 1.8143923540027047;
createNode joint -n "limb_scapular_02_GUIDE" -p "limb_scapular_01_GUIDE";
	rename -uid "A4C5E675-4A03-27F5-2475-00B1CFC5F8E6";
	setAttr ".t" -type "double3" 1.6735356985818557 -1.7763568394002505e-15 -4.4408920985006262e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 1.8438557821668482;
createNode pointConstraint -n "limb_clavicle_02_GUIDE_POC" -p "limb_scapular_01_GUIDE_GRP";
	rename -uid "EE72CD77-4D90-24D2-BCD3-64B45CA6480D";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "limb_clavicle_02_GUIDEW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".o" -type "double3" -2.2204460492503131e-16 1.7763568394002505e-15 -5.5511151231257827e-17 ;
	setAttr ".rst" -type "double3" 1.6416530869066019 14.307031809478202 -0.3054279266459074 ;
	setAttr -k on ".w0";
createNode transform -n "limb_clavicle_CTL_GUIDE_GRP" -p "guide";
	rename -uid "5092753C-4446-FA11-7CAE-0D83EC4E0ED5";
createNode transform -n "limb_clavicle_CTL_loc" -p "limb_clavicle_CTL_GUIDE_GRP";
	rename -uid "5A105E61-4731-4544-9B0A-B4AA6AD10FBF";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode locator -n "limb_clavicle_CTL_locShape" -p "limb_clavicle_CTL_loc";
	rename -uid "E748E08F-4139-BA3B-823F-078D08B25478";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
createNode joint -n "limb_clavicle_CTL_GUIDE" -p "limb_clavicle_CTL_loc";
	rename -uid "12E6EDFB-4750-CB3D-3BA9-4EA09B8F04AC";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.5;
createNode joint -n "limb_clavicle_CTL_end" -p "limb_clavicle_CTL_GUIDE";
	rename -uid "DE961F47-4109-2740-5ADB-19A9E46A6540";
	setAttr ".t" -type "double3" 1 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.5;
createNode pointConstraint -n "limb_clavicle_02_GUIDE_POC" -p "limb_clavicle_CTL_GUIDE_GRP";
	rename -uid "70EBCC3F-4DB2-E994-E87F-C1A751F0EF24";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "limb_clavicle_02_GUIDEW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 1.6416530869066022 14.3070318094782 -0.30542792664590734 ;
	setAttr -k on ".w0";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "A7A32208-4795-6BED-E484-B49179D17785";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "2FD82D37-4F89-AB59-AB4D-969BCADE7107";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "7D36A281-4EB5-5247-1039-55984B211895";
createNode displayLayerManager -n "layerManager";
	rename -uid "E39F48B2-4F6A-BC3F-7318-6B8F4EA806D3";
createNode displayLayer -n "defaultLayer";
	rename -uid "0388A984-43AD-E2DE-5891-01AF3C8D0CA3";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "B500D58F-4C76-E32F-DE02-11B736E10BBC";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "7313D7BD-43D2-09C2-F32E-9295CE05FF49";
	setAttr ".g" yes;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "79F0D85E-4360-0809-2463-7C906BABA7E3";
	setAttr ".version" -type "string" "3.1.2.1";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "7503180A-4D44-A5F6-B1BB-8BB1A79C54AB";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "A68C7887-4CF9-527C-D46A-BD86B51E238C";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "3AF13BE4-4E39-E638-34CA-D48FA9ADFC43";
	setAttr ".output_mode" 0;
	setAttr ".ai_translator" -type "string" "maya";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "041ED933-4174-CFAB-51E9-00B901A406B8";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n"
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1010\n            -height 720\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n"
		+ "            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n"
		+ "            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n"
		+ "            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n"
		+ "                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n"
		+ "                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -autoFitTime 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n"
		+ "                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n"
		+ "            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n"
		+ "                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n"
		+ "                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n"
		+ "                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n"
		+ "\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n"
		+ "                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n"
		+ "                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n"
		+ "                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n"
		+ "                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n"
		+ "                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1010\\n    -height 720\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1010\\n    -height 720\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 1 -size 10 -divisions 1 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "43C37C8F-4BED-05EA-C8C9-1FBA9C1056AD";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "2C51A550-4B4B-0234-FCFC-DBAC0EF10018";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -73.809520876596963 22.619046720247454 ;
	setAttr ".tgi[0].vh" -type "double2" 72.619044733426037 123.80951888977556 ;
createNode makeNurbPlane -n "makeNurbPlane1";
	rename -uid "1486D402-4B40-3094-44C9-4DB29D767D96";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".d" 1;
createNode cluster -n "cluster1";
	rename -uid "DB854BE0-4C59-F49E-C85E-569F7426B6D5";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode tweak -n "tweak1";
	rename -uid "830B8E30-45D0-2CD1-F60C-219C0EAAA9AF";
createNode objectSet -n "cluster1Set";
	rename -uid "6D10F7AF-4345-BC2F-D8E1-39A34E45E1D2";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "cluster1GroupId";
	rename -uid "DB74D01C-48A1-E4D8-9613-86BC36A21786";
	setAttr ".ihi" 0;
createNode groupParts -n "cluster1GroupParts";
	rename -uid "420BE7E2-43CE-013E-67BD-E9AA0A5EC358";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[0][1]";
createNode objectSet -n "tweakSet1";
	rename -uid "4EEBA872-4860-A974-95D5-C79E368DE1C2";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId2";
	rename -uid "5A1009D7-4422-9B00-BE0F-1188103A85F5";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "46701F3F-4FEE-71D6-B25D-1998ABE8914B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*][*]";
createNode cluster -n "cluster2";
	rename -uid "2407A67E-4F7E-99FA-46E4-40BDA4955DDD";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode objectSet -n "cluster2Set";
	rename -uid "1CD54D5F-472C-7A3D-88AC-D4B0642253E8";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "cluster2GroupId";
	rename -uid "74A3596C-4AC7-3089-8098-8399568DA608";
	setAttr ".ihi" 0;
createNode groupParts -n "cluster2GroupParts";
	rename -uid "47CF2050-4068-1F32-1E61-19AEB9B5E2DB";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[1][1]";
createNode cluster -n "cluster3";
	rename -uid "482B2620-4F65-D9E5-052B-DE86F15BD0E6";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode objectSet -n "cluster3Set";
	rename -uid "14A4E327-488F-02B0-A291-41B76EEF6CE7";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "cluster3GroupId";
	rename -uid "4878A859-4D4C-082E-AFED-80A8FC12D063";
	setAttr ".ihi" 0;
createNode groupParts -n "cluster3GroupParts";
	rename -uid "C787EBD8-40C3-A0E0-1739-598CB68C97F5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "cv[1][0]" "cv[0][0]";
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "4CD9D41C-4808-EE46-1579-7EAFAA9B240B";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -472.53961242245572 -287.10971395151608 ;
	setAttr ".tgi[0].vh" -type "double2" 484.60321787326808 298.60455533392678 ;
	setAttr -s 3 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 235.04200744628906;
	setAttr ".tgi[0].ni[0].y" -81.596633911132813;
	setAttr ".tgi[0].ni[0].nvs" 18304;
	setAttr ".tgi[0].ni[1].x" -84.285713195800781;
	setAttr ".tgi[0].ni[1].y" 18.571428298950195;
	setAttr ".tgi[0].ni[1].nvs" 18304;
	setAttr ".tgi[0].ni[2].x" -339.74789428710938;
	setAttr ".tgi[0].ni[2].y" 93.781509399414063;
	setAttr ".tgi[0].ni[2].nvs" 18304;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".etmr" no;
	setAttr ".tmr" 4096;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 4 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".ren" -type "string" "arnold";
	setAttr ".outf" 51;
	setAttr ".imfkey" -type "string" "exr";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "limb_clavicle_01_GUIDE.s" "limb_clavicle_02_GUIDE.is";
connectAttr "limb_clavicle_01_GUIDE.s" "limb_clavicleOrient_GUIDE.is";
connectAttr "limb_clavicleOrient_GUIDE.s" "limb_clavicleAutoOut_orient_GUIDE.is"
		;
connectAttr "limb_clavicleAutoOut_orient_GUIDE.s" "limb_scapulaAutoOut_orient_GUIDE.is"
		;
connectAttr "limb_clavicleOrient_GUIDE.s" "limb_clavicleAutoIn_orient_GUIDE.is";
connectAttr "limb_clavicleAutoIn_orient_GUIDE.s" "limb_scapulaAutoIn_orient_GUIDE.is"
		;
connectAttr "limb_clavicleOrient_GUIDE.s" "limb_clavicleAutoDown_orient_GUIDE.is"
		;
connectAttr "limb_clavicleAutoDown_orient_GUIDE.s" "limb_scapulaAutoDown_orient_GUIDE.is"
		;
connectAttr "limb_clavicleOrient_GUIDE.s" "limb_clavicleAutoUp_orient_GUIDE.is";
connectAttr "limb_clavicleAutoUp_orient_GUIDE.s" "limb_scapulaAutoUp_orient_GUIDE.is"
		;
connectAttr "plane01_0_FOL_PAC.ctx" "limb_PV_FOL_GRP.tx";
connectAttr "plane01_0_FOL_PAC.cty" "limb_PV_FOL_GRP.ty";
connectAttr "plane01_0_FOL_PAC.ctz" "limb_PV_FOL_GRP.tz";
connectAttr "plane01_0_FOL_PAC.crx" "limb_PV_FOL_GRP.rx";
connectAttr "plane01_0_FOL_PAC.cry" "limb_PV_FOL_GRP.ry";
connectAttr "plane01_0_FOL_PAC.crz" "limb_PV_FOL_GRP.rz";
connectAttr "limb_PV_GUIDE.s" "limb_PV_end.is";
connectAttr "limb_PV_FOL_GRP.ro" "plane01_0_FOL_PAC.cro";
connectAttr "limb_PV_FOL_GRP.pim" "plane01_0_FOL_PAC.cpim";
connectAttr "limb_PV_FOL_GRP.rp" "plane01_0_FOL_PAC.crp";
connectAttr "limb_PV_FOL_GRP.rpt" "plane01_0_FOL_PAC.crt";
connectAttr "PV_FOL.t" "plane01_0_FOL_PAC.tg[0].tt";
connectAttr "PV_FOL.rp" "plane01_0_FOL_PAC.tg[0].trp";
connectAttr "PV_FOL.rpt" "plane01_0_FOL_PAC.tg[0].trt";
connectAttr "PV_FOL.r" "plane01_0_FOL_PAC.tg[0].tr";
connectAttr "PV_FOL.ro" "plane01_0_FOL_PAC.tg[0].tro";
connectAttr "PV_FOL.s" "plane01_0_FOL_PAC.tg[0].ts";
connectAttr "PV_FOL.pm" "plane01_0_FOL_PAC.tg[0].tpm";
connectAttr "plane01_0_FOL_PAC.w0" "plane01_0_FOL_PAC.tg[0].tw";
connectAttr "limb_01_GUIDE_PAC.ctx" "cluster1Handle.tx";
connectAttr "limb_01_GUIDE_PAC.cty" "cluster1Handle.ty";
connectAttr "limb_01_GUIDE_PAC.ctz" "cluster1Handle.tz";
connectAttr "limb_01_GUIDE_PAC.crx" "cluster1Handle.rx";
connectAttr "limb_01_GUIDE_PAC.cry" "cluster1Handle.ry";
connectAttr "limb_01_GUIDE_PAC.crz" "cluster1Handle.rz";
connectAttr "cluster1Handle.ro" "limb_01_GUIDE_PAC.cro";
connectAttr "cluster1Handle.pim" "limb_01_GUIDE_PAC.cpim";
connectAttr "cluster1Handle.rp" "limb_01_GUIDE_PAC.crp";
connectAttr "cluster1Handle.rpt" "limb_01_GUIDE_PAC.crt";
connectAttr "limb_01_GUIDE.t" "limb_01_GUIDE_PAC.tg[0].tt";
connectAttr "limb_01_GUIDE.rp" "limb_01_GUIDE_PAC.tg[0].trp";
connectAttr "limb_01_GUIDE.rpt" "limb_01_GUIDE_PAC.tg[0].trt";
connectAttr "limb_01_GUIDE.r" "limb_01_GUIDE_PAC.tg[0].tr";
connectAttr "limb_01_GUIDE.ro" "limb_01_GUIDE_PAC.tg[0].tro";
connectAttr "limb_01_GUIDE.s" "limb_01_GUIDE_PAC.tg[0].ts";
connectAttr "limb_01_GUIDE.pm" "limb_01_GUIDE_PAC.tg[0].tpm";
connectAttr "limb_01_GUIDE.jo" "limb_01_GUIDE_PAC.tg[0].tjo";
connectAttr "limb_01_GUIDE.ssc" "limb_01_GUIDE_PAC.tg[0].tsc";
connectAttr "limb_01_GUIDE.is" "limb_01_GUIDE_PAC.tg[0].tis";
connectAttr "limb_01_GUIDE_PAC.w0" "limb_01_GUIDE_PAC.tg[0].tw";
connectAttr "limb_03_GUIDE_PAC.ctx" "cluster2Handle.tx";
connectAttr "limb_03_GUIDE_PAC.cty" "cluster2Handle.ty";
connectAttr "limb_03_GUIDE_PAC.ctz" "cluster2Handle.tz";
connectAttr "limb_03_GUIDE_PAC.crx" "cluster2Handle.rx";
connectAttr "limb_03_GUIDE_PAC.cry" "cluster2Handle.ry";
connectAttr "limb_03_GUIDE_PAC.crz" "cluster2Handle.rz";
connectAttr "cluster2Handle.ro" "limb_03_GUIDE_PAC.cro";
connectAttr "cluster2Handle.pim" "limb_03_GUIDE_PAC.cpim";
connectAttr "cluster2Handle.rp" "limb_03_GUIDE_PAC.crp";
connectAttr "cluster2Handle.rpt" "limb_03_GUIDE_PAC.crt";
connectAttr "limb_03_GUIDE.t" "limb_03_GUIDE_PAC.tg[0].tt";
connectAttr "limb_03_GUIDE.rp" "limb_03_GUIDE_PAC.tg[0].trp";
connectAttr "limb_03_GUIDE.rpt" "limb_03_GUIDE_PAC.tg[0].trt";
connectAttr "limb_03_GUIDE.r" "limb_03_GUIDE_PAC.tg[0].tr";
connectAttr "limb_03_GUIDE.ro" "limb_03_GUIDE_PAC.tg[0].tro";
connectAttr "limb_03_GUIDE.s" "limb_03_GUIDE_PAC.tg[0].ts";
connectAttr "limb_03_GUIDE.pm" "limb_03_GUIDE_PAC.tg[0].tpm";
connectAttr "limb_03_GUIDE.jo" "limb_03_GUIDE_PAC.tg[0].tjo";
connectAttr "limb_03_GUIDE.ssc" "limb_03_GUIDE_PAC.tg[0].tsc";
connectAttr "limb_03_GUIDE.is" "limb_03_GUIDE_PAC.tg[0].tis";
connectAttr "limb_03_GUIDE_PAC.w0" "limb_03_GUIDE_PAC.tg[0].tw";
connectAttr "limb_02_GUIDE_PAC.ctx" "cluster3Handle.tx";
connectAttr "limb_02_GUIDE_PAC.cty" "cluster3Handle.ty";
connectAttr "limb_02_GUIDE_PAC.ctz" "cluster3Handle.tz";
connectAttr "limb_02_GUIDE_PAC.crx" "cluster3Handle.rx";
connectAttr "limb_02_GUIDE_PAC.cry" "cluster3Handle.ry";
connectAttr "limb_02_GUIDE_PAC.crz" "cluster3Handle.rz";
connectAttr "cluster3Handle.ro" "limb_02_GUIDE_PAC.cro";
connectAttr "cluster3Handle.pim" "limb_02_GUIDE_PAC.cpim";
connectAttr "cluster3Handle.rp" "limb_02_GUIDE_PAC.crp";
connectAttr "cluster3Handle.rpt" "limb_02_GUIDE_PAC.crt";
connectAttr "limb_02_GUIDE.t" "limb_02_GUIDE_PAC.tg[0].tt";
connectAttr "limb_02_GUIDE.rp" "limb_02_GUIDE_PAC.tg[0].trp";
connectAttr "limb_02_GUIDE.rpt" "limb_02_GUIDE_PAC.tg[0].trt";
connectAttr "limb_02_GUIDE.r" "limb_02_GUIDE_PAC.tg[0].tr";
connectAttr "limb_02_GUIDE.ro" "limb_02_GUIDE_PAC.tg[0].tro";
connectAttr "limb_02_GUIDE.s" "limb_02_GUIDE_PAC.tg[0].ts";
connectAttr "limb_02_GUIDE.pm" "limb_02_GUIDE_PAC.tg[0].tpm";
connectAttr "limb_02_GUIDE.jo" "limb_02_GUIDE_PAC.tg[0].tjo";
connectAttr "limb_02_GUIDE.ssc" "limb_02_GUIDE_PAC.tg[0].tsc";
connectAttr "limb_02_GUIDE.is" "limb_02_GUIDE_PAC.tg[0].tis";
connectAttr "limb_02_GUIDE_PAC.w0" "limb_02_GUIDE_PAC.tg[0].tw";
connectAttr "cluster1GroupId.id" "PV_SRFShape.iog.og[0].gid";
connectAttr "cluster1Set.mwc" "PV_SRFShape.iog.og[0].gco";
connectAttr "groupId2.id" "PV_SRFShape.iog.og[1].gid";
connectAttr "tweakSet1.mwc" "PV_SRFShape.iog.og[1].gco";
connectAttr "cluster2GroupId.id" "PV_SRFShape.iog.og[2].gid";
connectAttr "cluster2Set.mwc" "PV_SRFShape.iog.og[2].gco";
connectAttr "cluster3GroupId.id" "PV_SRFShape.iog.og[3].gid";
connectAttr "cluster3Set.mwc" "PV_SRFShape.iog.og[3].gco";
connectAttr "cluster3.og[0]" "PV_SRFShape.cr";
connectAttr "tweak1.pl[0].cp[0]" "PV_SRFShape.twl";
connectAttr "makeNurbPlane1.os" "PV_SRFShape1Orig.cr";
connectAttr "PV_FOLShape.ot" "PV_FOL.t";
connectAttr "PV_FOLShape.or" "PV_FOL.r";
connectAttr "PV_SRFShape.l" "PV_FOLShape.is";
connectAttr "PV_SRFShape.wm" "PV_FOLShape.iwm";
connectAttr "|guide|limb_01_GUIDE_GRP|limb_clavicle_02_GUIDE_POC.ctx" "limb_01_GUIDE_GRP.tx"
		;
connectAttr "|guide|limb_01_GUIDE_GRP|limb_clavicle_02_GUIDE_POC.cty" "limb_01_GUIDE_GRP.ty"
		;
connectAttr "|guide|limb_01_GUIDE_GRP|limb_clavicle_02_GUIDE_POC.ctz" "limb_01_GUIDE_GRP.tz"
		;
connectAttr "limb_01_GUIDE.s" "limb_02_GUIDE.is";
connectAttr "limb_02_GUIDE.s" "limb_03_GUIDE.is";
connectAttr "limb_01_GUIDE_GRP.pim" "|guide|limb_01_GUIDE_GRP|limb_clavicle_02_GUIDE_POC.cpim"
		;
connectAttr "limb_01_GUIDE_GRP.rp" "|guide|limb_01_GUIDE_GRP|limb_clavicle_02_GUIDE_POC.crp"
		;
connectAttr "limb_01_GUIDE_GRP.rpt" "|guide|limb_01_GUIDE_GRP|limb_clavicle_02_GUIDE_POC.crt"
		;
connectAttr "limb_clavicle_02_GUIDE.t" "|guide|limb_01_GUIDE_GRP|limb_clavicle_02_GUIDE_POC.tg[0].tt"
		;
connectAttr "limb_clavicle_02_GUIDE.rp" "|guide|limb_01_GUIDE_GRP|limb_clavicle_02_GUIDE_POC.tg[0].trp"
		;
connectAttr "limb_clavicle_02_GUIDE.rpt" "|guide|limb_01_GUIDE_GRP|limb_clavicle_02_GUIDE_POC.tg[0].trt"
		;
connectAttr "limb_clavicle_02_GUIDE.pm" "|guide|limb_01_GUIDE_GRP|limb_clavicle_02_GUIDE_POC.tg[0].tpm"
		;
connectAttr "|guide|limb_01_GUIDE_GRP|limb_clavicle_02_GUIDE_POC.w0" "|guide|limb_01_GUIDE_GRP|limb_clavicle_02_GUIDE_POC.tg[0].tw"
		;
connectAttr "|guide|limb_scapular_01_GUIDE_GRP|limb_clavicle_02_GUIDE_POC.ctx" "limb_scapular_01_GUIDE_GRP.tx"
		;
connectAttr "|guide|limb_scapular_01_GUIDE_GRP|limb_clavicle_02_GUIDE_POC.cty" "limb_scapular_01_GUIDE_GRP.ty"
		;
connectAttr "|guide|limb_scapular_01_GUIDE_GRP|limb_clavicle_02_GUIDE_POC.ctz" "limb_scapular_01_GUIDE_GRP.tz"
		;
connectAttr "limb_scapular_01_GUIDE.s" "limb_scapular_02_GUIDE.is";
connectAttr "limb_scapular_01_GUIDE_GRP.pim" "|guide|limb_scapular_01_GUIDE_GRP|limb_clavicle_02_GUIDE_POC.cpim"
		;
connectAttr "limb_scapular_01_GUIDE_GRP.rp" "|guide|limb_scapular_01_GUIDE_GRP|limb_clavicle_02_GUIDE_POC.crp"
		;
connectAttr "limb_scapular_01_GUIDE_GRP.rpt" "|guide|limb_scapular_01_GUIDE_GRP|limb_clavicle_02_GUIDE_POC.crt"
		;
connectAttr "limb_clavicle_02_GUIDE.t" "|guide|limb_scapular_01_GUIDE_GRP|limb_clavicle_02_GUIDE_POC.tg[0].tt"
		;
connectAttr "limb_clavicle_02_GUIDE.rp" "|guide|limb_scapular_01_GUIDE_GRP|limb_clavicle_02_GUIDE_POC.tg[0].trp"
		;
connectAttr "limb_clavicle_02_GUIDE.rpt" "|guide|limb_scapular_01_GUIDE_GRP|limb_clavicle_02_GUIDE_POC.tg[0].trt"
		;
connectAttr "limb_clavicle_02_GUIDE.pm" "|guide|limb_scapular_01_GUIDE_GRP|limb_clavicle_02_GUIDE_POC.tg[0].tpm"
		;
connectAttr "|guide|limb_scapular_01_GUIDE_GRP|limb_clavicle_02_GUIDE_POC.w0" "|guide|limb_scapular_01_GUIDE_GRP|limb_clavicle_02_GUIDE_POC.tg[0].tw"
		;
connectAttr "|guide|limb_clavicle_CTL_GUIDE_GRP|limb_clavicle_02_GUIDE_POC.ctx" "limb_clavicle_CTL_GUIDE_GRP.tx"
		;
connectAttr "|guide|limb_clavicle_CTL_GUIDE_GRP|limb_clavicle_02_GUIDE_POC.cty" "limb_clavicle_CTL_GUIDE_GRP.ty"
		;
connectAttr "|guide|limb_clavicle_CTL_GUIDE_GRP|limb_clavicle_02_GUIDE_POC.ctz" "limb_clavicle_CTL_GUIDE_GRP.tz"
		;
connectAttr "limb_clavicle_CTL_GUIDE.s" "limb_clavicle_CTL_end.is";
connectAttr "limb_clavicle_CTL_GUIDE_GRP.pim" "|guide|limb_clavicle_CTL_GUIDE_GRP|limb_clavicle_02_GUIDE_POC.cpim"
		;
connectAttr "limb_clavicle_CTL_GUIDE_GRP.rp" "|guide|limb_clavicle_CTL_GUIDE_GRP|limb_clavicle_02_GUIDE_POC.crp"
		;
connectAttr "limb_clavicle_CTL_GUIDE_GRP.rpt" "|guide|limb_clavicle_CTL_GUIDE_GRP|limb_clavicle_02_GUIDE_POC.crt"
		;
connectAttr "limb_clavicle_02_GUIDE.t" "|guide|limb_clavicle_CTL_GUIDE_GRP|limb_clavicle_02_GUIDE_POC.tg[0].tt"
		;
connectAttr "limb_clavicle_02_GUIDE.rp" "|guide|limb_clavicle_CTL_GUIDE_GRP|limb_clavicle_02_GUIDE_POC.tg[0].trp"
		;
connectAttr "limb_clavicle_02_GUIDE.rpt" "|guide|limb_clavicle_CTL_GUIDE_GRP|limb_clavicle_02_GUIDE_POC.tg[0].trt"
		;
connectAttr "limb_clavicle_02_GUIDE.pm" "|guide|limb_clavicle_CTL_GUIDE_GRP|limb_clavicle_02_GUIDE_POC.tg[0].tpm"
		;
connectAttr "|guide|limb_clavicle_CTL_GUIDE_GRP|limb_clavicle_02_GUIDE_POC.w0" "|guide|limb_clavicle_CTL_GUIDE_GRP|limb_clavicle_02_GUIDE_POC.tg[0].tw"
		;
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr "cluster1GroupParts.og" "cluster1.ip[0].ig";
connectAttr "cluster1GroupId.id" "cluster1.ip[0].gi";
connectAttr "cluster1Handle.wm" "cluster1.ma";
connectAttr "cluster1HandleShape.x" "cluster1.x";
connectAttr "groupParts2.og" "tweak1.ip[0].ig";
connectAttr "groupId2.id" "tweak1.ip[0].gi";
connectAttr "cluster1GroupId.msg" "cluster1Set.gn" -na;
connectAttr "PV_SRFShape.iog.og[0]" "cluster1Set.dsm" -na;
connectAttr "cluster1.msg" "cluster1Set.ub[0]";
connectAttr "tweak1.og[0]" "cluster1GroupParts.ig";
connectAttr "cluster1GroupId.id" "cluster1GroupParts.gi";
connectAttr "groupId2.msg" "tweakSet1.gn" -na;
connectAttr "PV_SRFShape.iog.og[1]" "tweakSet1.dsm" -na;
connectAttr "tweak1.msg" "tweakSet1.ub[0]";
connectAttr "PV_SRFShape1Orig.ws" "groupParts2.ig";
connectAttr "groupId2.id" "groupParts2.gi";
connectAttr "cluster2GroupParts.og" "cluster2.ip[0].ig";
connectAttr "cluster2GroupId.id" "cluster2.ip[0].gi";
connectAttr "cluster2Handle.wm" "cluster2.ma";
connectAttr "cluster2HandleShape.x" "cluster2.x";
connectAttr "cluster2GroupId.msg" "cluster2Set.gn" -na;
connectAttr "PV_SRFShape.iog.og[2]" "cluster2Set.dsm" -na;
connectAttr "cluster2.msg" "cluster2Set.ub[0]";
connectAttr "cluster1.og[0]" "cluster2GroupParts.ig";
connectAttr "cluster2GroupId.id" "cluster2GroupParts.gi";
connectAttr "cluster3GroupParts.og" "cluster3.ip[0].ig";
connectAttr "cluster3GroupId.id" "cluster3.ip[0].gi";
connectAttr "cluster3Handle.wm" "cluster3.ma";
connectAttr "cluster3HandleShape.x" "cluster3.x";
connectAttr "cluster3GroupId.msg" "cluster3Set.gn" -na;
connectAttr "PV_SRFShape.iog.og[3]" "cluster3Set.dsm" -na;
connectAttr "cluster3.msg" "cluster3Set.ub[0]";
connectAttr "cluster2.og[0]" "cluster3GroupParts.ig";
connectAttr "cluster3GroupId.id" "cluster3GroupParts.gi";
connectAttr "limb_clavicle_CTL_loc.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "limb_clavicle_02_GUIDE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "PV_SRFShape.iog" ":initialShadingGroup.dsm" -na;
// End of L_arm2_GenericLimb.ma

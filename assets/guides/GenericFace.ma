//Maya ASCII 2018ff09 scene
//Name: C_face_GenericFace.ma
//Last modified: Thu, Sep 03, 2020 11:42:35 PM
//Codeset: 1252
requires maya "2018ff09";
requires "stereoCamera" "10.0";
requires "mtoa" "3.1.2.1";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2018";
fileInfo "version" "2018";
fileInfo "cutIdentifier" "201903222215-65bada0e52";
fileInfo "osv" "Microsoft Windows 8 Home Premium Edition, 64-bit  (Build 9200)\n";
createNode transform -n "guide";
	rename -uid "FCAA762D-47ED-F19B-956D-7A9F88D464C8";
	addAttr -ci true -sn "part_input" -ln "part_input" -dt "string";
	addAttr -ci true -sn "follow_head" -ln "follow_head" -dt "string";
	addAttr -ci true -sn "follow_headTop" -ln "follow_headTop" -dt "string";
	addAttr -ci true -sn "follow_headBot" -ln "follow_headBot" -dt "string";
	addAttr -ci true -sn "follow_jaw" -ln "follow_jaw" -dt "string";
	addAttr -ci true -sn "follow_halfJaw" -ln "follow_halfJaw" -dt "string";
	setAttr -cb on ".part_input" -type "string" "C_global2_CTL";
	setAttr -cb on ".follow_head" -type "string" "head=C_head_CTL";
	setAttr -cb on ".follow_headTop" -type "string" "headTop=C_headTop_CTL";
	setAttr -cb on ".follow_headBot" -type "string" "headBot=C_headBot_CTL";
	setAttr -cb on ".follow_jaw" -type "string" "jaw=C_jaw_CTL";
	setAttr -cb on ".follow_halfJaw" -type "string" "halfJaw=C_head_halfJaw_out";
createNode joint -n "C_root_01_GUIDE" -p "guide";
	rename -uid "3A02C5BA-41F9-7502-1E30-B88C8FD9F033";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0 157.20666587409318 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 157.20666587409318 0 1;
createNode joint -n "C_nose_01_GUIDE" -p "guide";
	rename -uid "911CC78A-4C78-7E37-8EB1-F981A5741687";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0 156.38906749812043 12.397754232489698 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 156.38906749812043 12.397754232489698 1;
	setAttr ".radi" 0.5;
	setAttr ".liw" yes;
createNode joint -n "L_nostril_01_GUIDE" -p "C_nose_01_GUIDE";
	rename -uid "997EB333-4BFC-737B-E3D8-D49563234608";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.52844807279351969 -0.20152744792775934 0.44279051822351079 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.52844807279351969 156.18754005019267 12.840544750713208 1;
	setAttr ".radi" 0.5;
	setAttr ".liw" yes;
createNode joint -n "C_noseTip_01_GUIDE" -p "C_nose_01_GUIDE";
	rename -uid "5E51ED4B-4207-52E6-8738-36AA8F127CA5";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0 -0.041949586076924561 0.76575117803980497 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 156.3471179120435 13.163505410529503 1;
	setAttr ".radi" 0.5;
	setAttr ".liw" yes;
createNode transform -n "group2" -p "C_nose_01_GUIDE";
	rename -uid "C7BC21FC-4F07-2D65-A861-688EC112906D";
	setAttr ".s" -type "double3" -1 1 1 ;
createNode joint -n "R_nostril_01_GUIDE" -p "group2";
	rename -uid "0D8A9557-460C-D1CB-6946-2587C9B86497";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.52844807279351969 -0.20152744792775934 0.44279051822351079 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.52844807279351969 156.18754005019267 12.840544750713208 1;
	setAttr ".radi" 0.5;
	setAttr ".liw" yes;
createNode joint -n "C_mouth_01_GUIDE" -p "guide";
	rename -uid "995698CB-42F2-D339-BE3C-B1956059E6DB";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0 152.98991746552807 12.149387586249279 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 152.98991746552807 12.149387586249279 1;
	setAttr ".liw" yes;
createNode joint -n "C_chin_01_GUIDE" -p "guide";
	rename -uid "EF6F9163-4633-4256-1ED8-FD9398E631B4";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0 150.34369654847521 9.5043163817171887 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 150.34369654847521 9.5043163817171887 1;
	setAttr ".liw" yes;
createNode joint -n "L_earBase_01_GUIDE" -p "guide";
	rename -uid "25AF283A-4C7B-7513-60B9-F2A28B890F31";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 7.5981484373562793 159.3541129899549 1.7984633786227919 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 7.5981484373562793 159.3541129899549 1.7984633786227919 1;
	setAttr ".liw" yes;
createNode joint -n "L_ear_01_GUIDE" -p "L_earBase_01_GUIDE";
	rename -uid "251051CD-45EF-8782-8086-C19EE2EBE4BA";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 1.1034341625290605 0.6047716234620566 -2.3974538392896347 ;
	setAttr ".r" -type "double3" -2.4848083448933742e-15 2.3555983109589172e-14 -6.9574633657014427e-15 ;
	setAttr ".jo" -type "double3" 10.932575585423823 -9.5247680504022192 4.2074768007057903 ;
	setAttr ".bps" -type "matrix" 0.98355622752507355 0.07235689678129098 0.16547394593961709 0
		 -0.10333494987457185 0.97690236803269526 0.18703917094162942 0 -0.14811831565024441 -0.20106278327998434 0.9683154040645231 0
		 8.7015825998853398 159.95888461341696 -0.59899046066684281 1;
	setAttr ".liw" yes;
createNode joint -n "L_cheek_01_GUIDE" -p "guide";
	rename -uid "8FFA73CD-4C1E-6519-F590-119BEAAD13EA";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 4.3919240208523682 154.78113555095777 9.2009561579658214 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 4.3919240208523682 154.78113555095777 9.2009561579658214 1;
	setAttr ".liw" yes;
createNode transform -n "R_cheek_01_GUIDE_GRP" -p "guide";
	rename -uid "35D96E55-416F-B236-0513-E2B89F154052";
	setAttr ".s" -type "double3" -1 1 1 ;
createNode joint -n "R_cheek_01_GUIDE" -p "R_cheek_01_GUIDE_GRP";
	rename -uid "EDCB1AF9-4274-2046-E118-43B9B8AECE07";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 4.3919239044189453 154.7811279296875 9.2009563446044922 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 4.3919240208523682 154.78113555095777 9.2009561579658214 1;
	setAttr ".liw" yes;
createNode joint -n "C_headLid_GUIDE" -p "guide";
	rename -uid "5E6EF536-461C-0006-2210-2FB2D1706A35";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0 159.02090556792947 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 159.02090556792947 0 1;
createNode joint -n "L_lidUpperMain_001_GUIDE" -p "C_headLid_GUIDE";
	rename -uid "76E817D8-4E4F-F698-EA15-A39C5F22F89A";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 3.281000000000001 0.99309443207056347 7.6950000000001237 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -141.61991929291307 -69.436150497886615 -21.390233998958557 ;
	setAttr ".bps" -type "matrix" 0.15655020343839998 -0.18230225022454627 0.97069970813143991 0
		 -0.25536595944618862 0.941927815673539 0.21808305027352093 0 -0.95408608655588489 -0.28202460818790687 0.10090520213018983 0
		 3.281000000000001 160.01400000000004 7.6950000000001237 1;
	setAttr ".liw" yes;
createNode joint -n "L_lidUpperMain_002_GUIDE" -p "L_lidUpperMain_001_GUIDE";
	rename -uid "E4F42734-4F4B-7556-0DB5-AFB530D0CD60";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 3.2458985844248645 -0.64165623326113064 -0.46360360597206807 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.1724095225817825e-14 10.453328290403219 4.0427914571785589e-14 ;
	setAttr ".bps" -type "matrix" 0.15655020343839998 -0.18230225022454627 0.97069970813143991 0
		 -0.25536595944618862 0.941927815673539 0.21808305027352093 0 -0.95408608655588489 -0.28202460818790687 0.10090520213018983 0
		 3.0415454380655262 158.30040800083603 10.700020702652576 1;
createNode joint -n "L_lidUpperA_001_GUIDE" -p "C_headLid_GUIDE";
	rename -uid "108BA9C2-4831-DC1A-AE09-1B857E360A63";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 3.281000000000001 0.99309443207056347 7.6950000000001237 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -141.6199192929131 -69.436150497886686 -21.390233998958557 ;
	setAttr ".bps" -type "matrix" 0.15655020343839998 -0.18230225022454627 0.97069970813143991 0
		 -0.25536595944618862 0.941927815673539 0.21808305027352093 0 -0.95408608655588489 -0.28202460818790687 0.10090520213018983 0
		 3.281000000000001 160.01400000000004 7.6950000000001237 1;
	setAttr ".liw" yes;
createNode joint -n "L_lidUpperA_002_GUIDE" -p "L_lidUpperA_001_GUIDE";
	rename -uid "5C78B5D4-4717-AED6-9200-ED9E004271AC";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 3.0120483407058138 -0.511559687982583 1.6902531454771292 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -3.4768006531735618e-14 10.453328290403194 5.3364847234756994e-14 ;
	setAttr ".bps" -type "matrix" 0.15655020343839998 -0.18230225022454627 0.97069970813143991 0
		 -0.25536595944618862 0.941927815673539 0.21808305027352093 0 -0.95408608655588489 -0.28202460818790687 0.10090520213018983 0
		 3.0415454380655262 158.30040800083603 10.700020702652576 1;
createNode joint -n "L_lidUpperB_001_GUIDE" -p "C_headLid_GUIDE";
	rename -uid "B40D1BA4-4BBF-A0F3-8A39-42916E53E2E0";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 3.281000000000001 0.99309443207056347 7.6950000000001237 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -141.61991929291324 -69.436150497886644 -21.390233998958539 ;
	setAttr ".bps" -type "matrix" 0.15655020343840087 -0.18230225022454605 0.97069970813143969 0
		 -0.25536595944618867 0.941927815673539 0.21808305027352087 0 -0.95408608655588445 -0.28202460818790714 0.10090520213019072 0
		 3.281000000000001 160.01400000000004 7.6950000000001237 1;
	setAttr ".liw" yes;
createNode joint -n "L_lidUpperB_002_GUIDE" -p "L_lidUpperB_001_GUIDE";
	rename -uid "8C3E910B-43E9-8B37-443E-9187F320C3D6";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 3.3531237217074992 -1.1763398586207074 0.49698528803075703 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -4.5279264320399868e-14 10.453328290403192 4.0427914571785614e-14 ;
	setAttr ".bps" -type "matrix" 0.15655020343840087 -0.18230225022454605 0.97069970813143969 0
		 -0.25536595944618867 0.941927815673539 0.21808305027352087 0 -0.95408608655588445 -0.28202460818790714 0.10090520213019072 0
		 4.1410977389603882 158.13163966475261 10.454579551527324 1;
	setAttr ".liw" yes;
createNode joint -n "L_lidUpperC_001_GUIDE" -p "C_headLid_GUIDE";
	rename -uid "924A016F-45E2-E1DE-6899-399969C97E63";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 3.281000000000001 0.99309443207056347 7.6950000000001237 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -141.61991929291329 -69.436150497886644 -21.390233998958465 ;
	setAttr ".bps" -type "matrix" 0.15655020343840065 -0.18230225022454619 0.97069970813143969 0
		 -0.25536595944618928 0.94192781567353878 0.21808305027352098 0 -0.95408608655588445 -0.2820246081879077 0.10090520213019039 0
		 3.281000000000001 160.01400000000004 7.6950000000001237 1;
	setAttr ".liw" yes;
createNode joint -n "L_lidUpperC_002_GUIDE" -p "L_lidUpperC_001_GUIDE";
	rename -uid "5DDF44C6-47B8-678B-EBA1-B89688478D13";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 3.2653625287247934 -1.3015523906219357 -0.72655032565310051 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 4.0832193717503474e-14 10.453328290403226 5.0130614069014153e-14 ;
	setAttr ".bps" -type "matrix" 0.15655020343840065 -0.18230225022454619 0.97069970813143969 0
		 -0.25536595944618928 0.94192781567353878 0.21808305027352098 0 -0.95408608655588445 -0.2820246081879077 0.10090520213019039 0
		 5.3386337360094522 158.53520416568756 10.11352558212025 1;
	setAttr ".liw" yes;
createNode joint -n "L_lidUpperD_001_GUIDE" -p "C_headLid_GUIDE";
	rename -uid "4A810E7A-4AAC-54AD-5E57-A0A15C0BF164";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 3.281000000000001 0.99309443207056347 7.6950000000001237 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -141.61991929291321 -69.436150497886644 -21.390233998958557 ;
	setAttr ".bps" -type "matrix" 0.15655020343840054 -0.18230225022454627 0.97069970813143969 0
		 -0.25536595944618862 0.941927815673539 0.21808305027352104 0 -0.95408608655588467 -0.28202460818790698 0.10090520213019039 0
		 3.281000000000001 160.01400000000004 7.6950000000001237 1;
	setAttr ".liw" yes;
createNode joint -n "L_lidUpperD_002_GUIDE" -p "L_lidUpperD_001_GUIDE";
	rename -uid "5BC9EB3E-4CD6-038E-91FF-4FA8B025CF18";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 2.8132630993029402 -0.66520728507097715 -1.8254166152832667 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.697972412014994e-14 10.453328290403196 5.1747730651885558e-14 ;
	setAttr ".bps" -type "matrix" 0.15655020343840054 -0.18230225022454627 0.97069970813143969 0
		 -0.25536595944618862 0.941927815673539 0.21808305027352104 0 -0.95408608655588467 -0.28202460818790698 0.10090520213019039 0
		 5.9737112462988016 159.42421364837645 9.7632134993017985 1;
	setAttr ".liw" yes;
createNode joint -n "L_lidLowerMain_001_GUIDE" -p "C_headLid_GUIDE";
	rename -uid "0A75888F-4810-9C33-5913-FDAF81D26F49";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 3.281000000000001 0.99309443207056347 7.6950000000001237 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 38.380080707086933 -69.436150497886615 -21.390233998958561 ;
	setAttr ".bps" -type "matrix" 0.15655020343839998 -0.18230225022454627 0.97069970813143991 0
		 -0.25536595944618862 0.941927815673539 0.21808305027352093 0 -0.95408608655588489 -0.28202460818790687 0.10090520213018983 0
		 3.281000000000001 160.01400000000004 7.6950000000001237 1;
	setAttr ".liw" yes;
createNode joint -n "L_lidLowerMain_002_GUIDE" -p "L_lidLowerMain_001_GUIDE";
	rename -uid "5371F29D-4A78-7321-B111-76AA150F458E";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 3.1126300561919322 -0.92186717793902062 0.57426971166762542 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.4796616733273528e-13 -10.453328290403242 -1.6171165828714241e-14 ;
	setAttr ".bps" -type "matrix" 0.15655020343839998 -0.18230225022454627 0.97069970813143991 0
		 -0.25536595944618862 0.941927815673539 0.21808305027352093 0 -0.95408608655588489 -0.28202460818790687 0.10090520213018983 0
		 3.0415454380655262 158.30040800083603 10.700020702652576 1;
createNode joint -n "L_lidLowerA_001_GUIDE" -p "C_headLid_GUIDE";
	rename -uid "1F928098-4E2A-F190-6DC5-3488FC00C4F0";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 3.281000000000001 0.99309443207056347 7.6950000000001237 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 38.380080707086933 -69.436150497886686 -21.390233998958582 ;
	setAttr ".bps" -type "matrix" 0.15655020343839998 -0.18230225022454627 0.97069970813143991 0
		 -0.25536595944618862 0.941927815673539 0.21808305027352093 0 -0.95408608655588489 -0.28202460818790687 0.10090520213018983 0
		 3.281000000000001 160.01400000000004 7.6950000000001237 1;
	setAttr ".liw" yes;
createNode joint -n "L_lidLowerA_002_GUIDE" -p "L_lidLowerA_001_GUIDE";
	rename -uid "3AA0BAB9-4C57-B088-6E0D-31BC1B75CA1F";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 2.9547538684280727 -0.89758734380666283 1.5772292120829334 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.2492225602681752e-13 -10.453328290403199 -5.8216196983371279e-14 ;
	setAttr ".bps" -type "matrix" 0.15655020343839998 -0.18230225022454627 0.97069970813143991 0
		 -0.25536595944618862 0.941927815673539 0.21808305027352093 0 -0.95408608655588489 -0.28202460818790687 0.10090520213018983 0
		 3.0415454380655262 158.30040800083603 10.700020702652576 1;
createNode joint -n "L_lidLowerB_001_GUIDE" -p "C_headLid_GUIDE";
	rename -uid "2FD98BC1-4C6F-CD0E-D3F5-59AEAE1E4C1A";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 3.281000000000001 0.99309443207056347 7.6950000000001237 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 38.380080707086776 -69.436150497886658 -21.39023399895855 ;
	setAttr ".bps" -type "matrix" 0.15655020343840087 -0.18230225022454605 0.97069970813143969 0
		 -0.25536595944618867 0.941927815673539 0.21808305027352087 0 -0.95408608655588445 -0.28202460818790714 0.10090520213019072 0
		 3.281000000000001 160.01400000000004 7.6950000000001237 1;
	setAttr ".liw" yes;
createNode joint -n "L_lidLowerB_002_GUIDE" -p "L_lidLowerB_001_GUIDE";
	rename -uid "CB7E15A4-4A13-95BE-9C4A-7390A39C8060";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 3.1061876939415534 -1.3908697171477797 0.56161133661279194 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 2.3892897511925288e-13 -10.453328290403196 -4.0427914571785602e-14 ;
	setAttr ".bps" -type "matrix" 0.15655020343840087 -0.18230225022454605 0.97069970813143969 0
		 -0.25536595944618867 0.941927815673539 0.21808305027352087 0 -0.95408608655588445 -0.28202460818790714 0.10090520213019072 0
		 4.1410977389603882 158.13163966475261 10.454579551527324 1;
	setAttr ".liw" yes;
createNode joint -n "L_lidLowerC_001_GUIDE" -p "C_headLid_GUIDE";
	rename -uid "0ACE092B-40EE-586E-0EC5-ACB92B01BFFF";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 3.281000000000001 0.99309443207056347 7.6950000000001237 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 38.380080707086712 -69.436150497886644 -21.390233998958475 ;
	setAttr ".bps" -type "matrix" 0.15655020343840065 -0.18230225022454619 0.97069970813143969 0
		 -0.25536595944618928 0.94192781567353878 0.21808305027352098 0 -0.95408608655588445 -0.2820246081879077 0.10090520213019039 0
		 3.281000000000001 160.01400000000004 7.6950000000001237 1;
	setAttr ".liw" yes;
createNode joint -n "L_lidLowerC_002_GUIDE" -p "L_lidLowerC_001_GUIDE";
	rename -uid "992FB9E8-4DBE-259B-71B9-E6AE945AC417";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 3.1268270116559744 -1.3909291071126972 -0.7471470810214953 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 2.4297176657643146e-13 -10.453328290403199 -5.6599080400499849e-14 ;
	setAttr ".bps" -type "matrix" 0.15655020343840065 -0.18230225022454619 0.97069970813143969 0
		 -0.25536595944618928 0.94192781567353878 0.21808305027352098 0 -0.95408608655588445 -0.2820246081879077 0.10090520213019039 0
		 5.3386337360094522 158.53520416568756 10.11352558212025 1;
	setAttr ".liw" yes;
createNode joint -n "L_lidLowerD_001_GUIDE" -p "C_headLid_GUIDE";
	rename -uid "6DFAB627-4B34-3491-BBBD-71A81650A67F";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 3.281000000000001 0.99309443207056347 7.6950000000001237 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 38.38008070708679 -69.436150497886658 -21.390233998958575 ;
	setAttr ".bps" -type "matrix" 0.15655020343840054 -0.18230225022454627 0.97069970813143969 0
		 -0.25536595944618862 0.941927815673539 0.21808305027352104 0 -0.95408608655588467 -0.28202460818790698 0.10090520213019039 0
		 3.281000000000001 160.01400000000004 7.6950000000001237 1;
	setAttr ".liw" yes;
createNode joint -n "L_lidLowerD_002_GUIDE" -p "L_lidLowerD_001_GUIDE";
	rename -uid "128E7E8A-4B16-71E7-B3ED-838C091D5007";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 2.8926534658929199 -0.79212065227693529 -1.6973949669105508 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 2.2073641356194943e-13 -10.453328290403215 -5.1747730651885583e-14 ;
	setAttr ".bps" -type "matrix" 0.15655020343840054 -0.18230225022454627 0.97069970813143969 0
		 -0.25536595944618862 0.941927815673539 0.21808305027352104 0 -0.95408608655588467 -0.28202460818790698 0.10090520213019039 0
		 5.9737112462988016 159.42421364837645 9.7632134993017985 1;
	setAttr ".liw" yes;
createNode joint -n "R_lidUpperMain_001_GUIDE" -p "C_headLid_GUIDE";
	rename -uid "9AA812F1-43ED-ACFD-198D-6A9CA2056F12";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -3.281 0.99309443207053505 7.695 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 38.38008070708694 69.436150497886615 21.390233998958557 ;
	setAttr ".bps" -type "matrix" 0.15655020343839998 -0.18230225022454627 0.97069970813143991 0
		 -0.25536595944618862 0.941927815673539 0.21808305027352093 0 -0.95408608655588489 -0.28202460818790687 0.10090520213018983 0
		 3.281000000000001 160.01400000000004 7.6950000000001237 1;
	setAttr ".liw" yes;
createNode joint -n "R_lidUpperMain_002_GUIDE" -p "R_lidUpperMain_001_GUIDE";
	rename -uid "EA7DE025-40B1-D88B-208F-57B9949D2306";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -3.2458924849936484 0.64198565296550214 0.4635036700482118 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.4792797215597605e-16 10.453328290403197 1.6171165828714199e-15 ;
	setAttr ".bps" -type "matrix" 0.15655020343839998 -0.18230225022454627 0.97069970813143991 0
		 -0.25536595944618862 0.941927815673539 0.21808305027352093 0 -0.95408608655588489 -0.28202460818790687 0.10090520213018983 0
		 3.0415454380655262 158.30040800083603 10.700020702652576 1;
createNode joint -n "R_lidUpperA_001_GUIDE" -p "C_headLid_GUIDE";
	rename -uid "8381E22F-4C82-A588-084C-639BB5440629";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -3.281 0.99309443207053505 7.695 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 38.380080707086918 69.436150497886672 21.390233998958539 ;
	setAttr ".bps" -type "matrix" 0.15655020343839998 -0.18230225022454627 0.97069970813143991 0
		 -0.25536595944618862 0.941927815673539 0.21808305027352093 0 -0.95408608655588489 -0.28202460818790687 0.10090520213018983 0
		 3.281000000000001 160.01400000000004 7.6950000000001237 1;
	setAttr ".liw" yes;
createNode joint -n "R_lidUpperA_002_GUIDE" -p "R_lidUpperA_001_GUIDE";
	rename -uid "5A022AE5-4E19-6FC5-8222-9EBEB68920F7";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -3.0120285378220348 0.51187064734173759 -1.69035136591053 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -1.4792797215597543e-16 10.453328290403164 -1.6171165828714182e-15 ;
	setAttr ".bps" -type "matrix" 0.15655020343839998 -0.18230225022454627 0.97069970813143991 0
		 -0.25536595944618862 0.941927815673539 0.21808305027352093 0 -0.95408608655588489 -0.28202460818790687 0.10090520213018983 0
		 3.0415454380655262 158.30040800083603 10.700020702652576 1;
createNode joint -n "R_lidUpperB_001_GUIDE" -p "C_headLid_GUIDE";
	rename -uid "A7CEBA9B-42EA-AE47-D5F9-97AAD95F42FB";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -3.281 0.99309443207053505 7.695 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 38.380080707086776 69.436150497886658 21.39023399895855 ;
	setAttr ".bps" -type "matrix" 0.15655020343840087 -0.18230225022454605 0.97069970813143969 0
		 -0.25536595944618867 0.941927815673539 0.21808305027352087 0 -0.95408608655588445 -0.28202460818790714 0.10090520213019072 0
		 3.281000000000001 160.01400000000004 7.6950000000001237 1;
	setAttr ".liw" yes;
createNode joint -n "R_lidUpperB_002_GUIDE" -p "R_lidUpperB_001_GUIDE";
	rename -uid "ECE62231-4004-1952-F810-22A920004245";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -3.3531244579170014 1.1765930694965334 -0.49705250440128879 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 7.3963986077987869e-16 10.453328290403162 8.0855829143571109e-15 ;
	setAttr ".bps" -type "matrix" 0.15655020343840087 -0.18230225022454605 0.97069970813143969 0
		 -0.25536595944618867 0.941927815673539 0.21808305027352087 0 -0.95408608655588445 -0.28202460818790714 0.10090520213019072 0
		 4.1410977389603882 158.13163966475261 10.454579551527324 1;
	setAttr ".liw" yes;
createNode joint -n "R_lidUpperC_001_GUIDE" -p "C_headLid_GUIDE";
	rename -uid "31CD8CBF-4FFB-6426-5440-B39272296D4F";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -3.281 0.99309443207053505 7.695 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 38.380080707086712 69.436150497886644 21.3902339989585 ;
	setAttr ".bps" -type "matrix" 0.15655020343840065 -0.18230225022454619 0.97069970813143969 0
		 -0.25536595944618928 0.94192781567353878 0.21808305027352098 0 -0.95408608655588445 -0.2820246081879077 0.10090520213019039 0
		 3.281000000000001 160.01400000000004 7.6950000000001237 1;
	setAttr ".liw" yes;
createNode joint -n "R_lidUpperC_002_GUIDE" -p "R_lidUpperC_001_GUIDE";
	rename -uid "ADB59011-4104-A00A-8A8B-2495D32742BE";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -3.2653763676862066 1.3014452613930416 0.72659037280574523 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.3313517494037875e-15 10.453328290403196 1.4554049245842814e-14 ;
	setAttr ".bps" -type "matrix" 0.15655020343840065 -0.18230225022454619 0.97069970813143969 0
		 -0.25536595944618928 0.94192781567353878 0.21808305027352098 0 -0.95408608655588445 -0.2820246081879077 0.10090520213019039 0
		 5.3386337360094522 158.53520416568756 10.11352558212025 1;
	setAttr ".liw" yes;
createNode joint -n "R_lidUpperD_001_GUIDE" -p "C_headLid_GUIDE";
	rename -uid "73A6D423-4B2C-30C6-2CA7-3E95D341E1CE";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -3.281 0.99309443207053505 7.695 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 38.380080707086833 69.436150497886658 21.390233998958585 ;
	setAttr ".bps" -type "matrix" 0.15655020343840054 -0.18230225022454627 0.97069970813143969 0
		 -0.25536595944618862 0.941927815673539 0.21808305027352104 0 -0.95408608655588467 -0.28202460818790698 0.10090520213019039 0
		 3.281000000000001 160.01400000000004 7.6950000000001237 1;
	setAttr ".liw" yes;
createNode joint -n "R_lidUpperD_002_GUIDE" -p "R_lidUpperD_001_GUIDE";
	rename -uid "E101E546-425A-D2AD-40E3-80BCAF5DAB3F";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -2.8131996547663398 0.66564870503100337 1.8252729633709848 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 2.9585594431195146e-16 10.453328290403162 3.2342331657428426e-15 ;
	setAttr ".bps" -type "matrix" 0.15655020343840054 -0.18230225022454627 0.97069970813143969 0
		 -0.25536595944618862 0.941927815673539 0.21808305027352104 0 -0.95408608655588467 -0.28202460818790698 0.10090520213019039 0
		 5.9737112462988016 159.42421364837645 9.7632134993017985 1;
	setAttr ".liw" yes;
createNode joint -n "R_lidLowerMain_001_GUIDE" -p "C_headLid_GUIDE";
	rename -uid "4336D982-4948-6A54-3FC2-18B403F9322F";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -3.281 0.99309443207053505 7.695 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -141.6199192929131 69.436150497886629 21.390233998958589 ;
	setAttr ".bps" -type "matrix" 0.15655020343839998 -0.18230225022454627 0.97069970813143991 0
		 -0.25536595944618862 0.941927815673539 0.21808305027352093 0 -0.95408608655588489 -0.28202460818790687 0.10090520213018983 0
		 3.281000000000001 160.01400000000004 7.6950000000001237 1;
	setAttr ".liw" yes;
createNode joint -n "R_lidLowerMain_002_GUIDE" -p "R_lidLowerMain_001_GUIDE";
	rename -uid "23467F08-4D25-1DC9-4A58-4B9B40A656A2";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -3.1126055503159957 0.92153411017127951 -0.57416772665563087 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 2.9585594431195382e-16 -10.453328290403237 -3.2342331657428466e-15 ;
	setAttr ".bps" -type "matrix" 0.15655020343839998 -0.18230225022454627 0.97069970813143991 0
		 -0.25536595944618862 0.941927815673539 0.21808305027352093 0 -0.95408608655588489 -0.28202460818790687 0.10090520213018983 0
		 3.0415454380655262 158.30040800083603 10.700020702652576 1;
createNode joint -n "R_lidLowerA_001_GUIDE" -p "C_headLid_GUIDE";
	rename -uid "FC5CAB31-472F-DDEC-972C-99A97F89079B";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -3.281 0.99309443207053505 7.695 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -141.61991929291307 69.436150497886672 21.390233998958582 ;
	setAttr ".bps" -type "matrix" 0.15655020343839998 -0.18230225022454627 0.97069970813143991 0
		 -0.25536595944618862 0.941927815673539 0.21808305027352093 0 -0.95408608655588489 -0.28202460818790687 0.10090520213018983 0
		 3.281000000000001 160.01400000000004 7.6950000000001237 1;
	setAttr ".liw" yes;
createNode joint -n "R_lidLowerA_002_GUIDE" -p "R_lidLowerA_001_GUIDE";
	rename -uid "4D1C61EF-499B-AB5F-8417-6D851BF44588";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -2.9547882449299827 0.89797733100314758 -1.5773460124931589 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -7.3963986077987642e-16 -10.453328290403162 8.0855829143570841e-15 ;
	setAttr ".bps" -type "matrix" 0.15655020343839998 -0.18230225022454627 0.97069970813143991 0
		 -0.25536595944618862 0.941927815673539 0.21808305027352093 0 -0.95408608655588489 -0.28202460818790687 0.10090520213018983 0
		 3.0415454380655262 158.30040800083603 10.700020702652576 1;
createNode joint -n "R_lidLowerB_001_GUIDE" -p "C_headLid_GUIDE";
	rename -uid "BB96083A-4C6D-4DAC-BF92-47974760A953";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -3.281 0.99309443207053505 7.695 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -141.61991929291327 69.436150497886658 21.390233998958564 ;
	setAttr ".bps" -type "matrix" 0.15655020343840087 -0.18230225022454605 0.97069970813143969 0
		 -0.25536595944618867 0.941927815673539 0.21808305027352087 0 -0.95408608655588445 -0.28202460818790714 0.10090520213019072 0
		 3.281000000000001 160.01400000000004 7.6950000000001237 1;
	setAttr ".liw" yes;
createNode joint -n "R_lidLowerB_002_GUIDE" -p "R_lidLowerB_001_GUIDE";
	rename -uid "250C964E-442E-6B57-35E4-0F8477329463";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -3.106161417274599 1.3905264252824452 -0.56150305468968043 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 7.3963986077988234e-16 -10.453328290403196 -8.0855829143571235e-15 ;
	setAttr ".bps" -type "matrix" 0.15655020343840087 -0.18230225022454605 0.97069970813143969 0
		 -0.25536595944618867 0.941927815673539 0.21808305027352087 0 -0.95408608655588445 -0.28202460818790714 0.10090520213019072 0
		 4.1410977389603882 158.13163966475261 10.454579551527324 1;
	setAttr ".liw" yes;
createNode joint -n "R_lidLowerC_001_GUIDE" -p "C_headLid_GUIDE";
	rename -uid "AD56B2A1-4017-A265-BDA0-65B92415696D";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -3.281 0.99309443207053505 7.695 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -141.61991929291338 69.436150497886629 21.390233998958429 ;
	setAttr ".bps" -type "matrix" 0.15655020343840065 -0.18230225022454619 0.97069970813143969 0
		 -0.25536595944618928 0.94192781567353878 0.21808305027352098 0 -0.95408608655588445 -0.2820246081879077 0.10090520213019039 0
		 3.281000000000001 160.01400000000004 7.6950000000001237 1;
	setAttr ".liw" yes;
createNode joint -n "R_lidLowerC_002_GUIDE" -p "R_lidLowerC_001_GUIDE";
	rename -uid "36E466A5-442F-F412-CDC4-55907EAF684E";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -3.1268279928821059 1.3911260414299136 0.74708734876478644 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.4787793343586663e-06 -10.453328290403196 -9.7026992803563117e-15 ;
	setAttr ".bps" -type "matrix" 0.15655020343840065 -0.18230225022454619 0.97069970813143969 0
		 -0.25536595944618928 0.94192781567353878 0.21808305027352098 0 -0.95408608655588445 -0.2820246081879077 0.10090520213019039 0
		 5.3386337360094522 158.53520416568756 10.11352558212025 1;
	setAttr ".liw" yes;
createNode joint -n "R_lidLowerD_001_GUIDE" -p "C_headLid_GUIDE";
	rename -uid "52D71551-4A55-4615-6E77-F5A00DBB842B";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -3.281 0.99309443207053505 7.695 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -141.61991929291327 69.436150497886644 21.390233998958539 ;
	setAttr ".bps" -type "matrix" 0.15655020343840054 -0.18230225022454627 0.97069970813143969 0
		 -0.25536595944618862 0.941927815673539 0.21808305027352104 0 -0.95408608655588467 -0.28202460818790698 0.10090520213019039 0
		 3.281000000000001 160.01400000000004 7.6950000000001237 1;
	setAttr ".liw" yes;
createNode joint -n "R_lidLowerD_002_GUIDE" -p "R_lidLowerD_001_GUIDE";
	rename -uid "1B100875-4A02-DE78-8D88-66970CB1901D";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -2.8926771519293553 0.79232233850152056 1.697328475816434 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.4792797215597611e-15 -10.453328290403196 -1.6171165828714206e-14 ;
	setAttr ".bps" -type "matrix" 0.15655020343840054 -0.18230225022454627 0.97069970813143969 0
		 -0.25536595944618862 0.941927815673539 0.21808305027352104 0 -0.95408608655588467 -0.28202460818790698 0.10090520213019039 0
		 5.9737112462988016 159.42421364837645 9.7632134993017985 1;
	setAttr ".liw" yes;
createNode transform -n "upperLips_GRP" -p "guide";
	rename -uid "FFA0E110-4C61-9D55-DD75-478CFB90EB35";
createNode joint -n "R_upperLipB1_GUIDE" -p "upperLips_GRP";
	rename -uid "15E8F74F-48A3-5BC2-2223-1A9F740733DE";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -1.7404892001237617 153.19187868054269 11.801817755286747 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 152.98991746552807 12.149387586249279 1;
	setAttr ".liw" yes;
createNode joint -n "R_upperLipB_GUIDE" -p "R_upperLipB1_GUIDE";
	rename -uid "2FB36812-4F87-8EF5-5D02-F1912356C2F8";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 3.5527136788005009e-15 -2.8421709430404007e-14 -7.1054273576010019e-15 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".dla" yes;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 152.98991746552807 12.149387586249279 1;
	setAttr ".liw" yes;
createNode joint -n "R_upperLipA1_GUIDE" -p "upperLips_GRP";
	rename -uid "67FCC86C-4BE6-3A94-A6EC-B5982BB0559C";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -1.0450039658243446 153.36949270813236 12.039254346501609 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 152.98991746552807 12.149387586249279 1;
	setAttr ".liw" yes;
createNode joint -n "R_upperLipA_GUIDE" -p "R_upperLipA1_GUIDE";
	rename -uid "78C9847B-4FD8-BE42-AA3D-E5BAB5B6653A";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -1.7763568394002505e-14 2.8421709430404007e-14 -7.1054273576010019e-15 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".dla" yes;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 152.98991746552807 12.149387586249279 1;
	setAttr ".liw" yes;
createNode joint -n "C_upperLipA1_GUIDE" -p "upperLips_GRP";
	rename -uid "50F24478-4BE3-7EA6-756F-CE9592B020B1";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0 153.50434025136309 12.265302529639705 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 152.98991746552807 12.149387586249279 1;
	setAttr ".liw" yes;
createNode joint -n "C_upperLipA_GUIDE" -p "C_upperLipA1_GUIDE";
	rename -uid "F017C7DF-403B-6683-F0EF-54B7B023B2F4";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".dla" yes;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 152.98991746552807 12.149387586249279 1;
	setAttr ".liw" yes;
createNode joint -n "L_upperLipA1_GUIDE" -p "upperLips_GRP";
	rename -uid "FC98BD82-4508-778B-F973-4EBA2C5119AB";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 1.0450039658243446 153.36949270813236 12.039254346501609 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 152.98991746552807 12.149387586249279 1;
	setAttr ".liw" yes;
createNode joint -n "L_upperLipA_GUIDE" -p "L_upperLipA1_GUIDE";
	rename -uid "1B884A6D-415F-7567-0C1D-CEB2A7F1893F";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1.0658141036401503e-14 5.6843418860808015e-14 7.1054273576010019e-15 ;
	setAttr ".dla" yes;
	setAttr ".jo" -type "double3" 0 -1.5902773407317584e-15 1.5902773407317584e-15 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 152.98991746552807 12.149387586249279 1;
	setAttr ".liw" yes;
createNode joint -n "L_upperLipB1_GUIDE" -p "upperLips_GRP";
	rename -uid "2CCE2600-40E1-4A02-71B6-39951A44C479";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 1.7404892001237617 153.19187868054269 11.801817755286747 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 152.98991746552807 12.149387586249279 1;
	setAttr ".liw" yes;
createNode joint -n "L_upperLipB_GUIDE" -p "L_upperLipB1_GUIDE";
	rename -uid "C273B0FC-44A7-93A0-7A0B-A2A40D556798";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1.4210854715202004e-14 ;
	setAttr ".dla" yes;
	setAttr ".jo" -type "double3" 0 -1.5902773407317584e-15 1.5902773407317584e-15 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 152.98991746552807 12.149387586249279 1;
	setAttr ".liw" yes;
createNode transform -n "lowerLips_GRP" -p "guide";
	rename -uid "221A5902-443D-80FC-C0F4-AFAC87DE86FB";
createNode joint -n "R_lowerLipB1_GUIDE" -p "lowerLips_GRP";
	rename -uid "C1C15EBD-4BF0-EE1C-F9A6-578BF670C5DD";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -1.7404892001237617 152.69957113424843 11.555175777574959 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 152.98991746552807 12.149387586249279 1;
	setAttr ".liw" yes;
createNode joint -n "R_lowerLipB_GUIDE" -p "R_lowerLipB1_GUIDE";
	rename -uid "36F9B79D-4DF7-A010-EAAA-A6B9EC679428";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 3.5527136788005009e-15 -2.8421709430404007e-14 -7.1054273576010019e-15 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".dla" yes;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 152.98991746552807 12.149387586249279 1;
	setAttr ".liw" yes;
createNode joint -n "R_lowerLipA1_GUIDE" -p "lowerLips_GRP";
	rename -uid "9EFC9814-4D40-0040-152A-FDAAE6EFB6C3";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -1.0450039658243437 152.50315599220127 11.805280008889715 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 152.98991746552807 12.149387586249279 1;
	setAttr ".liw" yes;
createNode joint -n "R_lowerLipA_GUIDE" -p "R_lowerLipA1_GUIDE";
	rename -uid "05784840-4DAE-AD81-5192-D586F1956080";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1.7763568394002505e-14 2.8421709430404007e-14 -7.1054273576010019e-15 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".dla" yes;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 152.98991746552807 12.149387586249279 1;
	setAttr ".liw" yes;
createNode joint -n "C_lowerLipA1_GUIDE" -p "lowerLips_GRP";
	rename -uid "8726D8B1-410B-3FF4-4BB1-0882725422B6";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0 152.38620833502432 12.035543491771925 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 152.98991746552807 12.149387586249279 1;
	setAttr ".liw" yes;
createNode joint -n "C_lowerLipA_GUIDE" -p "C_lowerLipA1_GUIDE";
	rename -uid "EAC7BD39-49E0-EC11-4ECD-78B5DFF1832C";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".dla" yes;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 152.98991746552807 12.149387586249279 1;
	setAttr ".liw" yes;
createNode joint -n "L_lowerLipA1_GUIDE" -p "lowerLips_GRP";
	rename -uid "7556E62C-4DC4-A94B-DD34-D9BCA080DC52";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 1.0450039658243437 152.50315599220127 11.805280008889715 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 152.98991746552807 12.149387586249279 1;
	setAttr ".liw" yes;
createNode joint -n "L_lowerLipA_GUIDE" -p "L_lowerLipA1_GUIDE";
	rename -uid "2E684450-4EF2-3FB7-161A-E1B372525B64";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1.0658141036401503e-14 5.6843418860808015e-14 7.1054273576010019e-15 ;
	setAttr ".dla" yes;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 152.98991746552807 12.149387586249279 1;
	setAttr ".liw" yes;
createNode joint -n "L_lowerLipB1_GUIDE" -p "lowerLips_GRP";
	rename -uid "B3AE5FA2-4B12-B906-C82A-1CB660B6BAD5";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 1.7404892001237617 152.69957113424843 11.555175777574959 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 152.98991746552807 12.149387586249279 1;
	setAttr ".liw" yes;
createNode joint -n "L_lowerLipB_GUIDE" -p "L_lowerLipB1_GUIDE";
	rename -uid "BAFA754A-4E98-8057-1B6A-3CAD38C81F66";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1.4210854715202004e-14 ;
	setAttr ".dla" yes;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 152.98991746552807 12.149387586249279 1;
	setAttr ".liw" yes;
createNode transform -n "lip_Corner" -p "guide";
	rename -uid "CA97E0C3-4CE2-8371-B620-60AA9EBB5BDF";
createNode joint -n "L_lowerLipC_GUIDE" -p "lip_Corner";
	rename -uid "3F87B4D0-4F64-256D-8016-389F8411EC75";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 2.1315957127775937 152.85160407076791 11.269310633543707 ;
	setAttr ".r" -type "double3" 0 27.038217713368663 0 ;
	setAttr ".dla" yes;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 152.98991746552807 12.149387586249279 1;
	setAttr ".liw" yes;
createNode joint -n "L_LipCornerSmall_GUIDE" -p "lip_Corner";
	rename -uid "E3115CBE-42EF-DD43-7BAC-A48B3B8B765C";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 2.3352699279785156 153.00486755371094 11.058832168579102 ;
	setAttr ".r" -type "double3" 0 27.038217713368663 0 ;
	setAttr ".dla" yes;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 152.98991746552807 12.149387586249279 1;
	setAttr ".liw" yes;
createNode joint -n "L_upperLipC_GUIDE" -p "lip_Corner";
	rename -uid "75F19513-4F69-E380-9259-199420E431A5";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 2.0898945404316027 153.1237391468226 11.28169087618835 ;
	setAttr ".r" -type "double3" 0 27.038217713368663 0 ;
	setAttr ".dla" yes;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 152.98991746552807 12.149387586249279 1;
	setAttr ".liw" yes;
createNode joint -n "R_lowerLipC_GUIDE" -p "lip_Corner";
	rename -uid "75C7616D-47EB-7A93-80EA-76A8747745AD";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -2.1316 152.852 11.2693 ;
	setAttr ".r" -type "double3" 0 152.961782 0 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
	setAttr ".dla" yes;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 152.98991746552807 12.149387586249279 1;
	setAttr ".liw" yes;
createNode joint -n "R_LipCornerSmall_GUIDE" -p "lip_Corner";
	rename -uid "C250CA8C-40CC-BB3F-EFFC-B7B1AC923BB5";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -2.33527 153.005 11.0588 ;
	setAttr ".r" -type "double3" 0 152.961782 0 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
	setAttr ".dla" yes;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 152.98991746552807 12.149387586249279 1;
	setAttr ".liw" yes;
createNode joint -n "R_upperLipC_GUIDE" -p "lip_Corner";
	rename -uid "69CF980E-47A9-6C5D-631B-10A08623EFD5";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -2.08989 153.124 11.2817 ;
	setAttr ".r" -type "double3" 0 152.961782 0 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
	setAttr ".dla" yes;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 152.98991746552807 12.149387586249279 1;
	setAttr ".liw" yes;
createNode transform -n "C_space_01_GUIDE" -p "guide";
	rename -uid "60A4304D-446A-A0A6-E9F5-8F9CE85017E4";
	setAttr ".t" -type "double3" 22.85717345939981 159.45575659174608 5.6843418860808015e-14 ;
createNode locator -n "C_space_01_GUIDEShape" -p "C_space_01_GUIDE";
	rename -uid "74CDB344-4EFE-DFD0-E332-A18C505548A3";
	setAttr -k off ".v";
createNode transform -n "L_brow_GRP" -p "guide";
	rename -uid "AACD881B-4969-54EA-5F6F-B3A18D257B35";
createNode joint -n "L_browA1_GUIDE" -p "L_brow_GRP";
	rename -uid "64ACFAFA-4965-42BF-DCCF-059BFF74282E";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 1.9325288440272965 162.02064141705173 12.211839687120792 ;
	setAttr ".r" -type "double3" 7.9616208964458517 15.265051525079629 1.7183597989211754 ;
	setAttr ".dla" yes;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 152.98991746552807 12.149387586249279 1;
	setAttr ".liw" yes;
createNode joint -n "L_browA_GUIDE" -p "L_browA1_GUIDE";
	rename -uid "C4C6DA87-4E3F-6E5C-D103-F5A398800D91";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".dla" yes;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 152.98991746552807 12.149387586249279 1;
	setAttr ".liw" yes;
createNode joint -n "L_browB1_GUIDE" -p "L_brow_GRP";
	rename -uid "B85C6456-4D8A-AEBE-C6CD-1DA780B62668";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 4.616086941424407 162.69721038470618 11.235679170746964 ;
	setAttr ".r" -type "double3" -0.67135696658471056 32.74507486784146 3.2243885668666539 ;
	setAttr ".dla" yes;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 152.98991746552807 12.149387586249279 1;
	setAttr ".liw" yes;
createNode joint -n "L_browB_GUIDE" -p "L_browB1_GUIDE";
	rename -uid "204E8D87-41B0-B9EB-0AB9-AB849C9ADAFC";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".dla" yes;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 152.98991746552807 12.149387586249279 1;
	setAttr ".liw" yes;
createNode joint -n "L_browC1_GUIDE" -p "L_brow_GRP";
	rename -uid "F585F6F3-4ED6-1ADF-B469-378A699215D8";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 6.2834399627613093 161.72832078097099 9.0333535054729683 ;
	setAttr ".r" -type "double3" -12.817034361438246 68.719215010917765 -5.9985617721564397 ;
	setAttr ".dla" yes;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 152.98991746552807 12.149387586249279 1;
	setAttr ".liw" yes;
createNode joint -n "L_browC_GUIDE" -p "L_browC1_GUIDE";
	rename -uid "6867FD20-4923-6D39-7331-6B921A2E81FA";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".dla" yes;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 152.98991746552807 12.149387586249279 1;
	setAttr ".liw" yes;
createNode transform -n "R_brow_GRP" -p "guide";
	rename -uid "2474C49F-473F-9A0F-492F-549A61E3ECB7";
createNode joint -n "R_browA1_GUIDE" -p "R_brow_GRP";
	rename -uid "AC6634F2-42C0-5EC7-1F81-BF860D6C6B52";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -1.9325288440272981 162.02064141705173 12.211839687120792 ;
	setAttr ".r" -type "double3" 171.3272475600337 18.163604270138922 -179.34809349514853 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
	setAttr ".dla" yes;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 152.98991746552807 12.149387586249279 1;
	setAttr ".liw" yes;
createNode joint -n "R_browA_GUIDE" -p "R_browA1_GUIDE";
	rename -uid "B2910CAF-4A2E-8B89-7514-F0BDC322F07C";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".dla" yes;
	setAttr ".jo" -type "double3" 8.5377364625159408e-07 -2.3696978467498569e-23 -7.1090937168058228e-23 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 152.98991746552807 12.149387586249279 1;
	setAttr ".liw" yes;
createNode joint -n "R_browB1_GUIDE" -p "R_brow_GRP";
	rename -uid "DE0ED3CF-48FC-733C-D204-FC9C6277419E";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -4.61609 162.697 11.2357 ;
	setAttr ".r" -type "double3" 179.62857189284492 32.178064741634515 -183.81679039198227 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
	setAttr ".dla" yes;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 152.98991746552807 12.149387586249279 1;
	setAttr ".liw" yes;
createNode joint -n "R_browB_GUIDE" -p "R_browB1_GUIDE";
	rename -uid "3EEE2E63-40BD-6433-0619-A199F75AF53B";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".dla" yes;
	setAttr ".jo" -type "double3" 1.2074182697257331e-06 -7.5403324735169915e-23 -6.7025178964631963e-23 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 152.98991746552807 12.149387586249279 1;
	setAttr ".liw" yes;
createNode joint -n "R_browC1_GUIDE" -p "R_brow_GRP";
	rename -uid "490F6CA5-4D3F-B371-0517-549109F049EB";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -6.28344 161.728 9.03335 ;
	setAttr ".r" -type "double3" 187.81141732277428 67.409112664107013 -177.88829979623424 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
	setAttr ".dla" yes;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 152.98991746552807 12.149387586249279 1;
	setAttr ".liw" yes;
createNode joint -n "R_browC_GUIDE" -p "R_browC1_GUIDE";
	rename -uid "967E03B0-4186-874B-AC36-81A180258BC1";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".dla" yes;
	setAttr ".jo" -type "double3" 1.7075472925031877e-06 -9.4787915282444283e-23 -4.7393959406784664e-23 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 152.98991746552807 12.149387586249279 1;
	setAttr ".liw" yes;
createNode transform -n "group1" -p "guide";
	rename -uid "E84273B3-4235-2246-79AB-9A995B659C36";
	setAttr ".s" -type "double3" -1 1 1 ;
createNode joint -n "R_earBase_01_GUIDE" -p "group1";
	rename -uid "2FBDC3A2-4874-E51E-62B7-638E39F46179";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 7.5981483459472656 159.35411071777344 1.7984633445739746 ;
	setAttr ".r" -type "double3" -1.4033418597069752e-14 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 -1 -1.2246467991473532e-16 0 0 1.2246467991473532e-16 -1 0
		 -7.5981500000000004 159.35400000000001 1.7984599999999999 1;
	setAttr ".liw" yes;
createNode joint -n "R_ear_01_GUIDE" -p "R_earBase_01_GUIDE";
	rename -uid "5B96C936-4DE7-1117-8A8B-64B070939109";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 1.1034345626831055 0.604766845703125 -2.397453784942627 ;
	setAttr ".r" -type "double3" -2.9320738469741801e-15 4.8702243559910101e-15 -1.9878466759146992e-16 ;
	setAttr ".bps" -type "matrix" 0.98355622752507366 -0.072356896781290925 -0.16547394593961653 0
		 -0.10333494987457162 -0.97690236803269537 -0.18703917094162922 0 -0.14811831565024394 0.20106278327998406 -0.96831540406452321 0
		 -8.7015799999999963 159.95899999999997 -0.59898999999999969 1;
	setAttr ".liw" yes;
createNode transform -s -n "persp";
	rename -uid "9FD41B64-4851-CA65-9B2D-44994EC71360";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.59347281385900053 160.84297590934099 24.489787287098881 ;
	setAttr ".r" -type "double3" -23.738352729679892 -3.400000000000698 2.9870276966145689e-16 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "98DC5C48-4F8E-BA2C-DD3B-BDA87BB4CA82";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 14.564529598422478;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -0.528448 156.18799999999996 12.8405 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "0E3A6FB8-49BA-FB9D-D2C2-F298A5160EA7";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "0D4C179D-4486-3FBD-60D5-77A9EEABF7C4";
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
	rename -uid "88781F15-40C2-451F-5823-A5A29AA3D833";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "3AF6EA9D-426F-14E1-1EBB-19A28561753E";
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
	rename -uid "20ABA743-43BE-0780-B1EE-32AFB4274AFA";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "95FE51AA-4402-7C96-F847-B2A47EBBDAA0";
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
createNode lightLinker -s -n "lightLinker1";
	rename -uid "C5901B2A-41A9-6378-2EA9-198EF04D1D62";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "4CCDB3B3-427B-408C-50D0-D48A7643744E";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "237ECA67-4278-274E-F83C-018FEF8767F3";
createNode displayLayerManager -n "layerManager";
	rename -uid "F9CA9597-41CB-717F-B5CB-B4831D8E663D";
createNode displayLayer -n "defaultLayer";
	rename -uid "26A01F81-4435-650C-2BC4-5AAEEBA8D2E1";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "8A685EBA-4326-56F0-809A-7491758DCC78";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "DA35F4D6-40C1-1403-928D-7781BCC53041";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "14F57939-4C4F-9C50-958B-9EBF9CD36B9D";
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
		+ "            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n"
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1295\n            -height 720\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n"
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
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n"
		+ "                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n"
		+ "                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n"
		+ "                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1295\\n    -height 720\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1295\\n    -height 720\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "F6845F74-45F6-5CFE-9D92-6198D565DFB4";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".aoon" yes;
	setAttr ".msaa" yes;
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
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "C_nose_01_GUIDE.s" "L_nostril_01_GUIDE.is";
connectAttr "C_nose_01_GUIDE.s" "C_noseTip_01_GUIDE.is";
connectAttr "C_nose_01_GUIDE.s" "R_nostril_01_GUIDE.is";
connectAttr "L_earBase_01_GUIDE.s" "L_ear_01_GUIDE.is";
connectAttr "C_headLid_GUIDE.s" "L_lidUpperMain_001_GUIDE.is";
connectAttr "L_lidUpperMain_001_GUIDE.s" "L_lidUpperMain_002_GUIDE.is";
connectAttr "C_headLid_GUIDE.s" "L_lidUpperA_001_GUIDE.is";
connectAttr "L_lidUpperA_001_GUIDE.s" "L_lidUpperA_002_GUIDE.is";
connectAttr "C_headLid_GUIDE.s" "L_lidUpperB_001_GUIDE.is";
connectAttr "L_lidUpperB_001_GUIDE.s" "L_lidUpperB_002_GUIDE.is";
connectAttr "C_headLid_GUIDE.s" "L_lidUpperC_001_GUIDE.is";
connectAttr "L_lidUpperC_001_GUIDE.s" "L_lidUpperC_002_GUIDE.is";
connectAttr "C_headLid_GUIDE.s" "L_lidUpperD_001_GUIDE.is";
connectAttr "L_lidUpperD_001_GUIDE.s" "L_lidUpperD_002_GUIDE.is";
connectAttr "C_headLid_GUIDE.s" "L_lidLowerMain_001_GUIDE.is";
connectAttr "L_lidLowerMain_001_GUIDE.s" "L_lidLowerMain_002_GUIDE.is";
connectAttr "C_headLid_GUIDE.s" "L_lidLowerA_001_GUIDE.is";
connectAttr "L_lidLowerA_001_GUIDE.s" "L_lidLowerA_002_GUIDE.is";
connectAttr "C_headLid_GUIDE.s" "L_lidLowerB_001_GUIDE.is";
connectAttr "L_lidLowerB_001_GUIDE.s" "L_lidLowerB_002_GUIDE.is";
connectAttr "C_headLid_GUIDE.s" "L_lidLowerC_001_GUIDE.is";
connectAttr "L_lidLowerC_001_GUIDE.s" "L_lidLowerC_002_GUIDE.is";
connectAttr "C_headLid_GUIDE.s" "L_lidLowerD_001_GUIDE.is";
connectAttr "L_lidLowerD_001_GUIDE.s" "L_lidLowerD_002_GUIDE.is";
connectAttr "C_headLid_GUIDE.s" "R_lidUpperMain_001_GUIDE.is";
connectAttr "R_lidUpperMain_001_GUIDE.s" "R_lidUpperMain_002_GUIDE.is";
connectAttr "C_headLid_GUIDE.s" "R_lidUpperA_001_GUIDE.is";
connectAttr "R_lidUpperA_001_GUIDE.s" "R_lidUpperA_002_GUIDE.is";
connectAttr "C_headLid_GUIDE.s" "R_lidUpperB_001_GUIDE.is";
connectAttr "R_lidUpperB_001_GUIDE.s" "R_lidUpperB_002_GUIDE.is";
connectAttr "C_headLid_GUIDE.s" "R_lidUpperC_001_GUIDE.is";
connectAttr "R_lidUpperC_001_GUIDE.s" "R_lidUpperC_002_GUIDE.is";
connectAttr "C_headLid_GUIDE.s" "R_lidUpperD_001_GUIDE.is";
connectAttr "R_lidUpperD_001_GUIDE.s" "R_lidUpperD_002_GUIDE.is";
connectAttr "C_headLid_GUIDE.s" "R_lidLowerMain_001_GUIDE.is";
connectAttr "R_lidLowerMain_001_GUIDE.s" "R_lidLowerMain_002_GUIDE.is";
connectAttr "C_headLid_GUIDE.s" "R_lidLowerA_001_GUIDE.is";
connectAttr "R_lidLowerA_001_GUIDE.s" "R_lidLowerA_002_GUIDE.is";
connectAttr "C_headLid_GUIDE.s" "R_lidLowerB_001_GUIDE.is";
connectAttr "R_lidLowerB_001_GUIDE.s" "R_lidLowerB_002_GUIDE.is";
connectAttr "C_headLid_GUIDE.s" "R_lidLowerC_001_GUIDE.is";
connectAttr "R_lidLowerC_001_GUIDE.s" "R_lidLowerC_002_GUIDE.is";
connectAttr "C_headLid_GUIDE.s" "R_lidLowerD_001_GUIDE.is";
connectAttr "R_lidLowerD_001_GUIDE.s" "R_lidLowerD_002_GUIDE.is";
connectAttr "R_upperLipB1_GUIDE.s" "R_upperLipB_GUIDE.is";
connectAttr "R_upperLipA1_GUIDE.s" "R_upperLipA_GUIDE.is";
connectAttr "C_upperLipA1_GUIDE.s" "C_upperLipA_GUIDE.is";
connectAttr "L_upperLipA1_GUIDE.s" "L_upperLipA_GUIDE.is";
connectAttr "L_upperLipB1_GUIDE.s" "L_upperLipB_GUIDE.is";
connectAttr "R_lowerLipB1_GUIDE.s" "R_lowerLipB_GUIDE.is";
connectAttr "R_lowerLipA1_GUIDE.s" "R_lowerLipA_GUIDE.is";
connectAttr "C_lowerLipA1_GUIDE.s" "C_lowerLipA_GUIDE.is";
connectAttr "L_lowerLipA1_GUIDE.s" "L_lowerLipA_GUIDE.is";
connectAttr "L_lowerLipB1_GUIDE.s" "L_lowerLipB_GUIDE.is";
connectAttr "L_browA1_GUIDE.s" "L_browA_GUIDE.is";
connectAttr "L_browB1_GUIDE.s" "L_browB_GUIDE.is";
connectAttr "L_browC1_GUIDE.s" "L_browC_GUIDE.is";
connectAttr "R_browA1_GUIDE.s" "R_browA_GUIDE.is";
connectAttr "R_browB1_GUIDE.s" "R_browB_GUIDE.is";
connectAttr "R_browC1_GUIDE.s" "R_browC_GUIDE.is";
connectAttr "R_earBase_01_GUIDE.s" "R_ear_01_GUIDE.is";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of C_face_GenericFace.ma

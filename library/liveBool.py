// DcBoolManager
v1
.01
// author: David
"Eltarbos"
Cros
// v1
.01 - -    Add
a
auto
Unfold
radio
button /
// --    check
unfold3d
version.If
unfold3d is not installed, use
legacy
version
// v1
.02 - -    Add
compatibility
with all maya versions.For older than 2015 maya versions, use old boolean algorithm
// v1
.03 - -    Fix
a
bug
when
zbrush and goZ
are
not installed

global proc
boolObjectRename()
{
    string $boolList[] = textScrollList - q - ai
BoolManagerList;
string $LastBoolList[] = listConnections  $boolList[(size($boolList) - 1)];
rename $LastBoolList[0]
textField - q - tx
renameBoolField;
}


global proc
int
booleantypeProc()
{
    int $booleanType;
if (radioButton - q - sl radioBoolManagerUnion == 1)
{$booleanType = 1;}

if (radioButton - q - sl radioBoolManagerIntersect == 1)
{$booleanType = 3;}

if (radioButton -q -sl radioBoolManagerDiff == 1)
{$booleanType = 2;}
return $booleanType;
}


global proc
booleanProc()
{
string $BaseMesh;
string $ToolMesh;
string $resultBool[];
string $sel[] = ls - sl - type
"transform";
if (size($sel) == 2)
{$BaseMesh = $sel[0];
$ToolMesh = $sel[1];}
if (size($sel) == 1)
{$BaseMesh = textField - q - tx
renameBoolField;
$ToolMesh = $sel[0];}
int $booleanType = booleantypeProc;
if (exists polyCBoolOp == 1)
    {$resultBool = polyCBoolOp - op $booleanType - ch
    1 - preserveColor
    0 - classification
    2 $BaseMesh $ToolMesh;}
    else
    {$resultBool = polyBoolOp - op $booleanType - useThresholds
    1 - ch
    1 - preserveColor
    0 $BaseMesh $ToolMesh;}
    rename $BaseMesh("bool_" +$BaseMesh);
    rename $resultBool[0] $BaseMesh;
    boolselect;
    displayBaseOn("DispSelect");
}


global proc
editBoolean()
{
string $editBool[] = textScrollList - q - si
BoolManagerList;
for ($i=0;$i < size($editBool);$i++)
{
    setAttr($editBool[$i]+".operation") booleantypeProc;
}
}


global proc
boolselect()
{
string $bool[];
string $sel[] = ls - sl;
textField - e - tx $sel[0]
renameBoolField;
string $hist[] = listHistory $sel[0];
select $hist;
if (exists polyCBoolOp == 1)
    {$bool = ls - sl - typ
    "polyCBoolOp";}
    else
    {$bool = ls - sl - typ
    "polyBoolOp";}
    select $sel;
    textScrollList - e - ra
    BoolManagerList;
    int $i = size($bool);
    int $j = $i;
    if ($i != 0)
        {
    while ($i != 0)
        {
            textScrollList - e - append $bool[$i - 1] BoolManagerList;
        $i = $i - 1;
        }
        textScrollList - e - selectIndexedItem $j
        BoolManagerList;
    }
    }


    global proc
    selectBool()
    {
        string $selBool[] = textScrollList - q - si
    BoolManagerList;
    select $selBool;
    }


    global proc
    displayBaseOn(string $BaseType)
    {
        string $currentBool[];
    if ($BaseType == "dispAll")
    {$currentBool = textScrollList -q -ai BoolManagerList;}
    if ($BaseType == "DispSelect")
    {$currentBool = textScrollList -q -si BoolManagerList;}
    for ($i=0;$i < size($currentBool);$i++)
    {
    string $boolShapes[] = listHistory - lv
    1 $currentBool[$i];
    string $boolOp1[] = listRelatives - ap $boolShapes[1];
    string $boolOp2[] = listRelatives - ap $boolShapes[2];
    setAttr($boolOp1[0] + ".visibility") 1;
    setAttr($boolOp2[0] + ".visibility") 1;
    setAttr($boolShapes[1] + ".intermediateObject") 0;
    setAttr($boolShapes[1] + ".overrideEnabled") 1;
    if (`radioButton - q - sl radioDispShading` == 0)
        {setAttr($boolShapes[1] + ".overrideShading") 0;}
        else
        {setAttr($boolShapes[1] + ".overrideShading") 1;}
        setAttr($boolShapes[2] + ".intermediateObject") 0;
        setAttr($boolShapes[2] + ".overrideEnabled") 1;
        if (`radioButton - q - sl radioDispShading` == 0)
            {setAttr($boolShapes[2] + ".overrideShading") 0;}
            else
            {setAttr($boolShapes[2] + ".overrideShading") 1;}
            }
            }


            global proc
            displayBaseOff(string $BaseType)
            {
                string $currentBool[];
            if ($BaseType == "HideAll")
            {$currentBool = textScrollList -q -ai BoolManagerList;}
            if ($BaseType == "HideSelect")
            {$currentBool = textScrollList -q -si BoolManagerList;}
            for ($i=0;$i < size($currentBool);$i++)
            {
            string $boolShapes[] = listHistory - lv
            1 $currentBool[$i];
            string $boolOp1[] = listRelatives - ap $boolShapes[1];
            string $boolOp2[] = listRelatives - ap $boolShapes[2];
            setAttr($boolOp1[0] + ".visibility") 0;
            setAttr($boolOp2[0] + ".visibility") 0;
            setAttr($boolShapes[1] + ".intermediateObject") 0;
            setAttr($boolShapes[1] + ".overrideEnabled") 1;
            setAttr($boolShapes[1] + ".overrideShading") 0;
            setAttr($boolShapes[2] + ".intermediateObject") 0;
            setAttr($boolShapes[2] + ".overrideEnabled") 1;
            setAttr($boolShapes[2] + ".overrideShading") 0;
        }
        }


        global proc
        RemoveGroups()
        {
            string $allBool[] = textScrollList - q - ai
        BoolManagerList;
        for ($i=0;$i < size($allBool);$i++)
        {
        string $hist[] = listHistory - lv
        1 $allBool[$i];
        string $TransformA[] = listRelatives - p $hist[1];
        string $shapeA[] = listRelatives - s $TransformA[0];
        string $GroupA[] = listRelatives - f $TransformA[0];
        string $TransformB[] = listRelatives - p $hist[2];
        string $shapeB[] = listRelatives - s $TransformB[0];
        string $GroupB[] = listRelatives - f $TransformB[0];
        string $NewTransformA = rename $TransformA[0]("Base_" +$allBool[$i]);
        string $NewShapeA = rename($NewTransformA + "|" +$shapeA[0]) ("Base_" +$allBool[$i]+"_Shape1");
        string $NewTransformB = rename $TransformB[0]("Tool" +$allBool[$i]);
        string $NewShapeB = rename($NewTransformB + "|" +$shapeB[0]) ("Tool_" +$allBool[$i]+"_Shape1");
        string $listAllGroupsA[];
        string $listAllGroupsB[];
        tokenize $GroupA[0]
        "|" $listAllGroupsA;
        tokenize $GroupB[0]
        "|" $listAllGroupsB;
        if ((size($listAllGroupsA)) - 2 != 0)
        {
        for ($i=0;$i < (size($listAllGroupsA))-2;$i++)    {ungroup $listAllGroupsA[$i];}}
        if ((size($listAllGroupsB)) - 2 != 0)
        {
        for ($i=0;$i < (size($listAllGroupsB))-2;$i++)    {ungroup $listAllGroupsB[$i];}}
        }
        }


        global proc
        CreateCleanGroups()
        {
            string $BaseName = textField - q - tx
        renameBoolField;
        string $allBool[] = textScrollList - q - ai
        BoolManagerList;
        string $groupName = group - em - n($BaseName + "_BaseGroup");
        for ($i=0;$i < size($allBool);$i++)
        {
        string $hist[] = listHistory - lv
        1 $allBool[$i];
        string $TransformA[] = listRelatives - p $hist[1];
        string $TransformB[] = listRelatives - p $hist[2];
        parent $TransformA[0] $groupName;
        parent $TransformB[0] $groupName;
        }
        }


        global proc
        RenameDuplicatedNames()
        {
            string $all[] = ls - tr - sn - fl;
        string $obj;
        string $duplicateArray[] = {};
        for ($obj in $all)
        {
            if (gmatch $obj "*\|*")
                {stringArrayInsertAtIndex(0, $duplicateArray, $obj);}
                }
                select $duplicateArray;
                string $Selection[] = ls - sl - fl - type
                "transform";
                rename($Selection[0] + "_renamed");
                }


                global proc
                DeleteBoolHist(string $deleteBase)
                {

                    string $BaseName = textField - q - tx
                renameBoolField;
                string $allBool[] = textScrollList - q - ai
                BoolManagerList;
                string $groupName = group - em - n($BaseName + "_BaseGroup");
                for ($i=0;$i < size($allBool);$i++)
                {
                string $hist[] = listHistory - lv
                1 $allBool[$i];
                string $TransformA[] = listRelatives - p $hist[1];
                string $TransformB[] = listRelatives - p $hist[2];
                parent $TransformA[0] $groupName;
                parent $TransformB[0] $groupName;
                }
                delete - ch    $BaseName;
                if ($deleteBase == "Delete")
                {delete $groupName;}
                }

                global proc ZbrushExportBool()
                {
                if (file -q -ex "C:/Users/Public/Pixologic/GoZApps/Maya/GoZBrushFromMaya.mel" == 1)
                {
                string $currentObject = textField - q - tx
                renameBoolField;
                string $selObject[0] = duplicate - rr $currentObject;
                if (`radioButton - q - sl radioUnfoldOn` == 1)
                    {
                        polyAutoProjection - lm
                    0 - pb
                    0 - ibd
                    1 - cm
                    0 - l
                    2 - sc
                    1 - o
                    1 - p
                    6 - ps
                    0.2 - ws
                    0 $selObject[0];
                    string $selEdges[] = polyListComponentConversion - te $selObject[0];
                    string $selFaces[] = polyListComponentConversion - tf $selObject[0];
                    string $selUVs[] = polyListComponentConversion - tuv $selObject[0];
                    select $selEdges;
                    polySelectConstraint - m
                    2 - t
                    0x8000 - sm
                    1;
                    polySelectConstraint - m
                    0 - sm
                    0;
                    polyMapCut;
                    select $selEdges;
                    polySelectConstraint - m
                    2 - t
                    0x8000 - sm
                    2;
                    polySelectConstraint - m
                    0 - sm
                    0;
                    polyMapSew;
                    select $selUVs;
                    if (exists Unfold3D == 1)
                    {Unfold3D -u -ite 1 -p 1 -bi 1 -tf 1 -ms 1024 -rs 2;}
                    else if (exists u3dUnfold == 1)
                    {u3dUnfold -ite 1 -p 1 -bi 1 -tf 1 -ms 1024 -rs 2;}
                    else
                    {unfold -i 5000 -ss 0.001 -gb 0 -gmb 0.5 -pub 0 -ps  0 -oa  0 -us off;}
                    }
                select $selObject[0];
                polySelectConstraint - m
                3 - t
                8 - sz
                3;
                polySelectConstraint - m
                0 - sz
                0;
                polyTriangulate;
                select $selObject[0];
                scale - r - p
                0
                0
                0
                floatField - q - v
                scaleAtExportField
                floatField - q - v
                scaleAtExportField
                floatField - q - v
                scaleAtExportField;
                eval("source \"C:/Users/Public/Pixologic/GoZApps/Maya/GoZBrushFromMaya.mel\"");
                delete;
                }
                else {print
                "Cannot find GoZ install";}
                }


                global proc
                DcBoolManager()
                {
                    window - t
                "DcBoolManager" - tlb
                1 - rtf
                1 - s
                1
                BoolManagerWindow;

                columnLayout - adj
                1;
                text - label
                "Name of the resulting object";
                textField - w
                200 - cc
                boolObjectRename
                renameBoolField;
                text - label
                "List of boolean nodes";
                textScrollList - h
                100 - w
                190 - dcc
                selectBool - allowMultiSelection
                true
                BoolManagerList;
                button - bgc
                0.4
                0.3
                0.3 - label
                "List boolean nodes on selected object" - c
                boolselect;
                setParent..;

                frameLayout - p
                BoolManagerWindow - label
                " Boolean type "
                BoolManagerOptionsFrame;
                rowColumnLayout - nc
                3 - cw
                1
                50 - cw
                2
                80 - cw
                3
                70
                BoolManagerTypeLayout;
                text - label
                "Union";
                text - label
                "Intersection";
                text - label
                "Difference";
                radioCollection;
                radioButton - label
                "" - cc
                editBoolean
                radioBoolManagerUnion;
                radioButton - label
                "" - cc
                editBoolean
                radioBoolManagerIntersect;
                radioButton - label
                "" - cc
                editBoolean
                radioBoolManagerDiff;
                setParent..;

                rowColumnLayout - nc
                1 - cw
                1
                200
                BoolManagerNewBoolLayout;
                button - bgc
                0.3
                0.3
                0.4 - label
                "New boolean operation" - c
                booleanProc;
                setParent..;
                setParent..;

                frameLayout - p
                BoolManagerWindow - cll
                1 - cl
                0 - label
                " DISPLAY "
                BoolManagerDisplayFrame;
                rowColumnLayout - cs
                1
                3 - cs
                2
                3 - nc
                2 - cw
                1
                100 - cw
                2
                100
                DisplayBaseLayout;
                button - bgc
                0.5
                0.6
                0.5 - label
                "Show all" - c
                "displayBaseOn dispAll";
                button - bgc
                0.6
                0.6
                0.5 - label
                "Hide all" - c
                "displayBaseOff HideAll";
                button - bgc
                0.5
                0.6
                0.5 - label
                "Show selected" - c
                "displayBaseOn DispSelect";
                button - bgc
                0.6
                0.6
                0.5 - label
                "Hide selected" - c
                "displayBaseOff HideSelect";

                radioCollection;
                radioButton - label
                "Wire" - cc
                editBoolean
                radioDispWire;
                radioButton - label
                "Shading" - cc
                editBoolean
                radioDispShading;
                setParent..;
                setParent..;

                frameLayout - p
                BoolManagerWindow - cll
                1 - cl
                1 - label
                " CLEANUP "
                BoolManagerCleanupFrame;
                rowColumnLayout - numberOfColumns
                1 - cw
                1
                210
                CleanupLayout;
                button - bgc
                0.7
                0.4
                0.3 - label
                "Remove construction groups" - c
                RemoveGroups;
                button - bgc
                0.4
                0.7
                0.4 - label
                "Create clean groups for base objects" - c
                CreateCleanGroups;
                button - bgc
                0.2
                0.3
                0.5 - label
                "Delete history and base objects" - c
                "DeleteBoolHist Delete";
                button - bgc
                0.4
                0.2
                0.4 - label
                "Delete history / keep base objects" - c
                "DeleteBoolHist keep";
                button - bgc
                0.2
                0.5
                0.8 - label
                "Rename Objects with same names" - c
                RenameDuplicatedNames;
                setParent..;
                setParent..;

                frameLayout - p
                BoolManagerWindow - cll
                1 - cl
                1 - label
                " EXPORT "
                BoolManagerExportFrame;
                rowColumnLayout - numberOfColumns
                2 - cw
                1
                110 - cw
                2
                100
                ExportScaleLayout;
                text - label
                "scale at export";
                floatField - v
                0.01
                scaleAtExportField;
                setParent..;

                rowColumnLayout - numberOfColumns
                1 - cw
                1
                210
                unfoldCheckLayoutText;
                separator;
                text - label
                "Auto unfold UVs from hard edges";
                setParent..;

                rowColumnLayout - numberOfColumns
                2 - cw
                1
                110 - cw
                2
                100
                unfoldCheckLayout;
                radioCollection;
                radioButton - label
                "On"
                radioUnfoldOn;
                radioButton - label
                "Off"
                radioUnfoldOff;
                setParent..;

                rowColumnLayout - numberOfColumns
                1 - cw
                1
                210
                ExportZbrushLayout;
                separator;
                button - bgc
                0.8
                0.6
                0.5 - label
                "Send to Zbrush (GoZ required)" - c
                ZbrushExportBool;
                setParent..;
                setParent..;

                showWindow;

                radioButton - e - sl
                radioBoolManagerDiff;
                radioButton - e - sl
                radioDispWire;
                radioButton - e - sl
                radioUnfoldOn;

                }
#!/bin/bash

## Create a utility(FileManager.sh) that will be able to -Create a Directory -Delete a Directory -List Content of a Directory

function helpFunction()
{
    echo ""
    echo "Usage: $0  addDir /tmp dir1"
    echo -e "\t First parameter will be action to perform: Available actions are: addDir/listFiles/listDirs/listAll/deleteDir"
    echo -e "\t Second parameter will be the output directory where actions need to be perform"
    echo -e "\t Third parameter will be actual directory names that needs to be created/deleted/list"
    exit 1 # Exit script after printing help
}


function createDir{
finalDir=$1
actualDir=$2
mkdir -p ${finaDir}/{$actualDir}
}

function listfiles{
mainDir=$1

ls-p${mainDir}

}

functionlistDir{
mainDir=$1
ls-d*/${mainDir}

}


functionlistall{
mainDir=$1
ls-a${mainDir}

}

function deleteDir{
finalDir=$1
actualDir=$2
rm-r ${finalDir}/${actualDir}

}


function addfile{
finalDir=$1
file=$2

touch ${finalDir}/${file}

}


function addfilewithinitialcontent{
finalDir=$1
finalfile=$2
content=$3
echo ${content}>>${finalDir}/${finalfile}

}


function addcontentatbegining{
finalDir=$1
finalfile=$2
content=$3
sed -i -e "1i'$content' ${finalDir}/${finalfile}

}


function showfilelastcontent{
finalDir=$1
finalFile=$2
lastline=$3
tail -n ${lastline} ${finalDir}/{finalFile}

}

function showfilecontentatline{
finalDir=$1
outputFile=$2
Line=$3
sed -n ${Line}p ${finalDir}/${finalFile}

}

function copyfile{
firstlocation=$1
finallocation=$2
mv ${firstlocation}/{finallocation}
}


function deletefile{
finalDir=$1
filename=$2

touch ${finalDir}/${filename}
}


function addfilewithinitialcontent{
finalDir=$1
finalFile=$2
content=$3
echo ${content}>>${finalDir}/${finalfile}
}


function addcontentatbegining{
finalDir=$1
finalfile=$2
content=$3
sed -i -e '1i"$content' ${finalDir}/{finalfile}

}



function addcontentatbegning{
finalDir=$1
finalfile=$2
content=$3
sed -i -e '1i"$content' ${finalDir}/${finalfile}

}

function showFileBeginingContent {
 finalDir=$1
 finalFile=$2
 endLine=$3
 head -n ${endLine}  ${finalDir}/${finalFile}

}

function showFileEndContent {
finalDir=$1
 finalFile=$2
 endLine=$3
 tail -n ${endLine}  ${finalDir}/${finalFile}


}

function showFileContentAtLine {
finalDir=$1
finalFile=$2
Line=$3
sed -n ${Line}p ${finalDir}/${finalFile}
	
}


function moveFile {
location=$1
Destination=$2
mv ${location} ${destination}


}
function copyFile {
location=$1
Destination=$2
cp ${location} ${destination}
}

function deleteFile {
directory=$1
file=$2
rm -p ${directory}/${file}

}
function showFileContentForLineRange {
outputDir=$1
outputFile=$2
beigning=$3
end=$4
sed -n ${beigning},${end}p ${outputDir}/${outputFile}

}
function clearFileContent {
outputDir=$1
outputFile=$2
 >${outputDir}/${outputFile}


}

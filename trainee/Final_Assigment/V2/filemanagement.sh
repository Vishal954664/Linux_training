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


function createDir {
    outputDir=$1
    actualDir=$2
    mkdir -p ${outputDir}/${actualDir}
}

function listFiles {
 parentDir=$1
    
    ls -p ${parentDir}

}

function listDir {
 parentDir=$1
   ls -d */ ${parentDir}
   

}

function listAll {
parentDir=$1
   ls -a  ${parentDir}
   

}

function deleteDir {
    outputDir=$1
    actualDir=$2
    rm -r ${outputDir}/${actualDir}


}

function addFile { 
 	outputDir=$1
 	fileName=$2
 	
 	touch  ${outputDir}/${fileName}
}

function addFileWithIntialContent {
 	outputDir=$1
 	outputFile=$2
 	Content=$3
 	echo ${Content} >> ${outputDir}/${outputFile}
 	
}
function addContentAtbeigning {
	outputDir=$1
 	outputFile=$2
 	Content=$3
 	sed -i -e '1i''$Content'  ${outputDir}/${outputFile}

}
function showFileBeginingContent {
 	outputDir=$1
 	outputFile=$2
 	endLine=$3
 	head -n ${endLine}  ${outputDir}/${outputFile}

}

function showFileEndContent {
       outputDir=$1
 	outputFile=$2
 	endLine=$3
 	tail -n ${endLine}  ${outputDir}/${outputFile}


}

function showFileContentAtLine {
	outputDir=$1
 	outputFile=$2
 	Line=$3
 	sed -n ${Line}p ${outputDir}/${outputFile}
	
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
function fileUtility {
    action=$1
    outputDir=$2
    actualDir=$3
    filename=$3
    Content=$4

    if [[ "$action" == "addDir" ]]
    then
        echo "[INFO] Got this action: ${action}, now going to add this directory: ${actualDir} inside: ${outputDir}"
        createDir ${outputDir} ${actualDir}
    elif [[ "$action" == "listFiles" ]]
    then
    echo "[INFO] Got this action: ${action}, now going to list files in this directory: ${outputDir} "
    listFiles  ${outputDir}
    elif [[ "$action" == "listDir" ]]
    then
    echo "[INFO] Got this action: ${action}, now going to list Directory in this directory: ${outputDir} "
    listDir  ${outputDir}
    elif [[ "$action" == "listAll" ]]
    then
    echo "[INFO] Got this action: ${action}, now going to list all files and directories in this directory: ${outputDir} "
    listAll  ${outputDir}
    elif [[ "$action" == "deleteDir" ]]
    then
    echo "[INFO] Got this action: ${action}, now going to delete this directory: ${actualDir} inside: ${outputDir}"
    deleteDir ${outputDir} ${actualDir}
    elif [[ "$action" == "addContentAtbeigning" ]]
    then
    echo "[INFO] Got this action: ${action}, now going to add ${Content} at  firstline of ${actualDir} inside: ${outputDir}"
    addContentAtbeigning ${outputDir} ${actualDir} ${Content}
    elif [[ "$action" == "addFile" ]]
    then
    echo "[INFO] Got this action: ${action}, now going to add ${actualDir}  inside: ${outputDir}"
    addFile ${outputDir} ${actualDir}
    elif [[ "$action" == "addFileWithIntialContent" ]]
    then
    
     addFileWithIntialContent ${outputDir} ${actualDir} ${Content}
    elif [[ "$action" == "showFileBeginingContent" ]]
    then
    
     showFileBeginingContent ${outputDir} ${actualDir} ${Content}
     
    
   
    
         
        
    fi

}

fileUtility $1 $2 $3

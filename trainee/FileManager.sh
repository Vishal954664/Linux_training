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

}

function listDir {

}

function listAll {

}

function deleteDir {
    
}

function fileUtility {
    action=$1
    outputDir=$2
    actualDir=$3

    if [[ "$action" == "addDir" ]]
    then
        echo "[INFO] Got this action: ${action}, now going to add this directory: ${actualDir} inside: ${outputDir}"
        createDir ${outputDir} ${actualDir}
    fi

}

fileUtility $1 $2 $3

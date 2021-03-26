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
   

    if [[ "$action" == "addDir" ]]
    then
	      if [[ "$#" == 3 ]]
		      then
		    outputDir=$2
		    actualDir=$3
		    echo "[INFO] Got this action: ${action}, now going to add this directory: ${actualDir} inside: ${outputDir}"
		   createDir ${outputDir} ${actualDir}
		else 
	    echo "No of arguments required is 3 i.e addDir OutputDir actualDir"
	    fi
    elif [[ "$action" == "listFiles" ]]
    then
	    if [[ "$#" == 2 ]]
	    then
	    outputDir=$2
	    echo "[INFO] Got this action: ${action}, now going to list files in this directory: ${outputDir} "
	    listFiles  ${outputDir}
	    else 
	    echo "no of arguments required is 2 i.e listFiles outputDir"
	    fi
    elif [[ "$action" == "listDir" ]]
    then
	    if [[ "$#" == 2 ]]
	    then
	     outputDir=$2
	    echo "[INFO] Got this action: ${action}, now going to list Directory in this directory: ${outputDir} "
	    listDir  ${outputDir}
	    else 
	    echo "no of arguments required is 2 listDir Directory "
	    fi
    elif [[ "$action" == "listAll" ]]
    then
	    if [[ "$#" == 2 ]] 
	    then
	    outputDir=$2
	    echo "[INFO] Got this action: ${action}, now going to list all files and directories in this directory: ${outputDir} "
	    listAll  ${outputDir}
	    else 
		    echo "no of arguments required is 2  i.e listAll Dirname "
	    fi
    
    elif [[ "$action" == "deleteDir" ]]
    then
	    if [[ "$#" == 3 ]]
	    then
	    	outputDir=$2
	    	actualDir=$3
    		echo "[INFO] Got this action: ${action}, now going to delete this directory: ${actualDir} inside: ${outputDir}"
	    	deleteDir ${outputDir} ${actualDir}
	    else 
		    echo "no of arguments required is 3  deleteDir outputDir Dirname "
	    fi
    elif [[ "$action" == "addContentAtbeigning" ]]
    then
    	if [[ "$#" == 4 ]] 
	    then
	    outputDir=$2
	    outputFile=$3
	    Content=$4
	    echo "[INFO] Got this action: ${action}, now going to add ${Content} at  firstline of ${outputFile} inside: ${outputDir}"
	    addContentAtbeigning ${outputDir} ${actualDir} ${Content}
   	 else
    
	    echo "no of arguments required is 4 i.e addContentAtbeigning outputDir actualDir Content "
   	 fi
    elif [[ "$action" == "addFile" ]]
    then
   	 if [[ "$#" ==3 ]] 
	    then
	    outputDir=$2
	    file=$3
	    echo "[INFO] Got this action: ${action}, now going to add ${file}  inside: ${outputDir}"
	    addFile ${outputDir} ${file}
    	 else
    
	    echo "no of arguments required is 3  i.e addFile outputDir Filename"
   	 fi
    
    elif [[ "$action" == "addFileWithIntialContent" ]]
    then
   	 if [[ "$#" == 4 ]] 
	    then
	    outputDir=$2
	    file=$3
	    Content=$4
	    addFileWithIntialContent ${outputDir} ${file} ${Content}
   	 else 
  	  echo "no of argument required 4 i.e ${action} outputDir file Content"
   	 fi
    elif [[ "$action" == "showFileBeginingContent" ]]
    then
	    if [[ "$#" == 4 ]] 
		    then
		    outputDir=$2
		    outputFile=$3
		    endLine=$4
		    showFileBeginingContent ${outputDir} ${outputFile} ${endLine}
	    else 
	    	echo "No of arguments required is 4 i.e ${action} outputDir outputfile endLine"
	    fi
     
    elif [[ "$action" == "showFileEndContent" ]]
    then
	    if [[ "$#" == 4 ]] 
		    then
		    outputDir=$2
		    outputFile=$3
		    endLine=$4
		    showFileEndContent ${outputDir} ${outputFile} ${endLine}
	    else 
	   	 echo "no of arguments required is 4 i.e ${action} outputDir outputFile endLine"
	    fi
    elif [[ "$action" == "showFileContentAtLine" ]]
    then
	    if [[ "$#" == 4 ]]
		    then
		    outputDir=$2
		    outputFile=$3
		    Line=$4
		    
		    showFileContentAtLine ${outputDir} ${outputFile} ${Line}
	    else 
	    	echo "No of argumuments required is 4 i.e ${action} outputDir outputFile Line"
	    fi
    elif [[ "$action" == "moveFile" ]]
    then
    if [[ "$#" == 3 ]] 
	    then
	    location=$2
	    destination=$3
	    
	    moveFile ${location} ${destination} 
    else 
    	echo "No of Arguments required is 3 i.e ${action} location Destination"
    fi
    
    elif [[ "$action" == "copyFile" ]]
    then
	    if [[ "$#" == 3 ]]
		    then
		    location=$2
		    destination=$3
		    copyFile   ${location} ${destination} 
	    else 
	   	 echo "No of Arguments required is 3 i.e ${action} location destination"
	    fi
    elif [[ "$action" == "deleteFile" ]]
      then
	      if [[ "$#" == 3 ]]
		      then 
		      outputDir=$2
		      file=$3
		      deleteFile  ${outputDir} ${file}
	      else 
	     	 echo "No of arguments required 3 i.e ${action} outputDir file "
	      fi
     
      elif [[ "$action" == "showFileContentForLineRange" ]]
      then
	      if [[ "$#" ==5 ]]
	      then
		       outputDir=$2
		 	outputFile=$3
			beigning=$4
			end=$5
		      showFileContentForLineRange ${outputDir} ${outputFile} ${beignining} ${end}
	      else 
	     	 echo "No of Arguments required is 5 i.e ${action} outputDir outputfile startline endLine"
	      fi
      
      elif [[ "$action" == "clearFileContent" ]]
      then
	      if [[ "$#" == 3 ]] 
		      then
		      outputDir=$2
		      file=$3
		      clearFileContent ${outputDir} ${file}
	      else 
	      	echo "No of argumennts required is 3 i.e ${action} outputDir file"
	      fi
      
    
         
    else 
    echo "No such action/command found in filutility"
    helpfunction  
    fi

}

fileUtility $@




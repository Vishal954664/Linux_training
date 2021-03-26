#!/bin/bash

##Create a text editor utility, using which you can
##Add a line at top## Add a line at bottom
##Add a line at specific line number
##Replace word
##Delete word
##Insert word
##Delete a line
##Delete a line containeing a word
##./otTextEditor addLineTop <file> <line>
##./otTextEditor addLineBottom <file> <line>
##./otTextEditor addLineAt <file> <linenumber> <line>
##/otTextEditor updateFirstWord <file> <word>
##./otTextEditor updateAllWords <file> <word>
##./otTextEditor insertWord <file> <word1> <word2> <word to be inserted>
##./otTextEditor deleteLine <file> <line no>
##./otTextEditor deleteLine <file> <line no> <word>
##Also come with your own features of text editor


function addLineTop {
	file=$1
	line=$2
	sed -i "1 i\ ${line} " ${file}
	
}

function addLineBottom {
	file=$1
	line=$2
	sed -i "$ i\ ${line} " ${file}
	

}

function addLineAt {
	file=$1
	lineNo=$2
	line=$3
	sed -i " ${lineNo} i\ ${line}" ${file}
	
}

function updateFirstWord {
	file=$1
	word=$2
	


}
function insertWord {
	


}

function deleteLine {
	file=$1
	lineNo=$2
	sed -e " ${lineNo}d" ${file}

}
function deleteWordinLine {
	file=$1
	lineNo=$2
	word=$3
	sed -n ${lineNo}p ${file} | sed -e  "s/\<${word}\>//g"


}

function textEditorUtility {
	action=$1
	

	
 if [[ "$action" == "addLineTop" ]]
    then
	    if [[ "$#" == 3 ]]
		    then
		    file=$2
		    line=$3
		    echo "[INFO] Got this action: ${action}, now going to add ${line} at begining of  ${file} " 
		    addLineTop ${file} ${line}
	    else 
	  	  echo "No of arguments Required is 3 i.e ${action} file line"
	    fi
 elif [[ "$action" == "addLineBottom" ]]
 then
 	if [[ "$#" == 3 ]]
 	then
	 	file=$2
		line=$3
	 	echo "[INFO] Got this action: ${action}, now going to add ${line} at bottom of  ${file} " 
		addLineBottom ${file} ${line} 
	else 
		echo "No of Arguments required is 3"
	fi
 elif [[ "$action" == "addLineAt" ]]
 then
    if [[ "$#" == 4 ]]
    then
    	 file=$2
    	 lineNo=$2
    	 line=$3
 	
 
	     echo "[INFO] Got this action: ${action}, now going to add ${line} at line no ${lineNo} of  ${file} " 
	     addLineAt ${file} ${lineNo} ${line} 
     else 
	     echo "no of aruments requires is 4 "
     fi 

 elif [[" $action" == "deleteLine" ]]	
 	then 
	 	if [[ "$#" == 3 ]]
	 	then
	 		file=$2
	 		line=$3
		 	echo "[INFO] Got this action: ${action}, now going to delte line no ${file} in ${line}"
		 	deleteLine ${file} ${line} 
	 	else 
		 	echo "No of arguments required is 3 "
	 	fi
 	
 elif  [[" $action" == "deleteWordinLine" ]]	
 	then 
	 	if [[ "$#" == 4 ]]
	 	then
		 	file=$2
		 	line=$3
		 	lineNo=$4
		 	echo "[INFO] Got this action: ${action}, now going to delete word  ${lineNo} in line no ${line} in ${file}"
		 	deleteWordinLine ${file} ${line} ${lineNo}
	 	else 
		 	echo "No of arguments required is 4 "
	 	fi
        
   fi
}
textEditorUtility $@


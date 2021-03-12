#!/bin/bash
## trainer.template
##{{fname}} is trainer of {{topic}} 
##./teplateEngine.sh <template file> fname=sandeep topic=linux
##sandeep is trainer of linux 

function createTemplate {
	fname=$1
	toppic=$2
	cat << EOF
	$fname is trainer of $toppic

EOF


}
function createFile {
        fname=$1
        toppic=$2
        file=$3
	createTemplate ${fname} ${toppic} > ${file} 
}

createFile $1 $2 $3

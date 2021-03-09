#!/bin/bash
name () {

  
  for (( i=0; i<5; ++i)); do
    echo $1
done
}
read x
name $x



 


#!/bin/bash
# vdKolk @ Scienta - 2019

# Create an arry with active containers in the "default" namespace
runningpods=($(kubectl get --no-headers=true pods --namespace default -o name | awk -F "/" '{print $2}'))

 for i in "${!runningpods[@]}"; do
   printf "%s\t%s\n" "$i" "${runningpods[$i]}"
 done
echo "999     cancel"

# Declare variable choice and assign value 998
choice=998

# Print to stdout
 echo -n "Make a choice: "

# Loop while the variable choice is equal 998
# Bash while loop
while [ $choice -eq 998 ]; do

# Read user input
read choice

# Connect to bash or not
if [ $choice -eq 999 ] ; then

    exit;

 else

  if [ $choice -ne 998 ] ; then

       echo "$(tput setaf 0)$(tput setab 2) podExec $(tput setaf 1) $(tput setab 7) "connecting to" ${runningpods[$choice]} "......." $(tput sgr 0)"
       kubectl exec --namespace default -it ${runningpods[$choice]} -- /bin/bash

     else
       choice = 998
       echo "Choose a number"
       
  fi
fi
done

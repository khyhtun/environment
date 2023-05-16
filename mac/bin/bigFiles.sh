#!/bin/bash
while true
do
echo -e "\n"
date
echo -e "ENG"
ls -lSh /Users/khine.htun/ePDM/ENG\ RELEASE/Content | head -11 | awk ' match($0, /[0-9]{8,9}/) { print $5 " --> " substr($0, RSTART, RLENGTH)}'
echo -e "MFG"
ls -lSh /Users/khine.htun/ePDM/MFG\ RELEASE/Content | head -11 | awk ' match($0, /[0-9]{8,9}/) { print $5 " --> " substr($0, RSTART, RLENGTH)}'
echo -e "NO STATUS"
ls -lSh /Users/khine.htun/ePDM/NO\ STATUS/Content | head -11 | awk ' match($0, /[0-9]{8,9}/) { print $5 " --> " substr($0, RSTART, RLENGTH)}'
sleep 60
done

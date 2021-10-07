#!/bin/bash
while true
do
echo -e "\n"
date
echo -e "ENG\t\t " `du -sh /Users/khine.htun/ePDM/ENG\ RELEASE | awk '{print $1 }'`
echo -e "MFG\t\t " `du -sh /Users/khine.htun/ePDM/MFG\ RELEASE | awk '{print $1 }'`
echo -e "NO STATUS\t " `du -sh /Users/khine.htun/ePDM/NO\ STATUS | awk '{print $1 }'`
sleep 60
done

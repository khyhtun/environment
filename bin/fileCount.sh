#!/bin/bash
while true
do
echo -e "\n"
date
echo -e "ENG\t\t\t" `ls -l /Users/khine.htun/ePDM/ENG\ RELEASE | wc -l`
echo -e "ENG/Content\t\t" `ls -l /Users/khine.htun/ePDM/ENG\ RELEASE/Content | wc -l`
echo -e "MFG\t\t\t" `ls -l /Users/khine.htun/ePDM/MFG\ RELEASE | wc -l`
echo -e "MFG/Content\t\t" `ls -l /Users/khine.htun/ePDM/MFG\ RELEASE/Content | wc -l`
echo -e "NO STATUS\t\t" `ls -l /Users/khine.htun/ePDM/NO\ STATUS | wc -l`
echo -e "NO STATUS/Content\t" `ls -l /Users/khine.htun/ePDM/NO\ STATUS/Content | wc -l`
sleep 60
done


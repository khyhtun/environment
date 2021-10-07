#!/bin/bash
export from="/Users/khine.htun/Downloads/ePDM_files/Khine\ EPDM\ Upload\ Test\ Files/1-10-2019/"
export to="/Users/khine.htun/IdeaProjects/ePDM/configuration"
cp -r "$from/ENG\ RELEASE" "$to/ENG\ RELEASE"
cp -r "$from/MFG\ RELEASE" "$to/MFG\ RELEASE"
cd $to/backup
rm -r ./*
cd $to/logs
rm -r ./*

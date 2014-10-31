#!/usr/bin/bash
if test -e $PWD/version; then
echo UnrealSetup `cat $PWD/version`; 
if test -d $PWD/Unreal3.2; then
echo er bestaat al een Unreal3.2
echo check welke version het is
if test -e $PWD/Unreal3.2/version then
if test `cat $PWD/Unreal3.2/version` = 3.2.10.4;then
echo Geen upgrade nodig ; exit ; else 
echo o dear u heeft nog een oudere versie
echo Laatste en meest recente versie van UnrealIRCD is 3.2.10.4 
echo gevonden versie is `cat $HOME/Unreal3.2/version`
echo maak backup van uw bestaande conf files
mkdir $PWD/backup
cp $PWD/Unreal3.2/*.conf $PWD/backup;fi
echo 'date' Backup *.conf files to $PWD/backup >> install.log; fi
else echo No version file found in $PWD; exit ;fi 

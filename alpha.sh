#!/usr/bin/bash
. $PWD/options.cfg
echo $setupdir
echo $Unrealdir
if test -d $Unrealdir; then
echo backup files for later useage
if test -d $setupdir/backup; then
cp $Unrealdir/*.conf $setupdir/backup
cp $Unrealdir/ircd.* $setupdir/backup; else 
echo backup not found in $setupdir
echo i will create one
mkdir $setupdir/backup
cp $Unrealdir/*.conf $setupdir/backup
cp $Unrealdir/ircd.* $setupdir/backup; fi 
echo Backup done; else 
echo $Unrealdir not found can not make backups;fi 

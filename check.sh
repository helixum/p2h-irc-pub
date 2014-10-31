#!/usr/bin/bash
. $PWD/options.cfg
echo Check.sh version $checkversion
echo check maps
echo $setupdir
if test -d $setupdir; then echo ben je blind? is al aanwezig ; else echo eh oke, niet aanwezig dus; exit; fi
echo $Unrealdir
if test -d $Unrealdir; then
echo succes $Unrealdir is aanwezig
echo backup files voor later gebruik
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

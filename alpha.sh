#!/usr/bin/bash
if test -e /home/$USER/p2h-irc-pub/options.cfg; then 
. /home/$USER/p2h-irc-pub/options.cfg
echo Check.sh version $checkversion
echo check maps
echo $setupdir
if test -d $setupdir; then echo ben je blind? is al aanwezig ; else echo eh oke, niet aanwezig dus; fi
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
else echo Configuratie file niet gevonden kan niet doorgaan met installeren; fi


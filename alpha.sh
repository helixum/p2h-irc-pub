#!/usr/bin/bash
if test -e $PWD/version; then
echo UnrealSetup `cat $PWD/version`; else echo No version file found in $PWD; exit ;fi 

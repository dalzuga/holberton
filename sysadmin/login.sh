#!/bin/bash

user=$1

if [ -f /Volumes/${user}/.bash_profile ];
then
    rsync -avz /Volumes/${user}/.bash_profile /Users/${user}/ # fetch .bash_profile
fi

#!/bin/bash

user=$1

if [ -f /Users/${user}/.bash_profile ];
then
    rsync -avz /Users/${user}/.bash_profile /Volumes/${user}/.bash_profile # save .bash_profile on logout
fi

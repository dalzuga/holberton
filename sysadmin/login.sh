#!/bin/bash
#ssh-keygen -t rsa -b 4096 -C "dalzuga@gmail.com"
#cat ~/.ssh/id_rsa.pub
#open https://github.com/settings/ssh

user=$3

if [ -f /Volumes/RoamingProfiles/${user}/.bash_profile ];
then
    rsync -avz /Volumes/RoamingProfiles/${user}/.bash_profile /Users/${user}/ # fetch .bash_profile
fi

#!/bin/bash
#ssh-keygen -t rsa -b 4096 -C "dalzuga@gmail.com"
#cat ~/.ssh/id_rsa.pub
#open https://github.com/settings/ssh

user=$3

if [ -f /Users/${user}/.bash_profile ];
then
    rsync -avz /Users/${user}/.bash_profile /Volumes/RoamingProfiles/${user}/ # save .bash_profile on logout
fi

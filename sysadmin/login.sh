#!/bin/bash
#ssh-keygen -t rsa -b 4096 -C "dalzuga@gmail.com"
#cat ~/.ssh/id_rsa.pub
#open https://github.com/settings/ssh

user=$3

mkdir -p /Users/Shared/${user}/

if [ -f /Users/Shared/${user}/.bash_profile ];
then
    cp /Users/Shared/${user}/.bash_profile /Users/${user}/.bash_profile
fi

#!/bin/bash
#ssh-keygen -t rsa -b 4096 -C "dalzuga@gmail.com"
#cat ~/.ssh/id_rsa.pub
#open https://github.com/settings/ssh

user=$3

mkdir -p /Users/Shared/${user}/

if [ -f /Users/Shared/${user}/.bash_profile ];
then
    cp /Users/${user}/.bash_profile /Users/Shared/${user}/ # save .bash_profile on logout
fi

if [ -x /Users/${user}/logonscript.sh ];
then
    cp /Users/${user}/logonscript.sh /Users/Shared/${user}/logonscript.sh # save custom script on logout
fi

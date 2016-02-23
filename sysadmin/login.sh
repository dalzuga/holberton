#!/bin/bash
#ssh-keygen -t rsa -b 4096 -C "dalzuga@gmail.com"
#cat ~/.ssh/id_rsa.pub
#open https://github.com/settings/ssh

user=$3

mkdir -p /Users/Shared/${user}/

if [ -f /Users/Shared/${user}/.bash_profile ];
then
    cp /Users/Shared/${user}/.bash_profile /Users/${user}/.bash_profile # fetch .bash_profile
fi

if [ -x /Users/Shared/${user}/logonscript.sh ];
then
    cp /Users/Shared/${user}/logonscript.sh /Users/${user}/logonscript.sh # fetch custom log on script
    /Users/${user}/logonscript.sh # execute script
fi

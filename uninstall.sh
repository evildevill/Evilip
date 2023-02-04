#!/bin/bash

#            ---------------------------------------------------
#                              Evilip Framework
#            ---------------------------------------------------
#                Copyright (C) <2020-2021>  <hackerwasii>
#

printf '\033]2;uninstall.sh\a'

G="\033[1;34m[*] \033[0m"
S="\033[1;32m[+] \033[0m"
I="\033[1;77m[i] \033[0m"
E="\033[1;31m[-] \033[0m"

if [[ $(id -u) != 0 ]]; then
   echo -e ""$E"Permission denied!"
   exit
fi

{
   rm /bin/Evilip
   rm /usr/local/bin/Evilip
   rm -rf ~/Evilip
   rm /etc/Evilip.conf
   rm /data/data/com.termux/files/usr/bin/Evilip
} &>/dev/null

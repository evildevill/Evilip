#!/bin/bash

#            ---------------------------------------------------
#                              Evilip Framework
#            ---------------------------------------------------
#                Copyright (C) <2020-2023>  <hackerwasii>
#

if [[ "$1" = "" ]]; then
    echo -e "Usage: server.sh [start|stop]"
else
    if [[ "$1" = "start" ]]; then
        {
            adb start-server
        } &>/dev/null
    elif [[ "$1" = "stop" ]]; then
        {
            adb disconnect
            adb kill-server
        } &>/dev/null
    else
        echo -e "Usage: server.sh [start|stop]"
    fi
fi

#!/bin/bash

#            ---------------------------------------------------
#                              Evilip Framework
#            ---------------------------------------------------
#                Copyright (C) <2020-2023>  <hackerwasii>
#

if [[ "$1" = "" ]]; then
    echo -e "Usage: dctl.sh [connect|disconnect] <target>"
else
    if [[ "$1" = "connect" ]]; then
        if [[ "$2" = "" ]]; then
            echo -e "Usage: dctl.sh [connect|disconnect] <target>"
        else
            {
                adb connect $2
                sleep 1
            } &>/dev/null
        fi
    elif [[ "$1" = "disconnect" ]]; then
        if [[ "$2" = "" ]]; then
            echo -e "Usage: dctl.sh [connect|disconnect] <target>"
        else
            {
                adb disconnect $2
            } &>/dev/null
        fi
    else
        echo -e "Usage: dctl.sh [connect|disconnect] <target>"
    fi
fi

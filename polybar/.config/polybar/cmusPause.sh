#!/bin/bash

status=$(echo -n $(cmus-remote -C status | grep "status" | cut -c 8-))

if [[ $status = "paused" ]]; then
        echo 
elif [[ $status = "playing" ]]; then
        echo 
else
        echo
fi

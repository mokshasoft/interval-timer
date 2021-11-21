#!/bin/bash

TRAIN=$1
REST=$2

gong () {
    NBR=$1
    for i in $(seq 1 $NBR)
    do
        play -q gong.flac &
	sleep .3
    done
}

while [ true ] ; do
    echo "active"
    gong 3 &
    sleep 10
    echo -e "rest\n"
    gong 2 &
    sleep 5
done

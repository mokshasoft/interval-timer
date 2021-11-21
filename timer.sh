#!/bin/bash

TRAIN=${1:-300}
REST=${2:-60}

gong () {
    NBR=$1
    for i in $(seq 1 $NBR)
    do
        play -V0 -q gong.flac &
	sleep .3
    done
}

while [ true ] ; do
    echo "active"
    gong 3 &
    sleep $TRAIN
    echo -e "rest\n"
    gong 2 &
    sleep $REST
done

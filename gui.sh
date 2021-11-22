#!/bin/sh

SELECTION=$(yad --form \
  --field="Active minutes"!"Number of minutes in the active period":NUM "5"\
  --field="Resting minutes"!"Number of minutes in the resting period":NUM "1")

arr=(${SELECTION//"|"/ })
./timer.sh ${arr[0]} ${arr[1]}

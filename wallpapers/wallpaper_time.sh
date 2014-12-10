#!/bin/bash
# Change the wallpaper according to time of day
# Script Source: http://www.reddit.com/user/orfix
# Wallpapers Source: http://imgur.com/a/VZ9H2 

TIME=$(date +"%H")
FOLDER='~/ivar/dotfiles/wallpapers'
export DISPLAY=:0.0 # run "env | grep DISPLAY"

case ${TIME} in
    0[5-7])         feh --bg-fill ${FOLDER}/2.png ;;
    0[8-9]|1[0-1])  feh --bg-fill ${FOLDER}/3.png ;;
    1[2-6])         feh --bg-fill ${FOLDER}/4.png ;;
    1[7-9]|20)      feh --bg-fill ${FOLDER}/5.png ;;
    21)             feh --bg-fill ${FOLDER}/6.png ;;
    2[2-3]|0[0-4])  feh --bg-fill ${FOLDER}/7.png ;;
esac

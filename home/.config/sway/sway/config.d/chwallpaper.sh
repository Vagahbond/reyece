#!/bin/bash


# This script changes wallpaper and should be called by thunar file manager 


filename=$(basename $1)

file_ext=${filename##*.} 

cp $1 ~/.config/sway/config.d/wallpaper.${file_ext}
sed -i '$ d' ~/.config/sway/config.d/wallpaper.conf;echo  "output * bg ./wallpaper.${file_ext} fill" >> ~/.config/sway/config.d/wallpaper.conf
sway reload

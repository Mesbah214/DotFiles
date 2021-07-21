#!/bin/bash

TIME=5000
IMG_PATH=/home/zero/Pictures/screenshots/


prog="
---Local screenshots (saved at IMG_PATH)---
1.quick_fullscreen
2.section_screen
3.delayed_screen
"

cmd=$(dmenu  -l 20   -p 'Choose Screenshot Type'   <<< "$prog")

cd $IMG_PATH
case ${cmd%% *} in

	1.quick_fullscreen) maim -ud 1 $(date '+%Y-%m-%d-@%H-%M-%S'.png) && notify-send -u low -t $TIME 'maim' 'Fullscreen taken and saved'  ;;
	2.section_screen)	maim -us  $(date '+%Y-%m-%d-@%H-%M-%S'.png) && notify-send -u low -t $TIME 'maim' 'Screenshot of section saved'    ;;
	3.delayed_screen) maim -ud 6 $(date '+%Y-%m-%d-@%H-%M-%S'.png) && notify-send -u low -t $TIME 'maim' 'Fullscreen taken and saved'  ;;

  	*)		exec "'${cmd}'"  ;;
esac

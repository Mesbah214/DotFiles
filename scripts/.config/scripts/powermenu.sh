#!/bin/bash

chosen=$(echo -e "[Cancel]\nShutdown\nReboot\nSuspend\nLock" | dmenu)

if [[ $chosen = "Shutdown" ]]; then
	systemctl poweroff
elif [[ $chosen = "Reboot" ]]; then
	systemctl reboot
elif [[ $chosen = "Suspend" ]]; then
	systemctl suspend
elif [[ $chosen = "Lock" ]]; then
  slock
elif [[ $chosen = 'Cancel' ]]; then
  return
fi

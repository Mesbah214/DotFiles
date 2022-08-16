#!/bin/bash

# Notify when below this percentage
warning_level=20

# How often to check battery status, in minutes
check_interval=5

while true; do
  battery_level=$(acpi -b \
    | cut -d, -f2 | cut --characters=2,3,4 \
    | sed 's/%//g')
  charging=$(acpi -b | grep -c "Charging")

  # When battery is low, and not already charging
  if [ $battery_level -lt $warning_level ] &&
     [ $charging -eq 0 ]
  then
    notify-send " Low battery: ${battery_level}% " \
      " Plug into mains power " -t 8000
  fi
  
  sleep ${check_interval}m
done

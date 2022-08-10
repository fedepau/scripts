#!/bin/bash

temperature=$(acpi -V | grep -m 1 "Thermal 0" | awk '{print $4}')
temperature_int=$(printf "%.0f" $temperature)

if [ "$temperature_int" -gt "80" ]; then
	status=""
elif [ "$temperature_int" -gt "60" ]; then
	status=""
elif [ "$temperature_int" -gt "40" ]; then
	status=""
elif [ "$temperature_int" -gt "20" ]; then
	status=""
elif [ "$temperature_int" -gt "0" ]; then
	status=""
else
	status=""
fi

echo "$status" "$temperature"°

#!/bin/bash

BAT1=$(acpi -b | grep -E -o '[0-9][0-9]' | sed -n '1 p')
BAT2=$(acpi -b | grep -E -o '[0-9][0-9]' | sed -n '2 p')
BAT_TOT=$(($BAT1+$BAT2))

# Full and short texts
echo "⚡BAT: $BAT1% + $BAT2%"
#echo $BAT_TOT

# Set urgent flag below 5% or use orange below 20%
[ ${BAT_TOT%?} -le 5 ] && exit 33
[ ${BAT_TOT%?} -le 20 ] && echo "#FF8000"

exit 0

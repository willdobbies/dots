#!/bin/bash

# Get battery status
BAT1=$(acpi -b | grep -E -o '([0-9]+)%' | sed -n '1 p')
BAT1I=$(echo $BAT1 | grep -E -o '([0-9]+)')

BAT2=$(acpi -b | grep -E -o '([0-9]+)%' | sed -n '2 p')
BAT2I=$(echo $BAT2 | grep -E -o '([0-9]+)')

BAT_TOT=$(($BAT1I + $BAT2I))
BAT_WARN=$(($BAT_TOT / 8))
BAT_CRIT=$(($BAT_TOT / 15))

# Check charging status / set icons
IS_CHARGING=$(acpi -b | grep -E -o 'Charging')

if [ "$IS_CHARGING" == "Charging" ]; then
    ICON="⚡"
else
    ICON="🔋"
fi

# Set urgent flag below 5% or use orange below 20%
if [ ${BAT_TOT} -le ${BAT_WARN} ]; then
    ICON="🪫"
    BG_COLOR="#FF8000"
fi

# Set status text
echo "$ICON bat: $BAT1 + $BAT2 $BG_COLOR"

# ?
if [ ${BAT_TOT%?} -le ${BAT_CRIT} ]; then 
    exit 33
fi

exit 0

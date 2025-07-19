#!/usr/bin/sh

# Thinkpad settings
if [ -n "$(xinput list --name-only | grep 'Synaptics TM3276-022')" ]; then
    xinput set-prop 'Synaptics TM3276-022' 'libinput Disable While Typing Enabled' 0
    xinput set-prop 'Synaptics TM3276-022' 'libinput Scrolling Pixel Distance' 50
    xinput set-prop 'Synaptics TM3276-022' 'libinput Tapping Enabled' 0
    xinput set-prop 'Synaptics TM3276-022' 'libinput Natural Scrolling Enabled' 1
fi

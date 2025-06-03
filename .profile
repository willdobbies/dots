# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

# Force gnome-like theme for qt apps
export QT_QPA_PLATFORMTHEME=gtk3
export QT_STYLE_OVERRIDE=adwaita-dark
export QT_WAYLAND_DECORATION=adwaita-dark

# Thinkpad settings
if [ -n "$(xinput list --name-only | grep 'Synaptics TM3276-022')" ]; then
    xinput set-prop 'Synaptics TM3276-022' 'libinput Disable While Typing Enabled' 0
    xinput set-prop 'Synaptics TM3276-022' 'libinput Scrolling Pixel Distance' 50
    xinput set-prop 'Synaptics TM3276-022' 'libinput Tapping Enabled' 0
    xinput set-prop 'Synaptics TM3276-022' 'libinput Natural Scrolling Enabled' 1
fi

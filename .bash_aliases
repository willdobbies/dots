# WSL config
#export GDK_SCALE=3
#export GDK_DPI_SCALE=0.75

# Vim mode
bind -m vi-command 'Control-l: clear-screen'
bind -m vi-insert 'Control-l: clear-screen'

# Useful bash stuff
source "$HOME/.config/nnn/quitcd.sh"
source "$HOME/.config/yazi/quitcd.sh"
source "/usr/share/doc/fzf/examples/key-bindings.bash"

# Paths
export EDITOR='/usr/bin/nvim'
export PATH="$PATH:$HOME/.local/bin"

# Alias
alias fd="fdfind"
alias fm="n"

# Python venv
export VIRTUAL_ENV_DISABLE_PROMPT=1
source "$HOME/.local/venv/bin/activate"
export NNN_PLUG="f:finder;o:fzopen;c:fzcd;"
export MANPAGER='nvim +Man!'

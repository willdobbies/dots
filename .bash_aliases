# Paths
export PATH="$PATH:$HOME/.local/bin"

# Defaults
export MANPAGER='nvim +Man!'
export EDITOR='/usr/bin/nvim'

# Python venv
export VIRTUAL_ENV_DISABLE_PROMPT=1
source "$HOME/.local/venv/bin/activate"

# FZF
source "/usr/share/doc/fzf/examples/key-bindings.bash"

# NNN
source "$HOME/.config/nnn/quitcd.sh"
export NNN_PLUG="f:finder;o:fzopen;c:fzcd;"

# Yazi
source "$HOME/.config/yazi/quitcd.sh"

# Alias
alias fd="fdfind"
alias fm="n"

# Keybinds
bind -m vi-command 'Control-l: clear-screen'
bind -m vi-insert 'Control-l: clear-screen'

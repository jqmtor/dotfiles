# set history variables
export HISTSIZE=2000
export SAVEHIST=$HISTSIZE
HISTFILE="$HOME/.zsh_history"

# record commands to the history file as soon as they are inserted
setopt inc_append_history

setopt hist_ignore_all_dups

# do not record commands preceded by space
setopt hist_ignore_space

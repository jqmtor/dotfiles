# Make vim the default editor.
export EDITOR='vim';

# set history variables
export HISTSIZE=32768
export SAVEHIST=$HISTSIZE
HISTFILE="$HOME/.zsh_history"

# Prefer US English and use UTF-8.
export LANG='en_US.UTF-8';
export LC_ALL='en_US.UTF-8';

# Don’t clear the screen after quitting a manual page.
export MANPAGER='less -X';

# iTerm
export TERM="xterm-256color"

# ls command
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

# Golang
# GOPATH is exported in .path instead

# Add GNU utilities man entries
export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"
export MANPATH="/usr/local/opt/gnu-sed/libexec/gnuman:$MANPATH"
export MANPATH="/usr/local/opt/findutils/libexec/gnuman:$MANPATH"

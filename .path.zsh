# Pre-compute the brew prefix because it's slow
export BREW_PREFIX="$(brew --prefix)"

# Golang
export GOPATH=$HOME/src/go
export PATH="$PATH:$GOPATH/bin"

export LIBRARY_PATH="$LIBRARY_PATH:/usr/local/lib"

# Add my git subcommands to the path
export PATH="$PATH:$HOME/.git_subcommands"

# Add GNU utilities to path to use their original names (and not the -g prefix)
export PATH="$BREW_PREFIX/opt/coreutils/libexec/gnubin:$PATH"
export PATH="$BREW_PREFIX/opt/gnu-sed/libexec/gnubin:$PATH"
export PATH="$BREW_PREFIX/opt/findutils/libexec/gnubin:$PATH"
export PATH="$BREW_PREFIX/opt/grep/libexec/gnubin:$PATH"

# Add jenv to the path
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

# Golang
export GOPATH=$HOME/src/go
export PATH="$PATH:$GOPATH/bin"

# Rust
export PATH="$PATH:$HOME/.cargo/bin"

# Add GNU utilities to path to use their original names (and not the -g prefix)
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
export PATH="/usr/local/opt/gnu-sed/libexec/gnubin:$PATH"
export PATH="/usr/local/opt/findutils/libexec/gnubin:$PATH"

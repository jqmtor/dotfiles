# Golang
export GOPATH=$HOME/src/go
export PATH="$PATH:$GOPATH/bin"

# Rust
export PATH="$PATH:$HOME/.cargo/bin"
# For Rust Racer
export RUST_SRC_PATH="$(rustc --print sysroot)/lib/rustlib/src/rust/src"

export LIBRARY_PATH="$LIBRARY_PATH:/usr/local/lib"

# Add GNU utilities to path to use their original names (and not the -g prefix)
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
export PATH="/usr/local/opt/gnu-sed/libexec/gnubin:$PATH"
export PATH="/usr/local/opt/findutils/libexec/gnubin:$PATH"

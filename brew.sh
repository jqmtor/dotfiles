#!/usr/bin/env bash

# Assumes that Homebrew is installed, since the process to add a SSH key to
# GitHub required it.

# Install Homebrew formulae and casks
brew bundle

# Install fzf's useful keybindings and fuzzy completion
$(brew --prefix)/opt/fzf/install

# Install Spacemacs (requires Emacs to be previously installed)
git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d

# Switch to using zsh as default shell
if ! fgrep -q '/opt/homebrew/bin/zsh' /etc/shells; then
  echo '/opt/homebrew/bin/zsh' | sudo tee -a /etc/shells;
  chsh -s /opt/homebrew/bin/zsh;
fi;

# Install Vim Plug
## For Vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Install parinfer-rust from source and moves it to ~/.emacs.d/parinfer-rust
# This is required for Mx Macs, and applies the solution described in this
# issue:
# https://github.com/justinbarclay/parinfer-rust-mode/issues/41
#
# This assumes that:
# - rust is installed
# - ~/.spacemacs sets the parinfer-rust-library variable to the destination
#   location of the copy command.
git clone git@github.com:eraserhd/parinfer-rust.git /tmp/parinfer-rust
(cd /tmp/parinfer-rust && cargo build --release --features emacs)
cp /tmp/parinfer-rust/target/release/libparinfer_rust.dylib ~/.emacs.d/parinfer-rust/libparinfer_rust.dylib

# Install mermaid-cli
# This assumes that:
# - npm is installed
npm install -g @mermaid-js/mermaid-cli

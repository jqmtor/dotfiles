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

# Install rustup
curl https://sh.rustup.rs -sSf | sh

# Install Vim Plug
## For Vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# The following are all meant to improve the Python mode on Spacemacs and are referred to on the
# documentation for that layer.
# See https://github.com/syl20bnr/spacemacs/tree/master/layers/%2Blang/python
# To enable syntax checking for python code on Spacemacs
pip install flake8
# To supress unused imports easily
pip install autoflake

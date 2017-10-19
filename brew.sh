#!/usr/bin/env bash

# Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install Homebrew formulae and casks
brew bundle

# Install Spacemacs (requires Emacs to be previously installed)
git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d

# Install Modern Make
go get github.com/tj/mmake/cmd/mmake

# Switch to using zsh as default shell
if ! fgrep -q '/usr/local/bin/zsh' /etc/shells; then
  echo '/usr/local/bin/zsh' | sudo tee -a /etc/shells;
  chsh -s /usr/local/bin/zsh;
fi;

install_consolas_font () {
    brew install cabextract
    cd ~/Downloads
    mkdir consolas
    cd consolas
    curl -O http://download.microsoft.com/download/f/5/a/f5a3df76-d856-4a61-a6bd-722f52a5be26/PowerPointViewer.exe
    cabextract PowerPointViewer.exe
    cabextract ppviewer.cab
    open CONSOLA*.TTF
}

install_consolas_font

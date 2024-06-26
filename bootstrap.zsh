#!/usr/bin/env zsh

cd "$(dirname "${BASH_SOURCE}")";

git pull origin main;

function doIt() {
	rsync --exclude ".git/" \
		--exclude ".DS_Store" \
		--exclude ".osx" \
		--exclude "bootstrap.sh" \
		--exclude "README.md" \
		--exclude "LICENSE-MIT.txt" \
		-avh --no-perms . ~;
	source ~/.zshrc;
}

if [ "$1" = "--force" ] || [ "$1" = "-f" ]; then
	doIt;
else
	vared -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -c reply;
	echo "";
	if [[ $reply =~ ^[Yy]$ ]]; then
		doIt;
	fi;
fi;
unset reply;
unset doIt;

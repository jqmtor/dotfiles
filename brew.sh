#!/usr/bin/env bash

# Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install Homebrew formulae and casks
brew bundle

# Install Modern Make
go get github.com/tj/mmake/cmd/mmake

# Switch to using zsh as default shell
if ! fgrep -q '/usr/local/bin/zsh' /etc/shells; then
  echo '/usr/local/bin/zsh' | sudo tee -a /etc/shells;
  chsh -s /usr/local/bin/zsh;
fi;

# Generate SSH key
# ssh_key_file_name=$HOME/.ssh/id_rsa
# ssh_pub_key_file_name=$ssh_key_file_name.pub
# read -p "SSH key email: " ssh_key_email
# read -p "Name for public key on remote services: " remote_key_name
# ssh-keygen -t rsa -f $ssh_key_file_name -C $ssh_key_email

# # Upload SSH key to GitHub
# read -p "GitHub username: " gh_username
# read -p "GitHub one-time password: " gh_otp
# curl -u $gh_username \
# 		 -H 'X-GitHub-OTP: $gh_otp' \
#      -d '{ \
# 			 "title": "$remote_key_name", \
# 		   "key": "$ssh_pub_key_file_name" \
# 		 }' \
#      https://api.github.com/user/keys

# # Upload SSH key to Bitbucket
# read -p "Bitbucket username: " bitbucket_username
# curl -v -u $bitbucket_username \
# 		 --data-urlencode 'key=$ssh_pub_key_file_name&label=$remote_key_name' \
# 		 https://api.bitbucket.org/1.0/users/$bitbucket_username/ssh-keys

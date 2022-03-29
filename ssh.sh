#!/usr/bin/env bash

set -euxo pipefail
ssh_key_file_name=$HOME/.ssh/id_rsa

install_deps () {
  # Install Homebrew
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  brew install gh
}

generate_ssh_key () {
    read -p "SSH key email: " ssh_key_email
    read -p "Name for public key on remote services: " remote_key_name
    ssh-keygen -t rsa -f $ssh_key_file_name -C $ssh_key_email
}

upload_key_to_github () {
  gh auth login
  gh ssh-key add $(ssh_key_file_name).pub

}

install_deps
generate_ssh_key
upload_key_to_github

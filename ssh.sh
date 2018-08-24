#!/usr/bin/env bash

set -euxo pipefail

generate_ssh_key () {
    ssh_key_file_name=$HOME/.ssh/id_rsa
    read -p "SSH key email: " ssh_key_email
    read -p "Name for public key on remote services: " remote_key_name
    ssh-keygen -t rsa -f $ssh_key_file_name -C $ssh_key_email
}

ssh_key_post () {
    cat <<EOF
{
	"title": "$remote_key_name",
	"key": "$(cat $ssh_key_file_name.pub)"
}
EOF
}

upload_key_to_github () {
    read -p "GitHub username: " gh_username
    read -rsp "GitHub password: " gh_password
    read -p "GitHub one-time password: " gh_otp
    curl -u $gh_username:$gh_password \
		     -H "X-GitHub-OTP: $gh_otp" \
         -d "$(ssh_key_post)" \
         https://api.github.com/user/keys
}

generate_ssh_key
upload_key_to_github

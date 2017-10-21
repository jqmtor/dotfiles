generate_ssh_key () {
    ssh_key_file_name=$HOME/.ssh/id_rsa
    ssh_pub_key_file_name=$ssh_key_file_name.pub
    read -p "SSH key email: " ssh_key_email
    read -p "Name for public key on remote services: " remote_key_name
    ssh-keygen -t rsa -f $ssh_key_file_name -C $ssh_key_email
}

upload_key_to_github () {
    read -p "GitHub username: " gh_username
    read -p "GitHub one-time password: " gh_otp
    curl -u $gh_username \
		     -H 'X-GitHub-OTP: $gh_otp' \
         -d '{ \
			     "title": "$remote_key_name", \
		       "key": "$ssh_pub_key_file_name" \
		     }' \
         https://api.github.com/user/keys
}

generate_ssh_key
upload_key_to_github

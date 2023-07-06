alias grep='grep --color'

# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en0"

# Show active network interfaces
alias ifactive="ifconfig | pcregrep -M -o '^[^\t:]+:([^\n]|\n\t)*status: active'"

# Print each PATH entry on a separate line
alias path='echo -e ${PATH//:/\\n}'

# Pipe my public key to my clipboard.
alias pubkey="more ~/.ssh/id_rsa.pub | pbcopy | echo '=> Public key copied to pasteboard.'"

alias gemacs='open -a Emacs "$@"'

alias uuidgen='uuidgen | tr "[:upper:]" "[:lower:]" | tr -d "\n" | pbcopy | echo "=> New UUID copied to pasteboard."'

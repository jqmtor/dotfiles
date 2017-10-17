autoload -U colors && colors

# enable vcs_info
autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git svn

# configure vcs_info string
zstyle ':vcs_info:git*' formats " [%{$fg[blue]%}%b%{$reset_color%}%m%u%c%{$reset_color%}]"

# call it in a hook function that run before each prompt (precmd)
precmd() {
    # sets the iterm tab title to current dir
    echo -ne "\e]1;${PWD##*/}\a"
    vcs_info
}

# turn on command substitution on the prompt
setopt prompt_subst

current_dir() {
    echo "${PWD##*/}"
}

PROMPT='%{$fg[cyan]%}$(current_dir)%{$reset_color%} %${vcs_info_msg_0_} ❯ '
RPROMPT='%{$fg[black]%}%D{%H:%M:%S %d-%m-%y}%{$reset_color%}'

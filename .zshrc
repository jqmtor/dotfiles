# Add `~/bin` to the `$PATH`
# TODO: needed?
export PATH="$HOME/bin:$PATH";

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,prompt,exports,history,man,aliases,fasd,functions,chruby,extra}.zsh; do
    [[ -s "$file" ]] && source "$file";
done;
unset file;

# initialize autocomplete here, otherwise functions won't be loaded
autoload -U compinit
compinit

# allow [] on commands like rake
unsetopt nomatch

fpath=(/usr/local/share/zsh-completions "$HOME/.zfunctions" $fpath)

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/local/share/zsh-history-substring-search/zsh-history-substring-search.zsh

# use emacs style editing for the console
bindkey -e

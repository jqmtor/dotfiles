# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Add `~/bin` to the `$PATH`
# TODO: needed?
export PATH="$HOME/bin:$PATH";

# Add the M1 Homebrew path to the PATH.
# This is not required after the Homebrew shellenv command is run on .zshrc,
# but ensures that the command runs without hardcoding the path across
# M1 and Intel Macs.
export PATH="/opt/homebrew/bin:$PATH"
eval "$(brew shellenv)"

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,prompt,exports,history,man,aliases,fasd,fzf,functions,chruby,extra}.zsh; do
    [[ -s "$file" ]] && source "$file";
done;
unset file;

# initialize autocomplete here, otherwise functions won't be loaded
autoload -U compinit
compinit

# allow [] on commands like rake
unsetopt nomatch

FPATH="$HOME/.zfunctions":$FPATH

if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
  autoload -Uz compinit
  compinit
fi

source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $(brew --prefix)/share/zsh-history-substring-search/zsh-history-substring-search.zsh

# use Vim style editing for the console
bindkey -v
# use fd to exit insert mode
bindkey -M viins 'fd' vi-cmd-mode
# make backspace work as expected when going from command mode to insert mode
bindkey "^?" backward-delete-char

# enable shims and autocompletion
eval "$(pyenv init -)"

# enable using <Esc>v to edit current shell in Vim.
# this is only required because of using zsh.
autoload -U edit-command-line
zle -N edit-command-line
bindkey -M vicmd v edit-command-line

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

DISABLE_AUTO_TITLE="true"

precmd() {
  # sets the tab title to current dir
  echo -ne "\e]1;${PWD##*/}\a"
}

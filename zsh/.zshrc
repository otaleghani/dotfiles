eval "$(ssh-agent -s)" > /dev/null 2>&1
eval "$(starship init zsh)"
ssh-add ~/.ssh/github > /dev/null 2>&1
export COLORTERM="truecolor"

#### STARTS DOTFILES
alias -- dotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
#### ENDS DOTFILES


#### STARTS autosuggestion
source ~/.zplug/init.zsh
zplug "zsh-users/zsh-autosuggestions"
zplug "jeffreytse/zsh-vi-mode"

if ! zplug check; then
  zplug install
fi

zplug load
autoload -U compinit && compinit

HISTSIZE="10000"
SAVEHIST="10000"
HISTFILE="$HOME/.zsh_history"
mkdir -p "$(dirname "$HISTFILE")"

setopt HIST_FCNTL_LOCK
unsetopt APPEND_HISTORY
setopt HIST_IGNORE_DUPS
unsetopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
unsetopt HIST_EXPIRE_DUPS_FIRST
setopt SHARE_HISTORY
unsetopt EXTENDED_HISTORY

bindkey "^f" autosuggest-accept
bindkey "^e" autosuggest-execute
bindkey "^c" autosuggest-clear
bindkey "^w" autosuggest-fetch
# bindkey "^" autosuggest-disable
# bindkey "^" autosuggest-enable
# bindkey "^" autosuggest-toggle

#### ENDS autosuggestion

alias -- syse='nvim ~/workspace/flake'
alias -- sysu='sudo nixos-rebuild switch --flake ~/workspace/flake'
alias -- cat=bat
alias -- vim=nvim
alias -- ls=eza


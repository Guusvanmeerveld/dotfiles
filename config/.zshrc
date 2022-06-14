# Instant prompt
# source "${XDG_CACHE_HOME:-~/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"

# ZSH var
export ZSH=~/.oh-my-zsh

# Theme
ZSH_THEME="powerlevel10k/powerlevel10k"

export EDITOR="nvim"

# Plugins
plugins=(git colorize docker yarn debian vscode sudo alias-finder archlinux zsh-histdb zsh-autosuggestions)

# Oh-my-zsh
source $ZSH/oh-my-zsh.sh

# Fzf variables
if type rg &> /dev/null; then
  export FZF_DEFAULT_COMMAND='rg --files'
  export FZF_DEFAULT_OPTS='-m --height 50% --border'
fi

# Keybinds
bindkey "^z" undo
bindkey "^y" redo
bindkey "^H" backward-kill-word
bindkey "^ " autosuggest-accept

# Aliases
source ~/.aliases

# Powerlevel10k
source ~/.p10k.zsh

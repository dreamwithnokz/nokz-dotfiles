export ZSH="/home/dreamwithnokz/.oh-my-zsh"

zle -N autosuggest-accept

ZSH_THEME="agnoster"

plugins=(git history-substring-search zsh-syntax-highlighting zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

bindkey '^l' autosuggest-accept
bindkey '^k' history-substring-search-up
bindkey '^j' history-substring-search-down

alias usb-keyboard="xset led on && xmodmap ~/.Xmodmap"

export FZF_DEFAULT_COMMAND='fd --ignore-file=.gitignore'
export PATH=$PATH:/home/dreamwithnokz/.cargo/bin

source /usr/share/nvm/init-nvm.sh
eval "$(starship init zsh)"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

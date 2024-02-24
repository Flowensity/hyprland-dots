# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Theme
ZSH_THEME="arrow"

# Plugins
plugins=(
	git
	zsh-syntax-highlighting
  history-substring-search
	zsh-autosuggestions
	)

# Initialize oh-my-zsh
source $ZSH/oh-my-zsh.sh

# Enable auto-correction.
setopt HIST_IGNORE_DUPS
ENABLE_CORRECTION="true"

# Set history format
HIST_STAMPS="mm/dd/yyyy"

# Preferred editor
export EDITOR='vim'

# Aliases
alias ll='ls -l'
alias la='ls -a'
alias lh='ls -lh'
alias lla='ls -la'

# Enhanced grep
alias grep='grep --color=auto'
# Clear the terminal screen
alias cls='clear'

alias v="nvim"

alias zshconfig="vim ~/.zshrc"

neofetch

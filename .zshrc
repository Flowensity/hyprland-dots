# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Theme
ZSH_THEME="awesomepanda"

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

alias vim="nvim"

alias zshconfig="vim ~/.zshrc"

neofetch

function ya() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXX")"
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

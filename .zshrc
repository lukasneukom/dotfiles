# ENVIRONMENT
export PATH="/opt/homebrew/bin:$PATH"
export CLICOLOR=1
export EDITOR=vim

# ZSH OPTIONS
setopt autocd
setopt nocaseglob

# ALIASES
alias config='/opt/homebrew/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME'
alias notes='/opt/homebrew/bin/git --git-dir=$HOME/.notes --work-tree=$HOME/Library/Mobile\ Documents/iCloud\~md\~obsidian/Documents/Vault'
alias ll='ls -Flah'  # --classify --all --human-readable
alias man=xman

# FUNCTIONS
function xman {
    open x-man-page://$1
}

# COMPLETION
autoload -Uz compinit
compinit

export PATH="/opt/homebrew/bin:$PATH"

# ALIASES
alias config='/opt/homebrew/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME'
alias ll='ls -Flah'  # --classify --all --human-readable
alias man=xman

# ENVIRONMENT
export CLICOLOR=1
export EDITOR=vim

# FUNCTIONS
function xman {
    open x-man-page://$1
}

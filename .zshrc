# ENVIRONMENT
export PATH="/opt/homebrew/bin:$PATH"
export PATH="/Users/lukasneukom/Scripts/Shell:$PATH"
export CLICOLOR=1
export EDITOR=vim

# ZSH OPTIONS
setopt autocd
setopt nocaseglob

# HISTORY
HISTFILE=${ZDOTDIR:-$HOME}/.zsh_history
HISTSIZE=20000 # lines remembered per session
SAVEHIST=20000 # lines stored in history file

setopt share_history # share history across sessions
setopt hist_expire_dups_first # expire duplicates first
setopt hist_ignore_dups # do not store duplicates
setopt hist_find_no_dups # ignore duplicates when searching
setopt hist_reduce_blanks # remove blank lines from history
setopt hist_ignore_space # ignore lines starting with a space

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

# PROMPT
preprompt() {
  print
  print -rP "%F{blue}%~%f"
}

add-zsh-hook precmd preprompt

export PS1="❯ "

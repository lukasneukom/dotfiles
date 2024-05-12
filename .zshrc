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
alias clear="unset NEWLINE_BEFORE_PROMPT && clear"

# FUNCTIONS
function xman {
    open x-man-page://$1
}

# COMPLETION
autoload -Uz compinit
compinit

# PROMPT
source /opt/homebrew/Cellar/git/2.45.0/etc/bash_completion.d/git-prompt.sh
GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_DESCRIBE_STYLE="branch"
GIT_PS1_SHOWUPSTREAM="verbose"

preprompt() {
  if [ -z "$NEWLINE_BEFORE_PROMPT" ]; then
    NEWLINE_BEFORE_PROMPT=1
  elif [ "$NEWLINE_BEFORE_PROMPT" -eq 1 ]; then
    print
  fi

  if [ "$(git rev-parse --is-inside-work-tree 2>/dev/null)" = "true" ]; then
    GITING_IT=" Git"
  else
    GITING_IT=""
  fi

  print -rP "%B%F{blue}%~%f%b" $(__git_ps1 "(%s)")
}

add-zsh-hook precmd preprompt

export PS1="%(?.%F{green}❯%f .%F{red}Error %? ❯%f "

export ARCHFLAGS="-arch x86_64"
# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login exists.

export PATH="$HOME/.rbenv/shims:$HOME/.rbenv/bin:/usr/local/bin:$PATH"
export BUNDLER_EDITOR=mvim

# don't put duplicate lines in the history. See bash(1) for more options
export HISTCONTROL=ignoredups
# ... and ignore same sucessive entries.
export HISTCONTROL=ignoreboth

export HISTFILESIZE=1000000000
export HISTSIZE=1000000

if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi

GIT_PS1_SHOWDIRTYSTATE=true
PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;33m\]\w\[\033[00m\]\[\033[01;31m\]$(__git_ps1 " {%s}")\[\033[00m\]\$ '

# PS1='[\u@mbp \w$(__git_ps1)]\$ '

alias gitx='gitx --all'
alias ruby='ruby -rubygems'
alias be='bundle exec'
alias wip='bundle exec cucumber -p wip'
alias please='sudo'

# Custom git aliases
alias ga='git add'
alias gb='git branch'
alias gco='git checkout'
alias gk='git kompare'
alias gst='git status'
alias gitk='gitk --all'

alias e='mate'
alias ls='ls -F'
alias ll='ls -l'
alias refresh="cd && cd ~-"

# Enable completion for custom git aliases
complete -o default -o nospace -F _git_add ga
complete -o default -o nospace -F _git_branch gb
complete -o default -o nospace -F _git_checkout gco
complete -o default -o nospace -F _git_diff gk

source ~/.rails.bash

export PGDATABASE=postgres

export RUBY_HEAP_MIN_SLOTS=1000000
export RUBY_HEAP_SLOTS_INCREMENT=1000000
export RUBY_HEAP_SLOTS_GROWTH_FACTOR=1
export RUBY_GC_MALLOC_LIMIT=1000000000
export RUBY_HEAP_FREE_MIN=500000

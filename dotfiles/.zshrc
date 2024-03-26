# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"

DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

autoload -U colors && colors

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# User configuration

export TERM=xterm-256color
export HOSTALIASES=~/.hosts
export BROWSER=/usr/bin/firefox

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

## Running Emacs
# Preferred editor for local and remote sessions
export EDITOR=vim
export ALTERNATE_EDITOR=""

## Aliases
alias watch='watch -d'
alias watch1='watch -d -n 0,1'
alias reload='source ~/.zshrc'

# Emacs

#alias e="emacs -nw"
alias e="emacsclient -t -a ''"

# Prompt
alias hprompt='emacsPS1="($(hostname)) $PS1"'

# Packages
alias sai='sudo aptitude install'
alias sar='sudo aptitude purge'
alias sas='sudo aptitude search'
alias au='sudo aptitude update'
alias asu='sudo aptitude update && sudo aptitude safe-upgrade && sudo aptitude clean'
alias asuy='sudo aptitude update && sudo aptitude -y safe-upgrade && sudo aptitude -y clean'
alias afu='sudo aptitude update && sudo aptitude full-upgrade && sudo aptitude clean'
alias afuy='sudo aptitude update && sudo aptitude -y full-upgrade && sudo aptitude -y clean'

# Ruby

alias be='bundle exec'
alias ber='bundle exec ruby'

alias bi='bundle install'
alias bu='bundle update'
alias bp='bundle install && pessimize -c patch --no-backup'
alias burp='bundle update && pessimize -c patch --no-backup'

# Rails

alias srails='spring rails'
alias ss='spring rails s'
alias src='spring rails c'
alias rs='rails server -b 0.0.0.0'
alias dev='./bin/dev'
alias rc='rails c'
alias sr='spring rails'

alias find_route='rake routes | grep '

alias dbcreate='rake db:create'
alias dbdrop='rake db:drop'
alias dbmigrate='rake db:migrate'
alias dbseed='rake db:seed'
alias dbreset='rake db:reset'
alias dbwipe='rake db:drop db:create'
alias dbrecreate='rake db:drop db:create db:migrate db:seed'
alias dbrollback='rake db:rollback'
alias dbtest='RAILS_ENV=test rake db:drop db:create db:migrate'

#### TEST

export PATH="$PATH:$HOME/.npm-global/bin"
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

if [[ "$TERM" == "dumb" ]]
then
    unsetopt zle
    unsetopt prompt_cr
    unsetopt prompt_subst
    unfunction precmd
    unfunction preexec
    PS1='> '
fi

# Docker
alias dc="docker compose"
alias dce="docker compose exec"
alias dcr="docker compose run --rm"
alias dcrw="docker compose run --rm web"
alias dcra="docker compose run --rm app"
alias dcps='watch docker compose ps'
alias dcprune="docker system prune -a"

# Crypto
alias cledger="ledger -f ~/crypto/wallets.ledger --price-db=~/crypto/btc.pricedb"

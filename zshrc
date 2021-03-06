# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="jzila"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git vi-mode svn history-substring-search)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/go/bin
export CATALINA_HOME=/home/john/apps/apache-tomee-jaxrs-1.6.0
export TOMEE_HOME=$CATALINA_HOME
export JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64


alias ....='cd ../../..'
alias .....='cd ../../../..'
alias deadlock='ssh jzila@jzila.com'

alias grep='grep -I --exclude-dir="*\.svn*" --exclude="*\.svn-base"'
alias grepnolog='grep -I --exclude-dir="*log*" --exclude-dir="*\.svn*" --exclude="*\.svn-base"'

alias ll='ls -l'
alias la='ls -la'

alias gup='git pull --rebase upstream master'
alias gp='git push -u origin'
alias gfu='git fetch upstream'
alias gr='git rebase'

bindkey -v

unset correctall
set correct

export PATH="/usr/local/heroku/bin:$PATH"
export GREP_OPTIONS='--color=auto --exclude="*.svn-base"'
export GREP_COLOR='1;31'

### Prevent the shell from blocking a command with mismatched arguments
unsetopt nomatch 2>/dev/null

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

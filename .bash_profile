#########
# Aliases
#########
# General aliases
alias ll="ls -lah"
alias htdocs="cd /Applications/MAMP/htdocs/"
alias www="cd ~/www"
alias apple="cd ~/Library/Mobile\ Documents/com~apple~CloudDocs"
alias projects="cd ~/Projects"

# Git aliases
alias gs="git status"
alias gb="git branch"
alias gba="git branch -a"
alias gl="git log --oneline"
alias gdt="git diff > tmpDiff.txt | subl tmpDiff.txt"
alias rmt="rm tmpDiff.txt"
alias gsl="git stash list"
alias gco="git checkout"

########
# Prompt
########
export PS1="________________________________________________________________________________\n| \[\e[1;36m\]\u\[\e[m\]@\[\e[1;33m\]\h\[\e[m\]: \[\e[1;32m\]\w\[\e[m\] \n| $ "
export PS2="| => "

########
# Add color to the Terminal
########
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

######
# Homebrew cask options
#####
export HOMEBREW_CASK_OPTS="--appdir=/Applications"

#######
# PATH
#######
export PATH="$PATH:/opt/gradle/gradle-3.4.1/bin"

#######
# Java
#######
export JAVA_HOME=$(/usr/libexec/java_home)
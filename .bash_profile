#########
# Aliases
#########
# General aliases
alias ll="ls -lah"
alias www="cd /Applications/MAMP/htdocs/"
alias sshfc="ssh root@106.186.116.236"
alias sshrack="ssh fc@119.9.95.96"
alias web="cd /Applications/MAMP/htdocs/webpower-ce"
alias klg="cd /Applications/MAMP/htdocs/klg-frontend"

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
export PS1="________________________________________________________________________________\n| \h (\u) @ \w \n| $ "
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

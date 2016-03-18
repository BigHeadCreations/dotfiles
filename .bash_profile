#########
# Aliases
#########
# General aliases
alias ll="ls -lah"
alias htdocs="cd /Applications/MAMP/htdocs/"
alias www="cd /Users/timothy/www"
alias cf="cd /Applications/ColdFusion2016/cfusion/bin"
alias cfstart="sudo /Applications/ColdFusion2016/cfusion/bin/cfstart.sh"
alias cfstop="sudo /Applications/ColdFusion2016/cfusion/bin/cfstop.sh"
alias cfstat="sudo /Applications/ColdFusion2016/cfusion/bin/cfstat.sh"

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

#########
# Aliases
#########
# General aliases
alias ll="ls -lah"
alias htdocs="cd /Applications/MAMP/htdocs/"
alias www="cd ~/www"
alias apple="cd ~/Library/Mobile\ Documents/com~apple~CloudDocs"
alias proj="cd ~/Projects"

# Git aliases
alias gs="git status"
alias gb="git branch"
alias gba="git branch -a"
alias gl="git log --oneline"
alias gdt="git diff > tmpDiff.diff | subl tmpDiff.diff"
alias rmt="rm tmpDiff.diff"
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
# Java
#######
export JAVA_HOME=$(/usr/libexec/java_home)

#####
# This is the path for the `brew install ruby` version of ruby
# instead of the outdated ruby provided by macOS
#####
export PATH="/usr/local/opt/ruby/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/lib/ruby/gems/2.6.0/bin:$PATH"

## use current python3 installed via homebrew
export PATH="/usr/local/opt/python@3.8/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/python@3.8/lib"
export PKG_CONFIG_PATH="/usr/local/opt/python@3.8/lib/pkgconfig"

## to fix a problem when trying to compile GNU BINUTILS
export CXXFLAGS="-std=c++11 -Wno-c++11-narrowing"


## Catalina keeps telling me to use ZSH
export BASH_SILENCE_DEPRECATION_WARNING=1

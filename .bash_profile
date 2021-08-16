#########
# Aliases
#########
# General aliases
alias ll="ls -lah"
alias htdocs="cd /Applications/MAMP/htdocs/"
alias www="cd ~/www"
alias apple="cd ~/Library/Mobile\ Documents/com~apple~CloudDocs"
alias proj="cd ~/Projects"

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."
alias .......="cd ../../../../../.."


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
export PS1="_______________________________\n| \[\e[1;36m\]\u\[\e[m\]@\[\e[1;33m\]\h\[\e[m\]: \[\e[1;32m\]\w\[\e[m\] \n| $ "
export PS2="| => "

########
# Add color to the Terminal
########
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

########
# Bat (cat clone with wings) colorscheme
########
export BAT_THEME="OneHalfLight"

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
export PATH="$HOME/.gem/ruby/3.0.0/bin:$PATH"
export GEM_HOME="$HOME/.gem/ruby/3.0.0/gems"

# Jekyll install instructions tell me to set this
export SDKROOT=$(xcrun --show-sdk-path)


## use current python3 installed via homebrew
export PATH="/usr/local/opt/python@3.9/bin:$PATH"
export PATH="/usr/local/opt/python@3.9/libexec/bin:$PATH" # this lets me use python3 as `python`
export LDFLAGS="-L/usr/local/opt/python@3.9/lib"
export PKG_CONFIG_PATH="/usr/local/opt/python@3.9/lib/pkgconfig"

## to fix a problem when trying to compile GNU BINUTILS
export CXXFLAGS="-std=c++11 -Wno-c++11-narrowing"


## Catalina keeps telling me to use ZSH
export BASH_SILENCE_DEPRECATION_WARNING=1

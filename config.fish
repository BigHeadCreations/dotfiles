##########
## Aliases
##########

# General aliases
alias ll="ls -lah"
alias htdocs="cd /Applications/MAMP/htdocs/"
alias www="cd /Users/timothy/www"
alias meps="cd /Users/timothy/meps"
alias cf="cd /Applications/ColdFusion11/cfusion/wwwroot"
alias cfstart="sudo /Applications/ColdFusion11/cfusion/bin/cfstart.sh"
alias cfstop="sudo /Applications/ColdFusion11/cfusion/bin/cfstop.sh"
alias cfstat="sudo /Applications/ColdFusion11/cfusion/bin/cfstat.sh"


# Git aliases
alias gs="git status"
alias gb="git branch"
alias gba="git branch -a"
alias gl="git log --oneline"
alias gdt="git diff > tmpDiff.txt | subl tmpDiff.txt"
alias rmt="rm tmpDiff.txt"
alias gsl="git stash list"
alias gco="git checkout"


####################################
##         Set up the prompt      ##
####################################
set -xg fish_color_user magenta
set -xg fish_color_host yellow

function fish_prompt --description 'Write out the prompt'
  set -l last_status $status

  # User
  set_color $fish_color_user
  echo -n (whoami)
  set_color normal

  echo -n '@'

  # Host
  set_color $fish_color_host
  echo -n (hostname -s)
  set_color normal

  echo -n ':'

  # PWD
  set_color $fish_color_cwd
  echo -n (pwd)
  set_color normal

  __terlar_git_prompt
  echo

  if not test $last_status -eq 0
  set_color $fish_color_error
  end

  echo -n '➤ '
  set_color normal
end

######
# Homebrew cask options
#####
set -x HOMEBREW_CASK_OPTS="--appdir=/Applications"

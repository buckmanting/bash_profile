## Super simple bash_profile

# Functions

# show git branch in path
parse_git_branch() {
      git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
  }

# Aliases

# navigation
alias ..='cd ..'

# open application
alias ws='open -a /Applications/WebStorm.app '
alias vault='/Applications/vault '

# quaility of life shit
alias ls='ls -G'
alias ll='ls -Gla'
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias ccat='pygmentize -g -O style=colorful,linenos=1'

# show open ports
alias ports='netstat -tulanp'

# git helpers
alias gs='git status'
alias gd='git diff'
alias pull='git pull'
alias push='git push'
alias fetch='git fetch -ap'
alias merge-base='git merge-base master '
alias git-history='git log --graph --abbrev-commit --pretty=oneline'
alias gcom='git commit -am ' 
alias rm-old-branches='git branch -vv | grep ": gone]" | awk "{print $1}" | xargs git branch -D'

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Bash theming
export PS1="\w \[\033[32m\]\$(parse_git_branch)\[\033[00m\] \\$ "



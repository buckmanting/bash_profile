# Aliases

 # navigation
 alias ..='cd ..'

 # open application
 alias ws='open -a /Applications/WebStorm.app '

 # quaility of life shit
 alias ls='ls -G'
 alias ll='ls -Gla'
 alias grep='grep --color=auto'
 alias egrep='egrep --color=auto'
 alias fgrep='fgrep --color=auto'

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

 # Functions

 # show git branch in path
 parse_git_branch() {
       git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
   }

 export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

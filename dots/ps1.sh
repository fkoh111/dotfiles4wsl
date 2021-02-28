# Custom PS1

git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

export PS1="\[\e[32m\]\u@\h\[\e[00m\] \[\e[33m\]\t\[\e[00m\]:\[\e[1;34m\]\w \[\e[91m\]\$(parse_git_branch)\[\e[00m\]$ "
if [[ -f ~/.bash_aliases ]]; then
        . ~/.bash_aliases
fi

# https://github.com/git/git/blob/master/contrib/completion/git-prompt.sh
source ~/.git-prompt.sh
LANG=C
LC_ALL=C

GIT_PROMPT_ONLY_IN_REPO=1
GIT_PS1_SHOWCOLORHINTS=1
GIT_PS1_SHOWUPSTREAM="auto"
GIT_PS1_SHOWDIRTYSTATE=1
PROMPT_COMMAND='__git_ps1 "\u@\h:\w" "\\\$ "'


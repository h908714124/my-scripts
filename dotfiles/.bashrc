if [[ -f ~/.bash_aliases ]]; then
  . ~/.bash_aliases
fi

# https://github.com/git/git/blob/master/contrib/completion/git-prompt.sh
if [[ -f ~/.git-prompt.sh ]]; then
  . ~/.git-prompt.sh
fi

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8

GIT_PROMPT_ONLY_IN_REPO=1
GIT_PS1_SHOWCOLORHINTS=1
GIT_PS1_SHOWUPSTREAM="auto"
GIT_PS1_SHOWDIRTYSTATE=1
PROMPT_COMMAND='__git_ps1 "\u@\h:\w" "\\\$ "'

export HISTSIZE=10000
export HISTFILESIZE=10000


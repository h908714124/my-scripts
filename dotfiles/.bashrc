# Uncomment the following line if you don't like systemctl's auto-paging feature:
export SYSTEMD_PAGER=

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc

# https://github.com/git/git/blob/master/contrib/completion/git-prompt.sh
if [[ -f ~/git-prompt.sh ]]; then
  . ~/git-prompt.sh
  GIT_PROMPT_ONLY_IN_REPO=1
  GIT_PS1_SHOWCOLORHINTS=1
  GIT_PS1_SHOWUPSTREAM="auto"
  GIT_PS1_SHOWDIRTYSTATE=1
  PROMPT_COMMAND='__git_ps1 "\u@\h:\w" "\\\$ "'
fi

LC_ALL=en_US.UTF-8
LANG=en_US.UTF-8
LANGUAGE=en_US.UTF-8

export VISUAL=vim
export EDITOR=vim

export LIBVIRT_DEFAULT_URI=qemu:///system

HISTSIZE=10000
HISTFILESIZE=10000

eval $(keychain --systemd --agents gpg,ssh --eval)


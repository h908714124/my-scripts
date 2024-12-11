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

eval $(keychain --agents gpg,ssh --eval)


PATH=${PATH}:${HOME}/sw/node/bin
PATH=${PATH}:${HOME}/sw/jdk/bin

export JAVA_HOME=${HOME}/sw/jdk

caffeinate() {
  if [[ -z "$1" ]]; then
    echo "arg: seconds"
    return 1
  fi
  systemd-inhibit --what=idle --who=Caffeine --why=Caffeine --mode=block sleep $1
}

vtkeys() {
  local MODEL=$(localectl | sed -nE 's/^\s*X11 Model:\s*(\w+)$/\1/p')
  if [[ ${1:-us} = us ]]; then
    localectl set-locale en_US.UTF-8
    localectl --no-convert set-keymap us
    localectl --no-convert set-x11-keymap de ${MODEL:-pc105} us
  else
    localectl set-locale de_DE.UTF-8
    localectl set-x11-keymap de ${MODEL:-pc105}
  fi
}

vtkeys_no_systemd() {
  loadkeys /usr/lib/kbd/keymaps/xkb/${1:-us}.map.gz
}

export LIBVIRT_DEFAULT_URI=qemu:///system

randpw() {
  tr -dc '_+=!?/ABCDEFGHJKLMNPQRSTUVWXYZabcdefghijkmnopqrstuvwxyz1-9' </dev/urandom | head -c 14 ; echo
}

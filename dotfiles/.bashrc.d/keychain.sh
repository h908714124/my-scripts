type keychain &> /dev/null && [[ -a ~/.keychainrc ]] && {
  . ~/.keychainrc
  eval $(keychain $KCHOPTS --eval)
  unset KCHOPTS SSHKEYS GPGKEYS
}

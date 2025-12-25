type javac &> /dev/null && {
  export JAVA_HOME=$(dirname $(dirname $(readlink -f $(which javac))))
}
# sshaskpass braucht kwallet
[[ $SSH_ASKPASS = */ksshaskpass ]] && {
  unset SSH_ASKPASS
}

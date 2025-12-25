type git &> /dev/null && [[ -a ~/git-prompt.sh ]] && {
  . ~/git-prompt.sh
  PROMPT_COMMAND='__git_ps1 "\u@\h:\w" "\\\$ "'
}

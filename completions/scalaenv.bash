_scalaenv() {
  COMPREPLY=( $(compgen -W "$(scalaenv commands)" ${COMP_WORDS[COMP_CWORD]}) )
}
complete -F _scalaenv scalaenv

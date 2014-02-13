if [[ ! -o interactive ]]; then
  return
fi

# Call the given function to get the completions. Unless the name starts with an underscore, the function is passed two arguments: the prefix and the suffix of the word on which completion is to be attempted, in other words those characters before the cursor position, and those from the cursor position onwards. The whole command line can be accessed with the -c and -l flags of the read builtin. The function should set the variable reply to an array containing the completions (one completion per element); note that reply should not be made local to the function. From such a function the command line can be accessed with the -c and -l flags to the read builtin.
compctl -K _scalaenv scalaenv

_scalaenv() {
  local words completions
  read -cA words

  if [ "${#words}" -eq 2 ]; then
    completions="$(scalaenv commands)"
  else
    completions="$(scalaenv completions ${words[2,-2]})"
  fi

  reply=("${(ps:\n:)completions}")
}

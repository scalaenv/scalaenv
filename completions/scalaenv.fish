function __fish_scalaenv_needs_command
  set cmd (commandline -opc)
  if [ (count $cmd) -eq 1 -a $cmd[1] = 'scalaenv' ]
    return 0
  end
  return 1
end

function __fish_scalaenv_using_command
  set cmd (commandline -opc)
  if [ (count $cmd) -gt 1 ]
    if [ $argv[1] = $cmd[2] ]
      return 0
    end
  end
  return 1
end

complete -f -c scalaenv -n '__fish_scalaenv_needs_command' -a '(scalaenv commands)'
for cmd in (scalaenv commands)
  complete -f -c scalaenv -n "__fish_scalaenv_using_command $cmd" -a "(scalaenv completions $cmd)"
end

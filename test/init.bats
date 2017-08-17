#!/usr/bin/env bats

load test_helper

@test "creates shims and versions directories" {
  assert [ ! -d "${SCALAENV_ROOT}/shims" ]
  assert [ ! -d "${SCALAENV_ROOT}/versions" ]
  run scalaenv-init -
  assert_success
  assert [ -d "${SCALAENV_ROOT}/shims" ]
  assert [ -d "${SCALAENV_ROOT}/versions" ]
}

@test "auto rehash" {
  run scalaenv-init -
  assert_success
  assert_line "command scalaenv rehash 2>/dev/null"
}

@test "detect parent shell" {
  SHELL=/bin/false run scalaenv-init -
  assert_success
  assert_line "export SCALAENV_SHELL=bash"
}

@test "detect parent shell from script" {
  mkdir -p "$SCALAENV_TEST_DIR"
  cd "$SCALAENV_TEST_DIR"
  cat > myscript.sh <<OUT
#!/bin/sh
eval "\$(scalaenv-init -)"
echo \$SCALAENV_SHELL
OUT
  chmod +x myscript.sh
  run ./myscript.sh /bin/zsh
  assert_success "sh"
}

@test "setup shell completions" {
  root="$(cd $BATS_TEST_DIRNAME/.. && pwd)"
  run scalaenv-init - bash
  assert_success
  assert_line "source '${root}/test/../libexec/../completions/scalaenv.bash'"
}

@test "setup shell completions (fish)" {
  root="$(cd $BATS_TEST_DIRNAME/.. && pwd)"
  run scalaenv-init - fish
  assert_success
  assert_line "source '${root}/test/../libexec/../completions/scalaenv.fish'"
}

@test "fish instructions" {
  run scalaenv-init fish
  assert [ "$status" -eq 1 ]
  assert_line 'status --is-interactive; and source (scalaenv init -|psub)'
}

@test "option to skip rehash" {
  run scalaenv-init - --no-rehash
  assert_success
  refute_line "scalaenv rehash 2>/dev/null"
}

@test "adds shims to PATH" {
  export PATH="${BATS_TEST_DIRNAME}/../libexec:/usr/bin:/bin:/usr/local/bin"
  run scalaenv-init - bash
  assert_success
  assert_line 0 'export PATH="'${SCALAENV_ROOT}'/shims:${PATH}"'
}

@test "adds shims to PATH (fish)" {
  export PATH="${BATS_TEST_DIRNAME}/../libexec:/usr/bin:/bin:/usr/local/bin"
  run scalaenv-init - fish
  assert_success
  assert_line 0 "set -gx PATH '${SCALAENV_ROOT}/shims' \$PATH"
}

@test "can add shims to PATH more than once" {
  export PATH="${SCALAENV_ROOT}/shims:$PATH"
  run scalaenv-init - bash
  assert_success
  assert_line 0 'export PATH="'${SCALAENV_ROOT}'/shims:${PATH}"'
}

@test "can add shims to PATH more than once (fish)" {
  export PATH="${SCALAENV_ROOT}/shims:$PATH"
  run scalaenv-init - fish
  assert_success
  assert_line 0 "set -gx PATH '${SCALAENV_ROOT}/shims' \$PATH"
}

@test "outputs sh-compatible syntax" {
  run scalaenv-init - bash
  assert_success
  assert_line '  case "$command" in'

  run scalaenv-init - zsh
  assert_success
  assert_line '  case "$command" in'
}

@test "outputs fish-specific syntax (fish)" {
  run scalaenv-init - fish
  assert_success
  assert_line '  switch "$command"'
  refute_line '  case "$command" in'
}

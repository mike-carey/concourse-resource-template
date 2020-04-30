#!/usr/bin/env bats

load helpers/print/bprint

source "$BATS_TEST_DIRNAME/../assets/in"

@test "it should print the payload to stdout" {
  run resource_in "$dir"

  [ $status -eq 0 ]

  echo "$output" | jq -r '. | .version'
}

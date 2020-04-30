#!/usr/bin/env make

TESTS ?= tests

.PHONY: *

env: .envrc
	direnv allow

.envrc:
	cp .envrc.example .envrc

clean:

purge:
	rm -f .envrc

test:
	bats $(TESTS)/*.bats

# make ${target}

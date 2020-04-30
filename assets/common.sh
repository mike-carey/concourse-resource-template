#!/usr/bin/env bash

set -euo pipefail

# Use file descriptor 3 as stdout
exec 1>&2
exec 3>&1

# source "$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"/common.sh

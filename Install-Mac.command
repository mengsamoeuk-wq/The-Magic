#!/bin/zsh
cd -- "$(dirname -- "$0")" || exit 1
node scripts/setup-local.mjs
result=$?
echo "Press Enter to close."
read
exit $result

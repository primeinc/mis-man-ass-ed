#!/usr/bin/env bash
set -euo pipefail

ignore_reality=false
production=false

for arg in "$@"; do
  case "$arg" in
    --ignore-reality) ignore_reality=true ;;
    --production) production=true ;;
  esac
done

printf '%s\n' 'Summoning mischief...'
printf '%s\n' 'Checking ceremonial invariants...'
printf '%s\n' '90/90 tests passed*'
printf '%s\n' '* reality not included'

if [[ "$ignore_reality" == true && "$production" == true ]]; then
  printf '%s\n' 'Production mode enabled. This feels irresponsible.'
fi

printf '%s\n' 'Mischief mismanaged.'

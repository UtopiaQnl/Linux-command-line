#!/usr/bin/env bash

print_params() {
    echo "\$1 = $1"
    echo "\$2 = $2"
    echo "\$3 = $3"
    echo "\$4 = $4"
}

pass_params() {
    echo -e "\n" '$* :'
    print_params $*
    echo -e "\n" '"$*" :'
    print_params "$*"
    echo -e "\n" '$@ :'
    print_params $@
    echo -e "\n" '"$@" :'
    print_params "$@"
}

echo 'pass_params "word" "words with spaces"'

pass_params "word" "words with spaces"

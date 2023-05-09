#!/usr/bin/env bash

for i; do
    if [[ -r "$i" ]]; then
        max_word=
        max_len=0
        for j in $(strings "$i"); do
            # shellcheck disable=SC2000
            len="$(echo "$j" | wc -c)"
            if ((len > max_len)); then
                max_word="$j"
                max_len="$len"
            fi
        done
        echo "$i: '$max_word' ($max_len characters)"
    fi
done

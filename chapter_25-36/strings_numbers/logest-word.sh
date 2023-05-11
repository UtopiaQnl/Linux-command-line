#!/usr/bin/env bash

for i; do
    if [[ -n "$i" ]]; then
        max_len=0
        max_word=
        for j in $(strings "$i"); do
            len="${#j}"
            if ((len > max_len)); then
                max_len="$len"
                max_word="$j"
            fi
        done
        echo "$i: '$max_word' ($max_len characters)"
    fi
done

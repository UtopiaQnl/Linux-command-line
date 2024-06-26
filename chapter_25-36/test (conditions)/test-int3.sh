#!/usr/bin/env bash

MIN_VAL=1
MAX_VAL=100

INT=50

if [[ "$INT" =~ ^(\+|-)?([1-9][0-9]*|0)$ ]]; then
    if [[ "$INT" -ge "$MIN_VAL" && "$INT" -le "$MAX_VAL" ]]; then
        echo "$INT is within $MIN_VAL to $MAX_VAL."
    else
        echo "$INT is out of range."
    fi
else
    echo "$INT is not a integer." >&2
    exit 1
fi

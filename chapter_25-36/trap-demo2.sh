#!/usr/bin/env bash

exit_on_signal_SIGINT() {
    echo "Script interrupted." >&2
    exit 1
}

exit_on_signal_SIGTERM() {
    echo "Script terminated." >&2
    exit 1
}

trap exit_on_signal_SIGINT SIGINT
trap exit_on_signal_SIGTERM SIGTERM

for i in {1..5}; do
    echo "Iteration $i of 5"
    sleep 5
done

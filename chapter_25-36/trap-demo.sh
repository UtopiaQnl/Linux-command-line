#!/usr/bin/env bash

trap 'echo "I am ignorign you."' SIGINT SIGTERM

for i in {1..5}; do
    echo "Iteration $i of 5"
    sleep 4
done

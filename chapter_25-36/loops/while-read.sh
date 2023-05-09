#!/usr/bin/env bash

src="$(dirname "$0")"

while read -r distro version release; do
    printf "Distro: %s\n\tVersion: %s\n\tRelease: %s\n\n" \
        "$distro" \
        "$version" \
        "$release"
done <"${src}/distros.txt"

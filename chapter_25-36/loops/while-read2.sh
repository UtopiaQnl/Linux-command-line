#!/usr/bin/env bash

src="$(dirname "$0")"

sort -k1,1 -k 2n "${src}/distros.txt" | while read -r distro version release; do
    printf "Distro: %s\n\tVersion: %s\n\tRelease: %s\n\n" \
        "$distro" \
        "$version" \
        "$release"
done

#!/usr/bin/env bash

for i; do
    echo "${i,,}"
    echo "${i,}"
    echo "${i^^}"
    echo "${i^}"
done

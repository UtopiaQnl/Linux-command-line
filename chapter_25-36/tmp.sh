#!/usr/bin/env bash

echo tmpfile=/tmp/${0##*/}.$$.$RANDOM
echo tmpfile=/tmp/$(basename $0).$$.$RANDOM

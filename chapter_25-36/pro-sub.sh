#!/usr/bin/env bash

while read attr links owner group size date time filename; do
    cat <<- EOF
Filename:   $filename
    Size:       $size
    Owner:      $owner
    Group:      $group
    Modified:   $date $time
    links:      $links
    Attributes: $attr

EOF
done < <(ls -l | tail -n +2)

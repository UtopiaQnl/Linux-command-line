#!/usr/bin/env bash

a=(f a e g j e t a b z d w y)

echo "Original array: " "${a[@]}"
a_sorted=( "$(for i in "${a[@]}"; do echo "$i"; done | sort)" )
echo "Soeted array: " "${a_sorted[@]}"

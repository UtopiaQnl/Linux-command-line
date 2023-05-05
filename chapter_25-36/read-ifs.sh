#!/usr/bin/env bash

FILE=/etc/passwd

read -rp "Enter a username: " user_name

file_info=$(grep "^$user_name:" $FILE)

if [ -n "$file_info" ]; then
    # shellcheck disable=SC2034
    IFS=":" read -r user pw uid gid name home shell <<<"$file_info"
    printf "User =\t\t%s\n" "$user"
    printf "UID =\t\t%s\n" "$uid"
    printf "GID =\t\t%s\n" "$gid"
    printf "Full Name =\t%s\n" "$name"
    printf "Home Dir =\t%s\n" "$home"
    printf "Shell =\t\t%s\n" "$shell"
else
    echo "No such user '$user_name'" >&2
    exit 1
fi

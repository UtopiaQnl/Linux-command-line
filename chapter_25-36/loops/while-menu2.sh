#!/usr/bin/env bash

DELAY=1 # Время отображения результатов на экране (в секундах)

while true; do
    clear
    cat <<-EOF
    Please Select:

    1. Display System Information
    2. Display Disk Space
    3. Display Home Space Utilization
    0. Quit

EOF

    read -rp "Enter selection [0-3]: "

    if [[ "$REPLY" =~ ^[0-3]$ ]]; then
        if [[ "$REPLY" =~ 1 ]]; then
            echo "Hostname: $HOSTNAME"
            uptime
            sleep "$DELAY"
            continue
        fi
        if [[ "$REPLY" =~ 2 ]]; then
            df -h
            sleep "$DELAY"
            continue
        fi
        if [[ "$REPLY" =~ 3 ]]; then
            if [[ "$(id -u)" -eq 0 ]]; then
                echo "Home Space Utilization (All Users)"
                du -sh /home/*
            else
                echo "Home Space Utilization ($USER)"
                du -sh "$HOME"
            fi
            sleep "$DELAY"
            continue
        fi
        if [[ "$REPLY" -eq 0 ]]; then
            break
        fi
    else
        echo "Invalid entry."
        exit 1
    fi
done

echo "Program terminated."
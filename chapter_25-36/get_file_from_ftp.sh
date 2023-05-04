#!/usr/bin/env bash

declare -r FTP_SERVER="ftp.nl.debian.org"
declare -r FTP_PATH="/debian/dists/stretch/main/installer-amd64/current/images/cdrom/"
declare -r REMOTE_FILE="debian-cd/"

ftp -n <<- _EOF_
open $FTP_SERVER
user anonymous un@Stolas
cd $FTP_PATH
hash
ls -la
bye
_EOF_
ls -l $REMOTE_FILE

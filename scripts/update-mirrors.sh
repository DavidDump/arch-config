#!/bin/sh
TMPFILE="$(mktemp)"

rate-mirrors --save=$TMPFILE arch --max-delay=21600
sudo mv /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist-backup
sudo mv $TMPFILE /etc/pacman.d/mirrorlist
# && yay -Syyu --noconfirm'
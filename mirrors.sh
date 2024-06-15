#!/usr/bin/env sh

pacman -Sy --noconfirm reflector fish
reflector --verbose --country "United States" --latest 10 --protocol http,https --sort rate --save /etc/pacman.d/mirrorlist

#!/usr/bin/env sh

pacman -Syu --noconfirm reflector
reflector --verbose --country "Canada,United States,Brazil," --latest 10 --protocol http,https --sort rate --save /etc/pacman.d/mirrorlist

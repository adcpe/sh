#!/usr/bin/env sh

bootctl --path=/boot install

systemctl enable systemd-boot-update

echo "timeout   3" >/boot/loader/loader.conf
echo "default   @saved" >>/boot/loader/loader.conf

echo "title     Arch Linux (Linux Kernel)" >/boot/loader/entries/linux.conf
echo "linux     /vmlinuz-linux" >>/boot/loader/entries/linux.conf
echo "initrd    /intel-ucode.img" >>/boot/loader/entries/linux.conf
echo "initrd    /initramfs-linux.img" >>/boot/loader/entries/linux.conf
echo "options   root=/dev/sda2 rw quiet splash" >>/boot/loader/entries/linux.conf

echo "title     Arch Linux (Linux LTS Kernel)" >/boot/loader/entries/linux-lts.conf
echo "linux     /vmlinuz-linux-lts" >>/boot/loader/entries/linux-lts.conf
echo "initrd    /intel-ucode.img" >>/boot/loader/entries/linux-lts.conf
echo "initrd    /initramfs-linux-lts.img" >>/boot/loader/entries/linux-lts.conf
echo "options   root=/dev/sda2 rw quiet splash" >>/boot/loader/entries/linux-lts.conf

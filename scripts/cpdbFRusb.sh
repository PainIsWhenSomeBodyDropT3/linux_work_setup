#!/bin/bash
sudo umount $HOME/usb >/dev/null
sudo mount /dev/sdb1 $HOME/usb || exit
cp $(find $HOME/usb/Database* -type f -printf '%T@ %p\n' | sort -n | tail -1 | cut -f2- -d" ") $HOME/Desktop/Database.kdbx
sudo umount $HOME/usb

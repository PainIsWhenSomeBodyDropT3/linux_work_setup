#!/bin/bash
sudo umount $HOME/usb >/dev/null
sudo mount /dev/sdb1 $HOME/usb || exit
data=$(date +%y-%m-%d)
echo $data
sudo cp -r $HOME/gtd $HOME/usb/gtd
sudo cp $HOME/Desktop/Database.kdbx "$HOME/usb/Database$data.kdbx"
sudo umount $HOME/usb

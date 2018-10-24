#!/bin/bash

dir=~/dotfiles
backupdir=~/dotfiles.bak
files=".vimrc .imwheelrc"

mkdir -p $backupdir

for file in $files; do
    mv ~/$file $backupdir/
    ln -s $dir/$file ~/$file
done

#take care of other config that are not simple dot files
cp ~/.config/monitors.xml $backupdir/
ln -s $dir/monitors.xml ~/.config/monitors.xml

#Setup (one time) for login screen to match monitor config.
#  might move to another script. needs to run as root.
#cp $dir/monitors.xml /var/lib/gdm3/.config/
#chown gdm:gdm /var/lib/gdm3/.config/monitors.xml

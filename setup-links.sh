#!/bin/bash

dir=~/dotfiles
backupdir=~/dotfiles.bak
files=".vimrc"

mkdir -p $backupdir

for file in $files; do
    mv ~/$file $backupdir/
    ln -s $dir/$file ~/$file
done


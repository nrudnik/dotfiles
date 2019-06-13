# dotfiles

Simple repo to track dotfiles in home profile using git bare repo with home dir as working tree. To use:

* First, alias the git command to something
```echo 'alias dotfiles="git --git-dir=$HOME/.dotfiles.git/ --work-tree=$HOME"' >> $HOME/.bashrc
```

* Make sure the local repo is in gitignore to prevent recursion problems
```echo ".dotfiles.git" >> .gitignore
```

* Git clone the repo 
```git clone --bare https://www.github.com/nrudnik/dotfiles.git $HOME/.dotfiles.git
```

* Checkout with the new alias so the work dir and repo dir ar set right
  Pick a branch where specific distro setups might be useful
```dotfiles checkout manjaro-i3
```

* Prevent all the untracked files from showing
```dotfiles config --local status.showUntrackedFiles no
```




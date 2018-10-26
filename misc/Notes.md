# Notes

These are miscellaneous config files to customize environment behavior. Need to work on automation, but documenting notes and steps first. This is being used for Ubuntu 18.10 and my specific workstation.

## Fix default audio device used in Gnome3

Find device id and output profile:

~~~
$ pacmd list-cards
~~~

Set defaults in /etc/pulse/[default.pa](/misc/default.pa)
~~~
set-card-profile 1  outout:analog-surround-40
set-default-sink 1
~~~~
Remove `~/.config/pulse/` and reboot




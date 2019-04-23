]#!/bin/sh
feh --bg-center ~/Pictures/pound-sterling-wallpapers-28823-9050122.jpg 
setxkbmap -model pc104 -layout us,ru -variant qwerty -option grp:alt_shift_toggle
userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then







    xrdb -merge $sysresources

fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then







    xrdb -merge "$userresources"

fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi
#export GDK_BACKEND=x11
#exec gnome-session
#exec mate-panel
#exec i3
@exec startkde
exec startxfce4
#exec liri-session

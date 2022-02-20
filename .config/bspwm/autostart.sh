#!/bin/bash

function run {
  if ! pgrep $1 ;
  then
    $@&
  fi
}

xrandr --output DP-2 --mode 1920x1080 --rate 144 &
xinput set-prop pointer:'Logitech G305' 'libinput Accel Speed' -0.8 &
xmousepasteblock &
$HOME/.config/polybar/launch.sh &
run sxhkd &
xsetroot -cursor_name left_ptr &
#conky -c $HOME/.config/bspwm/system-overview &
#run nm-applet &
#run pamac-tray &
#run xfce4-power-manager &
#numlockx on &
#blueberry-tray &
picom --config $HOME/.config/bspwm/picom.conf &
#/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
#/usr/lib/xfce4/notifyd/xfce4-notifyd &
#run volumeicon &
nitrogen --restore &

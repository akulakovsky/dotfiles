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
picom &
nitrogen --restore &
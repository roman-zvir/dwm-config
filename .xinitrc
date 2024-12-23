# Start D-Bus session
eval $(dbus-launch --sh-syntax --exit-with-session)

# Ensure no duplicate tray or applet is running
pkill trayer
pkill nm-applet

# Start nm-applet
(sleep 3; nm-applet > /tmp/nm-applet.log 2>&1) &

 Start trayer
(sleep 2; trayer --edge top --align right --SetDockType true --SetPartialStrut true \
  --expand true --widthtype request --transparent true --alpha 0 --tint 0x222222 > /tmp/trayer.log 2>&1) &

# Start slstatus (status bar)
slstatus &

# Keyboard layout toggle (US and UA with Alt+Shift)
setxkbmap -layout "us,ua" -option "grp:alt_shift_toggle"

feh --bg-scale /home/roman/Desktop/debian.jpg &

# Start DWM
exec dwm

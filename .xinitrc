# Start D-Bus session
eval $(dbus-launch --sh-syntax --exit-with-session)

# Add some delay to ensure tray apps initialize correctly
(sleep 3; nm-applet) &  # Increased delay for nm-applet
(sleep 2; trayer --edge top --align right --SetDockType true --SetPartialStrut true \
  --expand true --widthtype request --transparent true --alpha 0 --tint 0x222222) &  # Increased delay for trayer

# Start slstatus (status bar)
slstatus &

# Keyboard layout toggle (US and UA with Alt+Shift)
setxkbmap -layout "us,ua" -option "grp:alt_shift_toggle"

feh --bg-scale /home/roman/Desktop/debian.jpg &

# Start DWM
exec dwm

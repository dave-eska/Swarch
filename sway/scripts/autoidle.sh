swayidle -w \
    timeout 300 'gtklock' \
    timeout 600 'swaymsg "output * dpms off"' resume 'swaymsg "output * dpms on"' \
    before-sleep 'gtklock'

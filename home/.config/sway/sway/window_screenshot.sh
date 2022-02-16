grim -g "$(swaymsg -t get_tree | jq -r '.. | select(.pid? and .visible?) | .rect | "\(.x),\(.y) \(.width)x\(.height)"' | slurp -c '#94381eAA' -b '#00242b88' )" ~/Pictures/Screenshots/$(date +'%s_grim.png')
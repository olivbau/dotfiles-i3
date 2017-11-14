killall polybar

while pgrep -x polybar >/dev/null; do sleep 1; done

polybar one &
polybar two &
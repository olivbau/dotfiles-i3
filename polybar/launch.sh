killall polybar

while pgrep -x polybar >/dev/null; do sleep 1; done
monitors=$(xrandr -q| grep -n "connected"| wc -l)
if [ $monitors = 1 ]; then
	polybar single &
else
	polybar one &
	polybar two &
fi


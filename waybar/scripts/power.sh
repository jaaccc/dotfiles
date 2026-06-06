#!/bin/bash

get_mode() {
	powerprofilesctl get
}

set_mode() {
	powerprofilesctl set "$1"
}

mode=$(get_mode)

if [ "$1" = "click" ]; then
	case "$mode" in
	balanced)
		set_mode performance
		;;
	performance)
		set_mode power-saver
		;;
	power-saver)
		set_mode balanced
		;;
	esac
	mode=$(get_mode)
fi

case "$mode" in
balanced)
	echo "<span color='#ffffff'>balanced</span>"
	;;
performance)
	echo "<span color='#ffffff'>performance</span>"
	;;
power-saver)
	echo "<span color='#ffffff'>power saver</span>"
	;;
*)
	echo "<span color='#ffffff'>$mode</span>"
	;;
esac

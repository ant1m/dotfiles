#!/bin/bash

function tmux_vpn() {
	[ -d /sys/class/net/tun0 ] && echo vpn
}

function battery() {
	echo $(acpi -b | cut -d " " -f4 | sed 's/,//g') 
	acpi -a | grep -q on-line && echo -n "+" || echo -n "-"
}

function bluetooth() {
	service bluetooth status | grep -q dead  && echo "b -" || echo "b +"
}

function interfaces() {
	ip link 2>/dev/null | grep -v DOWN | cut -d " " -f 2 | xargs | cut -d " " -f2- | sed 's/://g'
}

echo "|" $(bluetooth) "|" $(battery) "|" $(interfaces) "|"

#!/usr/bin/env bash

VM="win11"

STATE=$(virsh --connect qemu:///system list --all | awk -v vm="$VM" '$2==vm {print $3}')

if [[ "$STATE" == "running" ]]; then
	echo '{"text": "VM", "tooltip": "VM win11 is running", "class": "warning"}'
fi

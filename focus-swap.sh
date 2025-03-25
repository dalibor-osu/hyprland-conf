#!/bin/sh
monitor_id=$(active-monitor)
if [[ $monitor_id == 0 ]]; then
    monitor_id=1;
    workspace_id=$(hyprctl monitors | grep 'active workspace' | sed -n '2p' | awk '{print $3}');
	hyprctl dispatch workspace $workspace_id;
else
    monitor_id=0;
    workspace_id=$(hyprctl monitors | grep 'active workspace' | sed -n '1p' | awk '{print $3}');
	hyprctl dispatch workspace $workspace_id;
fi

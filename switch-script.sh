#!/bin/sh
# Source: https://cascade.moe/en/posts/hyprland-with-multi-monitors/

operation=$1
workspace=$2
monitor_id=$(active-monitor)
workspace_id=$(($monitor_id * 10 + $workspace))

if [[ $operation == "switch" ]]; then
	hyprctl dispatch moveworkspacetomonitor $workspace_id $monitor_id;
	hyprctl dispatch workspace $workspace_id;
fi

if [[ $operation == "move" ]]; then
	hyprctl dispatch moveworkspacetomonitor $workspace_id $monitor_id;
	hyprctl dispatch movetoworkspace $workspace_id;
fi

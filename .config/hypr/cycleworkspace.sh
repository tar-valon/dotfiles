#!/bin/bash
current_workspace=$(hyprctl activeWorkspace | grep -oP '\d+')
total_workspaces=$(hyprctl workspaces | grep -oP '\d+' | wc -l)

if [ "$current_workspace" -eq "$total_workspaces" ]; then
  # If we are on the last workspace, create a new one and move there
  hyprctl dispatch workspace create
else
  # Otherwise, just move to the next workspace
  hyprctl dispatch workspace next
fi

# After passing the last workspace, return to workspace 1
if [ "$current_workspace" -gt "$total_workspaces" ]; then
  hyprctl dispatch workspace 1
fi

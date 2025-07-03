#!/bin/bash

# Находит свободный workspace и переключается на него
find_free_workspace() {
    for i in {1..100}; do
        if ! hyprctl workspaces | grep -q "workspace ID $i"; then
            hyprctl dispatch workspace "$i"
            exit
        fi
    done
    # Если все заняты, создаём следующий
    max_ws=$(hyprctl workspaces | grep "workspace ID" | awk '{print $3}' | sort -n | tail -1)
    hyprctl dispatch workspace $((max_ws + 1))
}

find_free_workspace

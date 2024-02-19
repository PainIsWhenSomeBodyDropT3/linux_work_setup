#!/bin/bash

# Get list of all Tmux sessions
sessions=$(tmux ls | cut -d ':' -f 1)

# Iterate through each session
for session in $sessions; do
    # Get list of all windows in the session
    windows=$(tmux list-windows -t $session -F "#{window_id}")

    # Iterate through each window
    for window in $windows; do
        # Get list of all panes in the window
        panes=$(tmux list-panes -t $window -F "#{pane_id}")

        # Iterate through each pane and send the command
        for pane in $panes; do
            # Send the command to the pane
            tmux send-keys -t $pane "source ~/.bashrc" Enter
        done
    done
done

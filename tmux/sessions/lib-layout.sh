#!/bin/bash
sessionName="$1"
whitepromptRoot="${whitepromptRoot:-/Users/davidurc02/Whiteprompt}"

for attempt in 1 2 3 4 5 6 7 8 9 10; do
  if tmux has-session -t "$sessionName" 2>/dev/null; then
    break
  fi
  sleep 0.05
done

tmux new-window -d -t "$sessionName" -n "fms" -c "$whitepromptRoot"
tmux split-window -t "${sessionName}:1" -v -c "$whitepromptRoot"
tmux select-pane -t "${sessionName}:1.0"
tmux split-window -t "${sessionName}:1.0" -h -c "$whitepromptRoot"
tmux split-window -t "${sessionName}:1.0" -v -c "$whitepromptRoot"
tmux split-window -t "${sessionName}:1.2" -v -c "$whitepromptRoot"

tmux respawn-pane -k -c "${whitepromptRoot}/merchant-portal-service" -t "${sessionName}:1.0"
tmux respawn-pane -k -c "${whitepromptRoot}/fms-services" -t "${sessionName}:1.1"
tmux respawn-pane -k -c "${whitepromptRoot}/merchant-portal-spa" -t "${sessionName}:1.2"
tmux respawn-pane -k -c "${whitepromptRoot}/fms-app" -t "${sessionName}:1.3"

tmux select-window -t "${sessionName}:1"
tmux select-pane -t "${sessionName}:1.0"


#!/bin/bash
sessionName="$1"
workspaceRoot="$HOME/Documents/workspace-bela"

for attempt in 1 2 3 4 5 6 7 8 9 10; do
  if tmux has-session -t "$sessionName" 2>/dev/null; then
    break
  fi
  sleep 0.05
done

tmux rename-window -t "${sessionName}:0" whatever

tmux new-window -d -t "$sessionName" -n accounting -c "$workspaceRoot/accounting"
tmux split-window -d -t "${sessionName}:1" -p25 -c "$workspaceRoot/accounting"
tmux select-layout -t "${sessionName}:1" tiled

tmux new-window -d -t "$sessionName" -n credit-memos -c "$workspaceRoot/credit-memos-compose"
tmux split-window -d -t "${sessionName}:2" -p25 -c "$workspaceRoot/credit-memos-compose"
tmux split-window -d -t "${sessionName}:2" -p25 -c "$workspaceRoot/credit-memos-compose"
tmux select-layout -t "${sessionName}:2" tiled

tmux new-window -d -t "$sessionName" -n quickdocs -c "$workspaceRoot/casestack-implmnt-compose"
tmux split-window -d -t "${sessionName}:3" -p25 -c "$workspaceRoot/casestack-implmnt-compose"
tmux select-layout -t "${sessionName}:3" tiled

tmux new-window -d -t "$sessionName" -n indigo -c "$workspaceRoot/casestack-indigo-compose"
tmux split-window -d -t "${sessionName}:4" -p25 -c "$workspaceRoot/casestack-indigo-compose"

tmux select-window -t "${sessionName}:2"


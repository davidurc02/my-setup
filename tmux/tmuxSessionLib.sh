#!/bin/bash
sessionName="fms"
windowName="fms"

if tmux has-session -t "$sessionName" 2>/dev/null; then
  exec tmux attach-session -t "$sessionName"
fi

tmux new-session -d -s "$sessionName"
for attempt in 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20; do
  if tmux list-windows -t "$sessionName" -F '#{window_name}' 2>/dev/null | grep -qx "$windowName"; then
    break
  fi
  sleep 0.1
done
exec tmux attach-session -t "$sessionName"


tmux new-session -d -s casestack -n whatever

tmux new-window -d -t '=casestack' -n accounting -c ~/Documents/workspace-bela/accounting
tmux split-window -d -t casestack:1 -p25 -c ~/Documents/workspace-bela/accounting
tmux select-layout -t casestack:1 tiled

tmux new-window -d -t '=casestack' -n credit-memos -c ~/Documents/workspace-bela/credit-memos-compose
tmux split-window -d -t casestack:2 -p25 -c ~/Documents/workspace-bela/credit-memos-compose
tmux split-window -d -t casestack:2 -p25 -c ~/Documents/workspace-bela/credit-memos-compose
tmux select-layout -t casestack:2 tiled

tmux new-window -d -t '=casestack' -n quickdocs -c ~/Documents/workspace-bela/casestack-implmnt-compose
tmux split-window -d -t casestack:3 -p25 -c ~/Documents/workspace-bela/casestack-implmnt-compose
tmux select-layout -t casestack:3 tiled

tmux new-window -d -t '=casestack' -n indigo -c ~/Documents/workspace-bela/casestack-indigo-compose
tmux split-window -d -t casestack:4 -p25 -c ~/Documents/workspace-bela/casestack-indigo-compose

tmux attach-session -t casestack

tmux rename-window -t 1 accounting
tmux rename-window -t 2 credit-memos
tmux rename-window -t 3 quickdocs
tmux rename-window -t 4 indigo

tmux select-window -t 2
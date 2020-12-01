ESSION=casestack
ACCOUNTING_FRONT=~/Documents/workspace-bela/accounting/frontend
ACCOUNTING_BACK=~/Documents/workspace-bela/accounting/backend
CREDITMEMOS_FRONT=~/Documents/workspace-bela/credit-memos-compose/front
CREDITMEMOS_BACK=~/Documents/workspace-bela/credit-memos-compose/back
QUICKDOCS_FRONT=~/Documents/workspace-bela/casestack-implmnt-compose/cs_front
QUICKDOCS_BACK=~/Documents/workspace-bela/casestack-implmnt-compose/cs_back
INDIGO_FRONT=~/Documents/workspace-bela/casestack-indigo-compose/cs_front
INDIGO_BACK=~/Documents/workspace-bela/casestack-indigo-compose/cs_back
ADMIN_MONGO=~/Documents/workspace-bela/adminMongo

DOCKER_FRONT_FISH='docker-compose Space exec Space front Space fish;clear'
DOCKER_BACK_FISH='docker-compose Space exec Space back Space fish;clear'
DOCKER_FRONT_BASH='docker-compose Space exec Space front Space bash;clear'
DOCKER_BACK_BASH='docker-compose Space exec Space back Space bash;clear'

tmux new-session -d -s $SESSION -n whatever

tmux new-window -d -t '='$SESSION -n accounting -c $ACCOUNTING_FRONT
tmux split-window -d -t $SESSION:1 -p50 -c $ACCOUNTING_BACK
tmux split-window -d -t $SESSION:1 -p50 -c $ACCOUNTING_FRONT
tmux select-layout -t $SESSION:1 tiled

tmux new-window -d -t '='$SESSION -n credit-memos -c $CREDITMEMOS_FRONT
tmux split-window -d -t $SESSION:2 -p50 -c $CREDITMEMOS_BACK
tmux split-window -d -t $SESSION:2 -p50 -c $CREDITMEMOS_FRONT
tmux select-layout -t $SESSION:2 tiled
tmux send-keys -t $SESSION:2.0 $DOCKER_FRONT_FISH Enter;
tmux send-keys -t $SESSION:2.2 $DOCKER_BACK_FISH Enter;

tmux new-window -d -t '='$SESSION -n quickdocs -c $QUICKDOCS_FRONT
tmux split-window -d -t $SESSION:3 -p50 -c $QUICKDOCS_BACK
tmux split-window -d -t $SESSION:3 -p50 -c $QUICKDOCS_FRONT
tmux select-layout -t $SESSION:3 tiled
tmux send-keys -t $SESSION:3.0 $DOCKER_FRONT_BASH Enter;
tmux send-keys -t $SESSION:3.2 $DOCKER_BACK_BASH Enter;

tmux new-window -d -t '='$SESSION -n indigo -c $INDIGO_FRONT
tmux split-window -d -t $SESSION:4 -p50 -c $INDIGO_BACK
tmux split-window -d -t $SESSION:4 -p50 -c $INDIGO_FRONT
tmux select-layout -t $SESSION:4 tiled
tmux send-keys -t $SESSION:4.0 $DOCKER_FRONT_FISH Enter;
tmux send-keys -t $SESSION:4.2 $DOCKER_BACK_FISH Enter;

tmux new-window -d -t '='$SESSION -n  adminMongo -c $ADMIN_MONGO

tmux attach-session -t $SESSION


guake --rename-current-tab=Whatever
guake --select-tab=0 --execute="tmux"

guake --new-tab --rename-tab=CM
guake --select-tab=1 --execute="cd ~/Documents/workspace-bela/credit-memos-compose/" --rename-current-tab=CM
guake --select-tab=1 --execute="tmux" 
guake --select-tab=1 --execute="tmux split-window" 


guake --new-tab --rename-current-tab=Indigo
guake --select-tab=2 --execute="cd ~/Documents/workspace-bela/casestack-indigo-compose/" --rename-current-tab=Indigo
guake --select-tab=2 --execute="tmux"

guake --new-tab --rename-current-tab=Accounting
guake --select-tab=3 --execute="cd ~/Documents/workspace-bela/accounting/"  --rename-current-tab=Accounting
guake --select-tab=3 --execute="tmux"

guake --new-tab --rename-current-tab=AdminMongo
guake --select-tab=4 --execute="cd ~/Documents/workspace-bela/adminMongo/"  --rename-current-tab=AdminMongo
guake --select-tab=4 --execute="tmux"

guake --new-tab --rename-current-tab=Quickdocs
guake --select-tab=5 --execute="cd ~/Documents/workspace-bela/casestack-implmnt-compose/"  --rename-current-tab=Quickdocs
guake --select-tab=5 --execute="tmux"

guake --show


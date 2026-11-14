#######################################################
# Git related

## git add branch/delete branch
alias gdb="git branch -D"

alias gwta="git worktree add"
alias gwtd="git worktree remove"

alias gs="git switch"


alias gitstatus="git status"                           # Show current repo status
alias ga="git add"                              # Stage file(s)
alias gaa="git add --all"                       # Stage all changes
alias gb="git branch"                           # List branches
alias gc="git commit -v"                        # Commit with verbose message editing
alias gca="git commit -v --amend"               # Amend last commit
alias gco="git checkout"                        # Switch branches or restore files
alias gcm="git checkout master"                   # Switch to main branch
alias gp="git push"                             # Push to remote
alias gl="git log --oneline --graph --decorate" # Compact, visual git log
alias gd="git diff"                             # Show unstaged changes
alias gds="git diff --staged"                   # Show staged changes
alias gpl="git pull"                            # Pull latest changes
alias gundo="git reset --soft HEAD~1"           # Undo last commit but keep changes staged

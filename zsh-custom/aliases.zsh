alias stree="open -a SourceTree"

alias reload="source $HOME/.zshrc"
alias k="clear"

# Promps for safety
alias rm='rm -i'
alias mv="mv -iv"
alias cp="cp -iv"

alias gs='git status'

alias gitup='git status; git stash; git checkout main; git pull; git checkout -; git merge main; git status; echo "Run git stash pop to return to previous state"'

alias l='gls --color -alh --group-directories-first'

# Git aliases
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.st status

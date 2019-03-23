
######  GENERAL STUFF ###### 


# Updating PATH to include more locations
export PATH="$HOME/bin:/usr/local/bin:/usr/local/sbin:$PATH"
export MANPATH="/usr/local/man:$MANPATH"


# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='code'
fi


alias l="ls -alh"
alias gs="git status"
alias reload="source $HOME/.zshrc"
alias stree="open -a SourceTree"


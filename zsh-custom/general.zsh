
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

alias reload="source $HOME/.zshrc"
alias k="clear"

# Promps for safety
alias rm='rm -i'
alias mv="mv -iv"
alias cp="cp -iv"

alias gs='git status'
alias l='gls --color -alh --group-directories-first'

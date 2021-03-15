
######  GENERAL STUFF ###### 

# Updating PATH to include more locations
export MANPATH="/usr/local/man:$MANPATH"

export PATH="$PATH:/usr/libexec"

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='code'
fi

### OH MY ZSH STUFF ###
DEFAULT_USER=$(whoami)

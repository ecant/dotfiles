
### REGULAR ZSH STUFF ###
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=10000
setopt appendhistory autocd extendedglob nomatch
unsetopt beep notify
bindkey -v
zstyle :compinstall filename '$HOME/.zshrc'
autoload -Uz compinit

echo "Reminder to periodically run 'brew update' and check for outdated packages!"

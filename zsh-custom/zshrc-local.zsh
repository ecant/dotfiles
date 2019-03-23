# This file is sourced by .zshrc and is for local-machine only 
# aliases and environment configurations


###### ZSH STUFF ######

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=10000
setopt appendhistory autocd extendedglob nomatch
unsetopt beep notify
bindkey -v
zstyle :compinstall filename '$HOME/.zshrc'
autoload -Uz compinit
compinit



######  GENERAL STUFF ###### 

alias l="ls -alh"
alias gs="git status"
alias reload="source $HOME/.zshrc"
alias stree="open -a SourceTree"


### NVM CONFIG
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion

###### VAULT STUFF ###### 

export VAULT_ADDR='https://vault.agro.services'

vault-safe() {
    export VAULT_TOKEN=$(vault token lookup | egrep "^id " | awk '{print $2}') 
    safe $@
    unset VAULT_TOKEN
}

alias ssh="vault-ssh"
alias vault-looney="alias vault-looney; vault-safe tree secret/looney-tunes"
alias vault-ducks="alias vault-ducks; vault-safe tree secret/mighty-ducks"



######  CARTHAGE STUFF ###### 

alias cupdate="carthage update --no-build --platform iOS --no-use-binaries"
alias cboot="carthage bootstrap --no-build --platform iOS --no-use-binaries"
alias cbuild="carthage build --cache-builds --platform iOS --no-use-binaries --configuration Debug"
alias cbuild-release="carthage build --cache-builds --platform iOS --no-use-binaries --configuration Release" 



######  CLOUD FOUNDRY STUFF ###### 
alias cf-login-np="cf login --skip-ssl-validation --sso -a https://api.mcf-np.threega.com"
alias cf-login-prod="cf login --skip-ssl-validation --sso -a https://api.cf.threega.com"

alias old-cf-login-np="cf login --skip-ssl-validation -a api.mcf-np.monsanto.com -u ecant@monsanto.com"
alias old-cf-login-prod="cf login --skip-ssl-validation -a api.mcf.monsanto.com -u ecant@monsanto.com"
alias old-docker="ssh stludockerprd07.monsanto.com -l ecant"
alias old-logs="ssh stluapplogprd01.monsanto.com -l ecant"








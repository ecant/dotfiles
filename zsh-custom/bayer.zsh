
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

alias ssh="$HOME/dotfiles/scripts/vault-ssh"


######  CARTHAGE STUFF ###### 

alias cupdate="carthage update --no-build --platform iOS --no-use-binaries"
alias cboot="carthage bootstrap --no-build --platform iOS --no-use-binaries"
alias cbuild="carthage build --cache-builds --platform iOS --no-use-binaries --configuration Debug"
alias cbuild-release="carthage build --cache-builds --platform iOS --no-use-binaries --configuration Release" 


######  CLOUD FOUNDRY STUFF ###### 
alias cf-login-np="cf login --skip-ssl-validation --sso -a https://api.mcf-np.threega.com"
alias cf-login-prod="cf login --skip-ssl-validation --sso -a https://api.cf.threega.com"





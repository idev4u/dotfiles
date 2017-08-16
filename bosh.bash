# add bosh comands
function bcuf() {
  bosh --parallel 10 create release --force && bosh upload release
}

function bcud() {
  bcuf && bosh upload release && bosh -n deploy
}

function boshDeployWithManifest() {
  bosh -d $1 deploy
}
alias bdwm=boshDeployWithManifest

# bosh ssh with manifest
function boshSSHWithManifest() {
  bosh -d $1 ssh
}
alias bssh='boshSSHWithManifest'

# bosh delete deployment with force
function boshDeleteDeployment() {
  bosh delete deployment $1 --force
}

alias bddf='boshDeleteDeployment'

# bosh status
function bosh_status() {
  bosh status
}
alias bst='bosh_status'

getCurrentManifest(){
  bosh status | grep Manifest | awk '{print $2}'
}

alias bd='bosh deploy --no-redact'

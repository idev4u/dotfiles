go_init(){
  echo export GOPATH=$(PWD) >> .envrc
  echo export PATH=$PATH:$GOPATH/bin >> .envrc
  direnv allow
}

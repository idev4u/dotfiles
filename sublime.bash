openbits(){
  sublime $(bits_folders)
}

addbits_sub(){
  ln -s ~/workspace/bits-service ~/workspace/bits-service-release/src/bits-service
}

bits_folders(){
  set -- ~/workspace/bits-service/ ~/workspace/bits-service-ci/ ~/workspace/bits-service-release
  echo "$@"
}

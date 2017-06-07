dev_mode(){
  BITS_PROJECT_HOME=~/workspace/bits-service-release
  linkchk ${BITS_PROJECT_HOME}/src/bits-service
  if [ "$?" != 10 ]
  then
    ln -s ~/workspace/bits-service/ ${BITS_PROJECT_HOME}/src/bits-service
    if [ "$?" == 0 ]
    then
      echo "Turn bits-service into dev_mode."
    fi
  fi
}

linkchk(){
  file="$1"
  if [ -z "$1" ]
  then
    echo "Missing Target for linkchk use: linkchk <path to link>"
    return 1
  fi

  if [[ -L "$file" && -d "$file" ]]
  then
    echo "Target is: [ $file ] is already a symlink to a directory."
    return 10
  fi
}

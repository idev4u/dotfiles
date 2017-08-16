function vboxup() {
  if [ -z $1 ]
  then
    printf "state file is missing! usage \"vboxup state.json\" \n"
    return 1
  fi
  current_vm_cid=`cat $1 | grep current_vm_cid | tr -d [:blank:][,][\"] | cut -d ':' -f 2`
  if [ -z ${current_vm_cid} ]
  then
    printf "ups, the current vm cid is empty!\n"
    return 1
  else
    printf "the current vm cid is :  ${current_vm_cid} .\n"
    VBoxManage controlvm ${current_vm_cid} resume
  fi
}

function vboxdown() {
  if [ -z $1 ]
  then
    printf "state file is missing! usage \"vboxdown state.json\" \n"
    return 1
  fi
  current_vm_cid=`cat $1 | grep current_vm_cid | tr -d [:blank:][,][\"] | cut -d ':' -f 2`
  if [ -z ${current_vm_cid} ]
  then
    printf "ups, the current vm cid is empty!\n"
    return 1
  else
    printf "the current vm cid is :  ${current_vm_cid} .\n"
    VBoxManage controlvm ${current_vm_cid} pause
  fi
}

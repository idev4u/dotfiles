cf-lite (){
    if [ -z ${CF_ADMIN_PW}]; then
      echo "Type cf admin password followed by [ENTER]:"
      read CF_ADMIN_PW
    fi
    cf api api.bosh-lite.com --skip-ssl-validation;
    cf login -u admin -p ${CF_ADMIN_PW};
    cf create-org o;
    cf target -o o;
    cf create-space s;
    cf target -o o -s s
}

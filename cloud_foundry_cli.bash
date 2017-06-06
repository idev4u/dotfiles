cf-lite ()
{
    cf api api.bosh-lite.com --skip-ssl-validation;
    cf login -u admin -p admin;
    cf create-org o;
    cf target -o o;
    cf create-space s;
    cf target -o o -s s
}

unset CREDHUB_CA_CERT
unset CREDHUB_CLIENT
unset CREDHUB_PROXY
unset CREDHUB_SECRET
unset CREDHUB_SERVER


credhub api --skip-tls-validation --ca-cert <(bosh int ./vars/director-vars-store.yml --path /credhub_ca/ca) -s \
https://10.0.0.6:8844
PASS=$(bosh int cluster-creds.yml --path /uaa-users-admin)
credhub login -u credhub-admin -p $PASS
unset PASS

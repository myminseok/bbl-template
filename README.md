

https://github.com/cloudfoundry/bosh-bootloader
```
$ brew tap cloudfoundry/tap
$ brew install bosh-cli
$ brew install bbl


# aws
```

git clone <THIS REPO>

cp -r bbl-template  bbl-aws

cd bbl-aws

cp credentials.sh.example ../credentials.sh

vi ../credentials.sh

cat set-bblenv.sh

./bbl-plan.sh

./bbl-up.sh

./bbl-print-env.sh

bosh env
bosh vms
bosh releases

./login-credhub.sh
credhub api
credhub find



./bbl-destroy.sh

```

# vsphere
```

git clone <THIS REPO>

cp -r bbl-template  bbl-aws

cd bbl-aws

cp credentials.sh.example ../credentials.sh

vi ../credentials.sh

cat set-bblenv.sh



vi create-director-override.sh
-> DNS: dig google.com , dig vcenter-domain


./bbl-plan.sh

./bbl-up.sh

./bbl-print-env.sh

bosh env
bosh vms
bosh releases

./login-credhub.sh
credhub api
credhub find



./bbl-destroy.sh
```

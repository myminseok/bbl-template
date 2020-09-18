

https://github.com/cloudfoundry/bosh-bootloader
```
$ brew tap cloudfoundry/tap
$ brew install bosh-cli
$ brew install bbl

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
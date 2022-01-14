bbl will create a jumpbox, bosh vm and you may use jumpbox as you want.

https://github.com/cloudfoundry/bosh-bootloader
```
$ brew tap cloudfoundry/tap
$ brew install bosh-cli
$ brew install bbl

and terraform cli.
```

```
git clone <THIS REPO>

cp -r bbl-template/bbl-vsphere my-bbl-vsphere

cd  my-bbl-vsphere
```

```
cp credentials.sh.example ../credentials.sh
  
vi../credentials.sh
  # you donot need this for spinning up a jumpbox VM.
  export BBL_VSPHERE_VCENTER_RP=dummy_not_exist. 
```
  
```
cat set-bblenv.sh

./bbl-plan.sh
# now all required files will be download and generated.
```
change vars/bbl.tfvars and change ops-file under ./ops-override folder and create-jumpbox-override.sh.
```
edit vars/bbl.tfvars if need.

vcenter_ds="datastore3"
network_name="VM Network"
vcenter_cluster="Cluster"
vcenter_ip="vcenter.lab.pcfdemo.net"
vcenter_templates="bbl_vms" <== will be create automatically on vcenter
env_id="homelab-sandbox"
vsphere_subnet_cidr="192.168.0.0/16"
internal_gw="192.168.0.1"
vcenter_rp="dummy_not_exist" <== donot need for jumpbox.
vcenter_vms="bbl_vms" <== will be create automatically on vcenter
vcenter_disks="bbl_disk" <== will be create automatically on vcenter
jumpbox_ip="192.168.0.6" <== can edit this if need
director_internal_ip="192.168.0.7" <== can edit this if need
vcenter_dc="Datacenter"
```

now let's create a jumpbox, and bosh vm(might fail), but you may use jumpbox only
```
./bbl-up.sh
```

```
cat ./ssh-jumpbox.sh
./ssh-jumpbox.sh

./bbl-print-env.sh

```                                                      
change vm configuraton or upgrade os image? change ops-file under ./ops-override folder and create-jumpbox-override.sh. then run following command again.
```
./bbl-up.sh
```

```
./bbl-destroy.sh

```

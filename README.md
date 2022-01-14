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

cp credentials.sh.example ../credentials.sh
  
vi../credentials.sh
  # you donot need this for spinning up a jumpbox VM.
  export BBL_VSPHERE_VCENTER_RP=dummy_not_exist. 
  
  
cat set-bblenv.sh

./bbl-plan.sh

edit vars/bbl.tfvars if need.

vcenter_ds="datastore3"
network_name="VM Network"
vcenter_cluster="Cluster"
vcenter_ip="vcenter.lab.pcfdemo.net"
vcenter_templates="bbl_vms"
env_id="homelab-sandbox"
vsphere_subnet_cidr="192.168.0.0/16"
internal_gw="192.168.0.1"
vcenter_rp="dummy_not_exist"
vcenter_vms="bbl_vms"
vcenter_disks="bbl_disk"
jumpbox_ip="192.168.0.6"
director_internal_ip="192.168.0.7"
vcenter_dc="Datacenter"%

  
# edit create-jumpbox-override.sh
# add ops-file under ./ops-override folder if need
  
./bbl-up.sh

# it will create a jumpbox, and bosh vm(might fail)
# you may use jumpbox only
 
cat ./ssh-jumpbox.sh
./ssh-jumpbox.sh
                                                      
./bbl-print-env.sh

./bbl-destroy.sh

```

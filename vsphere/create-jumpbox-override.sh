#!/bin/sh
bosh create-env \
  ${BBL_STATE_DIR}/jumpbox-deployment/jumpbox.yml \
  --state  ${BBL_STATE_DIR}/vars/jumpbox-state.json \
  --vars-store  ${BBL_STATE_DIR}/vars/jumpbox-vars-store.yml \
  --vars-file  ${BBL_STATE_DIR}/vars/jumpbox-vars-file.yml \
  -o  ${BBL_STATE_DIR}/jumpbox-deployment/vsphere/cpi.yml \
  -o  ${BBL_STATE_DIR}/ops-override/jumpbox-stemcell-cpi.yml \
  -o  ${BBL_STATE_DIR}/ops-override/jumpbox-persistent_disk.yml\
  -o  ${BBL_STATE_DIR}/ops-override/jumpbox-dns.yml \
  -o  ${BBL_STATE_DIR}/ops-override/user-add.yml \
  -o  ${BBL_STATE_DIR}/jumpbox-deployment/vsphere-jumpbox-network.yml \
  -v  vcenter_user="${BBL_VSPHERE_VCENTER_USER}" \
  -v  vcenter_password="${BBL_VSPHERE_VCENTER_PASSWORD}" 

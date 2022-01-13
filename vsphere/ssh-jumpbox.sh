# bbl ssh --jumpbox
./fetch-jumpbox-ssh.sh
ssh jumpbox@$(bbl jumpbox-address) -i ./jumpbox.key

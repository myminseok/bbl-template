source set-bblenv.sh

bbl plan  --aws-access-key-id $BBL_AWS_ACCESS_KEY_ID \
        --aws-secret-access-key $BBL_AWS_SECRET_ACCESS_KEY \
        --aws-region $BBL_AWS_REGION \
        --name $BBL_ENV_NAME --iaas $BBL_IAAS  --lb-type concourse --debug

## workaround for custom tfvars is not working:  https://github.com/cloudfoundry/bosh-bootloader/blob/master/docs/customization.md
sed 's/availability_zones=\["ap-northeast-2a","ap-northeast-2b","ap-northeast-2c","ap-northeast-2d"\]/availability_zones=\["ap-northeast-2a"\]/g' ./vars/bbl.tfvars > ./vars/bbl.tfvars.new
mv ./vars/bbl.tfvars.new ./vars/bbl.tfvars

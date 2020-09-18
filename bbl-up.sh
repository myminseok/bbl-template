source set-bblenv.sh

bbl up  --aws-access-key-id $BBL_AWS_ACCESS_KEY_ID \
        --aws-secret-access-key $BBL_AWS_SECRET_ACCESS_KEY \
        --aws-region $BBL_AWS_REGION \
        --name $BBL_ENV_NAME --iaas $BBL_IAAS --lb-type concourse  --debug

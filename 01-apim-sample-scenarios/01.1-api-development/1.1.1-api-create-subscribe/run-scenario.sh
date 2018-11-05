#!/bin/bash

repo='https://github.com/wso2/product-apim.git'
TEST_DIR='product-apim'
DIR=$2
export DATA_BUCKET_LOCATION=$DIR

git clone $repo
cd $TEST_DIR
mvn clean install

echo "Copying surefire-reports to data bucket"

cp -r modules/integration/tests-integration/tests-backend/target/surefire-reports ${DIR}
ls ${DIR}

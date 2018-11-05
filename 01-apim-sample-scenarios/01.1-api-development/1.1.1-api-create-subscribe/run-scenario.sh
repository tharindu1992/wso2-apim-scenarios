#!/bin/bash

repo='https://github.com/wso2/product-apim.git'
branch='product-scenario'
TEST_DIR='product-apim'
DIR=$2
export DATA_BUCKET_LOCATION=$DIR

git clone -b $branch $repo
cd $TEST_DIR
mvn clean install

echo "Copying surefire-reports to data bucket"

cp -r product-scenarios/1-api-updates-using-new-versions/1.1-manage-api-versions/1.1.1-create-new-api-version/target/surefire-reports ${DIR}
ls ${DIR}

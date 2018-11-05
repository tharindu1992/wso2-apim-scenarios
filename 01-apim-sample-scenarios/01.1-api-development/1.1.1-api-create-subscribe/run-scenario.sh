#!/bin/bash

repo='https://github.com/wso2/product-apim.git'
branch='2.x'
TEST_DIR='product-apim'
DIR=$2
export DATA_BUCKET_LOCATION=$DIR

git clone -b $branch $repo
cd $TEST_DIR
mvn clean install

echo "Copying surefire-reports to data bucket"

cp -r modules/integration/tests-integration/tests-backend/target/surefire-reports ${DIR}
ls ${DIR}

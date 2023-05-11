#!/bin/bash
URI="015501295117.dkr.ecr.ap-northeast-2.amazonaws.com/bankapp:Backend"
FILE="bankapp-api-deployment-service.yaml"

sed -i "s#$URI*#$URI$1#g" $FILE
git add $FILE
git commit -m '[UPDATE] bankapp:Backend${BUILD_NUMBER} image versioning'
git push origin main

#!/bin/bash
URI="015501295117.dkr.ecr.ap-northeast-2.amazonaws.com/bankapp:Backend"
FILE="bankapp-api-deployment-service.yaml"

cd /var/lib/jenkins/workspace/cicd
echo "$URI$1"
echo "$1"
sed -i "s#$URI*#$URI$1#g" $FILE

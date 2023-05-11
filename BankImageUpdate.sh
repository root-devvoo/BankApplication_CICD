#!/bin/bash
URI="015501295117.dkr.ecr.ap-northeast-2.amazonaws.com/bankapp:Backend"
FILE="/home/ubuntu/cicd/bankapp-api-deployment-service.yaml"

sed -i "s#$URI*#$URI$1#g" $FILE

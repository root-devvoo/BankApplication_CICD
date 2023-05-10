#!/bin/bash
URI="015501295117.dkr.ecr.ap-northeast-2.amazonaws.com/bankapp/bankapp:Backend"
FILE="bankapp-api-deployment-service.yaml"

sed -i "s#$URI*#$URI$1#g" $FILE
git add $FILE
git commit -m "[UPDATE] Backend$1 image versioning"
git push origin test

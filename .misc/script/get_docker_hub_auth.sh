#!/bin/bash

kubectl create secret docker-registry regcred --docker-server=https://index.docker.io/v2/ --docker-username=bartkim07120 --docker-password=Woghks0712 --docker-email=jaehwankim07120@gmail.com
kubectl get secret regcred --output="jsonpath={.data.\.dockerconfigjson}" | base64 --decode

echo '\'
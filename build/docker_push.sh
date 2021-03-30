#!/bin/sh
image=$1
hub=$2
docker tag $image $hub/$image
docker push $hub/$image
docker rmi $hub/$image

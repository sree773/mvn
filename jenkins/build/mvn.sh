#! /bin/bash

echo "************************"
echo "******Building jar******"
echo "************************"
WORKSPACE=/home/ubuntu/jenkins/workspace/gitt
docker run --rm -v $WORKSPACE/java-app:/app -v /root/.m2:/root/.m2/ -w /app maven:3-alpine "$@"

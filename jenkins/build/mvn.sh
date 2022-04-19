#! /bin/bash

echo "************************"
echo "******Building jar******"
echo "************************"
WORKSPACE=/var/lib/jenkins/workspace/first-job
docker run --rm -v $WORKSPACE/java-app:/app -v /root/.m2:/root/.m2/ -w /app maven:3-alpine "$@"

#! /bin/bash
echo maven-project > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth

scp -o StrictHostKeyChecking=no -i /opt/prod /tmp/.auth ubuntu@ec2-44-204-57-26.compute-1.amazonaws.com:/tmp/.auth
scp -o StrictHostKeyChecking=no -i /opt/prod ./jenkins/deploy/publish.sh ubuntu@ec2-44-204-57-26.compute-1.amazonaws.com:/tmp/publish
ssh -o StrictHostKeyChecking=no -i /opt/prod ubuntu@ec2-44-204-57-26.compute-1.amazonaws.com "/tmp/publish"

#!/bin/bash
docker build -t aphid/threat-weaver .

docker tag aphid/threat-weaver:latest 791607200561.dkr.ecr.eu-west-1.amazonaws.com/aphid/threat-weaver:latest

docker push 791607200561.dkr.ecr.eu-west-1.amazonaws.com/aphid/threat-weaver:latest
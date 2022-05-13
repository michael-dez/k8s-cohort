#! /usr/bin/bash
# Author: Mike Mendez
# Description: Create and run ec2 instances in the default region
# Usage: run-ec2.sh <TODO> Currently no args supported, Would like to add name/tags args
aws ec2 run-instances \
    --image-id ami-0022f774911c1d690 \
    --instance-type t2.micro \
    --key-name linux_demo \
    --user-data file://usrdata \
    | jq '.Instances[].PrivateIpAddress'


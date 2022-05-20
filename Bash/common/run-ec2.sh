#! /usr/bin/bash
# Author: Mike Mendez
# Description: Create and run ec2 instances for labs. Specify public key in 
# usrdata script. Outputs private IP of created instance(s).
usage(){
echo "Usage: $0 [-n NUMBER]"
}
NUMBER=1
NAME=lab-target

while getopts "n:i:h" opt; do
    case "$opt" in
        n)
            NUMBER=$OPTARG
            ;;
        i)
            NAME=$OPTARG
            ;;
        h)
            usage
            exit 0
            ;;
        *)
            echo "Unknown option $OPTARG"
            usage
            exit 1
            ;;
    esac
done

aws ec2 run-instances \
    --image-id ami-0022f774911c1d690 \
    --instance-type t2.micro \
    --count $NUMBER \
    --tag-specifications "ResourceType=instance,Tags=[{Key=Name,Value=${NAME}}]" \
    --security-group-ids sg-0b964a5dd043b69df \
    --key-name linux_demo \
    --user-data file://usrdata \
    | jq '.Instances[].PrivateIpAddress'

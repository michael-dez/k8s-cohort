aws ec2 describe-instances | jq '.Reservations[].Instances[] | select(.State.Name == "running" and .Tags[].Value == "master-us-east-1b") | .PublicIpAddress'

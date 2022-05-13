## Create 1 new ec2 instance (target node)
Thought it would be smart to kill multiple birds so I wrote a script that creates a new ec2 instance, updates installed packages, adds my public key to the `authorized_keys` file, and outputs the new ec2's private ip when run without arguments.
**Requires** `jq` and the aws cli be installed and configured with an access key. Can be done using `aws configure` command.
```bash
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
```
This is the `usrdata` file:
```bash
#! usr/bin/bash
# Author: Mike Mendez
# Description: Ec2 userdata script to update instance and add an ssh public key to /home/ec2-user/.ssh/authorized_keys

pubkey='ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIPdax+vmP4zuv4/OFfJDc3HGU+6CBSv47EPgDxTNzTek MikeM@marsreturnship.com'

yum update -y
echo $pubkey >> /home/ec2-user/.ssh/authorized_keys
```
## ~~Enable ssh connectivity between target and master~~
## Verify connectivity via ssh
```bash
ssh -i ~/.ssh/id_ed25519 172.31.26.145
```
## Create a host file
I added the new host to the existing `hosts` file.
```
172.31.17.8 ansible_user=ec2-user ansible_ssh_private_key_file=~/.ssh/id_ed25519
172.31.26.145 ansible_user=ec2-user ansible_ssh_private_key_file=~/.ssh/id_ed25519
```
## Check the connectivity using `ansible` command
```bash
ansible -m ping -i hosts all
```
## Create a file named marsadhoc.txt `ansible` command
```bash
ansible all -a "touch /home/ec2-user/marsadhoc.txt" -i hosts
```
## Create a playbook to create a directory named `/tmp/marsdemo`
```yaml
---
- hosts: all
  become: yes
  name: Directory creation demo
  tasks:
    - name: Create a directory
      ansible.builtin.file:
        path: /home/ec2-user/marsadhoc.txt
        state: touch
```

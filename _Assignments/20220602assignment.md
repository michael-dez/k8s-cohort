## Problem 1: What are the ports need to opened if we setup the Control Plane and Worker Node in EC2 instances?
### Control Plane
| Protocol | Direction | Port Range | Purpose | Used By |
|----------|-----------|------------|---------|---------|
| TCP | Inbound | 6443 | Kubernetes API server | All |
| TCP |Inbound |2379-2380 |etcd server client API |kube-apiserver, etcd |
| TCP | Inbound |   10250 |Kubelet API | Self, Control plane |
| TCP | Inbound |   10259 |kube-scheduler | Self |
| TCP | Inbound |   10257 |kube-controller-manager | Self |
### Worker Node(s)
| Protocol | Direction | Port Range | Purpose | Used By |
|----------|-----------|------------|---------|---------|
| TCP | Inbound | 10250 | Kubelet API| Self, Control plane |
| TCP |Inbound |30000-32767 | NodePort Services | All |
[reference](https://kubernetes.io/docs/reference/ports-and-protocols/)
## Problem 2: Document the error received when provisioning HPA during class and Perform Root Cause Analysis
When originally troubleshooting issue, `hpa describe` showed an error receiving resource usage from metrics api. Deploying latest version of `metrics-server` resolved issue.
```bash
kubectl apply -f https://github.com/kubernetes-sigs/metrics-server/releases/latest/download/components.yaml
```
Troubleshooting and the 2nd attempt shown in next section.
## Problem 3: Redo HPA once again.
## Problem 4: Create a namespace called `mars-1` and set it as the default namespace
```bash
# create namespace
kubectl create ns mars-1
# set kubectl default namespace
kubectl config set-context --current --namespace=mars-1
```

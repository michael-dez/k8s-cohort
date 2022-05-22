## Problem 1: Create a pod with the name "mars-pod-imp" with the image "busybox" using imperative method.
```bash
kubectl run mars-pod-imp --image=busybox --restart=Never
```
## Problem 2: Write the command to get the yaml file of the generated pod
```bash
kubectl run mars-pod-imp --image=busybox --restart=Never --dry-run=client -o yaml
```
## Problem 3: Create a pod with the name "mars-pod-decl" with the image "busybox" using declarative method. (Note: Use the shortcut/tip to generate the yaml file)
```bash
kubectl run mars-pod-decl --image=busybox --restart=Never --dry-run=client -o yaml > mars-pod-decl.yaml
kubectl apply -f mars-pod-decl.yaml
```
## Problem 4: Describe the pod "mars-pod-decl"
```bash
kubectl describe po mars-pod-decl
```
## Problem 5: Create a deployment with the name "my-deployment" with the image "nginx:1.20.2-alpine" with 3 replicas
```bash
kubectl create deploy my-deployment --image=nginx:1.20.2-alpine --replicas=3
```
### Scale the number of replicas to 7 (Use imperative command)
```bash
kubectl scale deploy my-deployment --replicas=7
```
### Update the image of the deployment to "nginx:1.21.6-alpine"
```bash
kubectl set image deployment/my-deployment *=nginx:1.21.6-alpine
```
### Update the image of the deployment to "nginx:mars"
```bash
kubectl set image deployment/my-deployment *=nginx:mars
```
### If your pods are not coming up, rollback to the revision 1
```bash
kubectl rollout history deployment/my-deployment
kubectl rollout undo deployment/my-deployment --to-revision=1
```
## Problem 6: Create 2 configmaps with the names and contents:
### my-configmap1 `color:blue`
```bash
kubectl create cm my-configmap1 --from-literal=color=blue
```
### my-configmap2 `color:green`
```bash
kubectl create cm my-configmap2 --from-literal=color=green
```
### Use the config maps in a pod named "pod-configmap" using the image "busybox" with the environment variables: BLUE_DEPLOYMENT and GREEN_DEPLOYMENT
```bash
kubectl run pod-configmap --image=busybox --env="BLUE_DEPLOYMENT=$(minikube kubectl -- get cm my-configmap1 -o jsonpath='{.data.color}')" --env="GREEN_DEPLOYMENT=$(minikube kubectl -- get cm my-configmap2 -o jsonpath='{.data.color}')"
```
## Problem 7: Create 2 secrets with the names/contents:
### `my-secret1` and `username: Administrator`
```bash
kubectl create secret generic my-secret1 --from-literal=username=Administrator
```
### `my-secret2` and `password: Password@123`
```bash
kubectl create secret generic my-secret2 --from-literal=password=Password@123
```

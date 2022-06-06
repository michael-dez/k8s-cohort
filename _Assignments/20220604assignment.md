## Problem 1: Create a pod using the provided cka-logs.yaml file. Monitor the logs for all the containers. Extract log lines which have the number `02`. Write them to `/opt/assignment-logs.txt`.
```yaml
# ./cka-logs.yaml
apiVersion: v1
kind: Pod
metadata:
  name: counter2
spec:
  containers:
  - name: count
    image: busybox
    args:
    - /bin/sh
    - -c
    - >
      i=0;
      while true;
      do
        echo "$i: $(date)" >> /var/log/1.log;
        echo "$(date) INFO $i" >> /var/log/2.log;
        i=$((i+1));
        sleep 1;
      done
    volumeMounts:
    - name: varlog
      mountPath: /var/log
  - name: count-log-1
    image: busybox
    args: [/bin/sh, -c, 'tail -n+1 -f /var/log/1.log']
    volumeMounts:
    - name: varlog
      mountPath: /var/log
  - name: count-log-2
    image: busybox
    args: [/bin/sh, -c, 'tail -n+1 -f /var/log/2.log']
    volumeMounts:
    - name: varlog
      mountPath: /var/log
  volumes:
  - name: varlog
    emptyDir: {}
```
## Problem 2: Create a pod named `node-selector-pod` based on the `nginx` image. The pod should only run on the node which has a label of disk=ssd.
```yaml
# ./node-selector-pod.yaml
apiVersion: v1
kind: Pod
metadata:
  creationTimestamp: null
  labels:
    run: node-selector-pod
  name: node-selector-pod
spec:
  containers:
  - image: nginx
    name: node-selector-pod
    resources: {}
  nodeSelector:
    disk: ssd
  dnsPolicy: ClusterFirst
  restartPolicy: Always
status: {}
```
## Problem 3: Create a deployment named `overload-pods` based on nginx `image` with 3 replicas. Create a deployment named `underload-pods` based on the `nginx` image with 2 replicas. For the `overload-pods` deployment, find the pods with highest cpu usage and save the output to `/tmp/overload.txt`.
## Problem 4: Show the command to make the node named `k8s-node-0` unavailable and reschedule all the pods running on it.
```bash
kubectl drain k8s-node-0
```

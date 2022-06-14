# June 14 2022
1. Create a helm chart to deploy a pod with the nginx image and expose it with a nodeport service. The below mentioned variables should be passed from `values.yaml`:

* Pod name
* Container name
* Service name
* Service ports

```yaml
# ./templates/pod.yaml
apiVersion: v1
kind: Pod
metadata:
  labels:
    app.kubernetes.io/name: demo-chart
  name: { Values.pod.name }
spec:
  containers:
  - image: nginx
    name: { Values.service.name }
    ports:
      - containerPort: 80
        name: nginx-port
---
# ./templates/svc.yaml
apiVersion: v1
kind: Service
metadata:
  name: { Values.service.name }
spec:
  ports:
  - nodePort: { Values.service.nodePort }
    port: { Values.service.port }
    protocol: TCP
    targetPort: nginx-port
  selector:
    app.kubernetes.io/name: demo-chart
  type: NodePort
---
# ./values.yaml
pod:
  name: mikes-pod
  container: mikes-container
service:
  name: mikes-service
    nodePort: 31291
    port: 80
```
2. Create a helm package and upload it as an attachment in the confluence page.

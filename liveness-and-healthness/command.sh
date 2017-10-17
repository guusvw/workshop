kubectl create -f deploy.yaml

kubectl get pods --selector="name=bad-frontend"

pod=$(kubectl get pods --selector="name=bad-frontend" --output=jsonpath={.items..metadata.name})

kubectl describe pod $pod

kubectl get pods --selector="name=frontend"

kubectl get pods --selector="name=frontend"

pod=$(kubectl get pods --selector="name=frontend" --output=jsonpath={.items..metadata.name})

kubectl exec $pod -- /usr/bin/curl -s localhost/unhealthy

kubectl get pods --selector="name=frontend"
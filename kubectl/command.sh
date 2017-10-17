kubectl run http --image=katacoda/docker-http-server:latest --replicas=1

kubectl get deployments

kubectl describe deployment http

kubectl expose deployment http --port=8000 --target-port=80

kubectl run httpexposed --image=katacoda/docker-http-server:latest --replicas=1 --port=80 --hostport=8001

kubectl get svc

kubectl scale --replicas=3 deployment http


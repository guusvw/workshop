kubectl create -f deployment.yaml

kubectl get deployment

kubectl describe deployment webapp1

kubectl create -f service.yaml

kubectl get svc

kubectl describe svc webapp1-svc

# set replicas to 4 in deploymen.yaml

kubectl apply -f deployment.yaml

# watch -n 1 
kubectl get deployment

kubectl get pods
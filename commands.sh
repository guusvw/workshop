#!/bin/bash

kubectl get nodes    

kubectl cluster-info

kubectl run first-deployment --image=katacoda/docker-http-server --port=80

kubectl expose deployment first-deployment --port=80 --type=NodePort

export PORT=$(kubectl get svc first-deployment -o go-template='{{range.spec.ports}}{{if .nodePort}}{{.nodePort}}{{"\n"}}{{end}}{{end}}')
curl host01:$PORT
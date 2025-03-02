#!/bin/bash

`kubectl get nodes > /dev/null 2>&1`
if [ "$?" -ne 0 ]; then
    minikube start
fi

kubectl apply -f role_stuff/namespaces.yaml
kubectl apply -f role_stuff/roles.yaml

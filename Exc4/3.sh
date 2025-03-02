#!/bin/bash

`kubectl get nodes > /dev/null 2>&1`
if [ "$?" -ne 0 ]; then
    minikube start
fi

kubectl apply -f role_stuff/users.yaml

exit 0
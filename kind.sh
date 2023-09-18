#!/bin/bash


git clone https://github.com/initcron/k8s-code.git

cd k8s-code/helper/kind/

kind create cluster --config kind-three-node-cluster.yaml

kind get clusters

kubectl cluster-info --context kind-kind

kubectl get nodes

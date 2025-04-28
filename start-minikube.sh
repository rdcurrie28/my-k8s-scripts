#!/bin/bash

echo "🔍 Checking Minikube status..."
STATUS=$(minikube status --format='{{.Host}}')

if [[ "$STATUS" == "Running" ]]; then
  echo "✅ Minikube is already running."
else
  echo "🚀 Minikube is not running. Starting now..."
  minikube start --driver=podman
fi

echo ""
echo "📡 Cluster Info:"
echo "----------------"
echo "🌐 Minikube IP: $(minikube ip)"
echo ""
kubectl get nodes -o wide
echo ""
echo "🎯 Kubernetes Version: $(kubectl version --short | grep Server)"
echo ""
echo "✅ Your Minikube cluster is ready!"

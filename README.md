
---

### ✅ Now What?

1. Save that text to a file:

```bash
cd ~/my-k8s-scripts/
nano README.md

# Minikube MLOps Lab Guide (RHEL 9.5 + Podman)

This guide walks through how to add nodes, create Pods, and expose services in a Kubernetes cluster running on **Minikube with Podman**.

---

## 🔧 Prerequisites

- RHEL 9.5 Developer Edition
- Minikube installed (`minikube start --driver=podman`)
- Podman and CRI-O configured correctly
- kubectl installed and pointing to the Minikube cluster

---

## 🚀 Step 1: Add a Worker Node to Minikube

```bash
minikube node add
# nginx-on-worker.yaml
apiVersion: v1
kind: Pod
metadata:
  name: nginx-on-worker
spec:
  containers:
  - name: nginx
    image: nginx
    ports:
    - containerPort: 80
  nodeSelector:
    kubernetes.io/hostname: minikube-m02

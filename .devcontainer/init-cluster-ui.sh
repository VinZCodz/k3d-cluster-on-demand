#!/bin/bash
set -e

CLUSTER_NAME="vinzcodz-cluster"
TOKEN_FILE=".cluster-token.txt"

echo "STEP 1: Creating Cluster..."
if ! k3d cluster list | grep -q "$CLUSTER_NAME"; then
    k3d cluster create $CLUSTER_NAME --config .devcontainer/k3d-config.yaml
else
    echo "Cluster $CLUSTER_NAME already exists. Skipping creation."
fi

echo "STEP 2: Installing Headlamp UI..."
helm repo add headlamp https://kubernetes-sigs.github.io/headlamp/
helm repo update
helm upgrade --install headlamp headlamp/headlamp \
  --namespace headlamp --create-namespace \
  --set service.type=NodePort \
  --set service.nodePort=30090 \
  --wait

# RBAC Setup
echo "Configuring RBAC for Admin Access..."
kubectl create sa headlamp-admin -n headlamp --dry-run=client -o yaml | kubectl apply -f -
kubectl create clusterrolebinding headlamp-admin-binding \
  --clusterrole=cluster-admin \
  --serviceaccount=headlamp:headlamp-admin --dry-run=client -o yaml | kubectl apply -f -

# Token Generation
echo "------------------------------------------------------------"
echo "✅ SUCCESS: The UI is Ready."
echo "🚀 Access: Open the 'Ports' tab and click Port 9090."
echo "🔑 ADMIN TOKEN (Valid for 24h):"
echo "------------------------------------------------------------"
kubectl create token headlamp-admin -n headlamp --duration=24h > "$TOKEN_FILE"
cat "$TOKEN_FILE"
echo -e "\n------------------------------------------------------------"

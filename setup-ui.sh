#!/bin/bash
set -e

echo "🖌️ Drawing the Landscape: Installing Headlamp UI..."

helm repo add headlamp https://kubernetes-sigs.github.io/headlamp/
helm repo update

helm upgrade --install headlamp headlamp/headlamp \
  --namespace headlamp --create-namespace \
  --set service.type=NodePort \
  --set service.nodePort=30090

kubectl create sa headlamp-admin -n headlamp || true
kubectl create clusterrolebinding headlamp-admin-binding \
  --clusterrole=cluster-admin \
  --serviceaccount=headlamp:headlamp-admin || true

echo "------------------------------------------------------------"
echo "✅ SUCCESS: Official Dashboard is deployed."
echo "🚀 UI is launching! Look for Port 9090 in your Ports tab."
echo "🔑 USE THIS TOKEN TO LOGIN:"
echo "------------------------------------------------------------"
kubectl create token headlamp-admin -n headlamp --duration=24h
echo "------------------------------------------------------------"
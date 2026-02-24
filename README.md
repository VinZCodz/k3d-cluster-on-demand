# 🏗️ k3d-landscape-on-demand

**Instant 3-node Kubernetes (k3d) cluster inside your GitHub Codespaces.**

Stop wasting time on local setup. A fully functional, multi-node cluster with a pre-configured UI in under 5 minutes. It's a high-performance, "throw-away" landscape optimized for the GitHub free tier.

## ⚡ Quick Start (The "I'm in a hurry" version)

- Press ```,``` (comma) on this repo to open the Codespace menu.

- Choose the 2-core offering (it’s free and plenty for this setup).

_Boom! Your cluster is ready under 5 min on Port 9090._

_That all!_

<img width="509" height="71" alt="image" src="https://github.com/user-attachments/assets/a702adef-e832-4cf7-a77d-b9513a7fcd1a" />


## 🎨 Visual Landscape (Headlamp UI)

No squinting at ```kubectl get pods``` You have a fully integrated Headlamp UI! live.

- Access: Go to the Ports tab in your Codespace and open Port 9090.

  <img width="1000" height="348" alt="image" src="https://github.com/user-attachments/assets/42d92a6f-c914-4294-8a38-773605b065c5" />

- Secure Auth: I used secure tokens with RBAC. If your token expires or you missed it in the logs, just run:

```
kubectl create token headlamp-admin -n headlamp
```
- Features: Real-time visual cues, built-in pod exec, and cluster-wide insights, packaged offered by Headlamp UI.
  
  <img width="1000" height="1000" alt="image" src="https://github.com/user-attachments/assets/5e443249-18a3-4ead-8af9-c0af0ab2370a" />


## 🛠️ Handy Commands

The default cluster name is ```vinzcodz-cluster``` 

<img width="250" height="250" alt="image" src="https://github.com/user-attachments/assets/d9cc74ab-2e72-4bef-8e4b-e28388aea5d0" />

Use these to manage your environment:

- Stop Cluster: ```k3d cluster stop <cluster-name>```

- Start Cluster: ```k3d cluster start <cluster-name>```

- Check Nodes: ```kubectl get nodes```

_All other ```kubectl```..._


## 🎯 Why use this?

<img width="400" height="39" alt="image" src="https://github.com/user-attachments/assets/4eea9fb7-6a13-4d62-8ad7-58ffbebc3df9" />

- Dogfooding: I built this to host my own backend services and experiment.

- Zero Footprint: Nothing is installed on your laptop. Use it, experiment, and delete the Codespace when done. No security worries, no leftover junk.

- Fully Open: Unlike "black box" solutions, everything here is open-source and extensible via IaC.

- Helm Ready: Native support for Helm charts to deploy your apps instantly, remote!


**Use for Dev | Test | CI/CD Actions | Practice | Basically a throw away cluster after use!**

<img width="400" height="100" alt="image" src="https://github.com/user-attachments/assets/623c8884-bf88-4bac-9c6a-3410abc6a8d0" />

_Go ahead, give it a spin! 🚀_




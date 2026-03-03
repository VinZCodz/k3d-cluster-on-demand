# 🏗️ k3d-cluster-on-demand

**Instant 3-node Kubernetes (k3d) cluster inside your GitHub Codespaces.**

## ⚡ Quick Start

- Should be Logged into Github —> Press ```,``` (comma) on this repo —> Click ```Create new codespace```

_Boom! Your cluster is ready in minutes! GUI on Port 9090._

## 🎨 Visual Landscape (Headlamp UI)

- UI is Ready: Go to ```Ports``` > Port 9090 > ```Open in Browser 🌐```. Hit Refresh.
- Find login token at ```.cluster-token.txt``` in root.
  
## 🚀 Deploy your "Hello World" App in 30 Seconds inside cluster!

- Deploy the Demo App from examples ```kubectl apply -f examples/all-in-one.yaml```
- Check Running pods ```kubectl get pods``` & Head to ```Port 8080```

_Done! You wasted no time on local setup. You've a fully working Multi-Node cluster, up and running!_

<img width="1000" height="701" alt="image" src="https://github.com/user-attachments/assets/4d8a1101-bd4d-43df-a042-a28e79242f39" />

## 🎯 Why this Template?

- ```Zero-Config```: Skip the hassel of manual setup. Just get to your work!
- ```Modern Networking```: Pre-loaded with the Kubernetes Gateway API (the successor to Ingress).
- ```Helm Ready```: Native support for Helm charts to deploy your apps instantly, remote!
- ```Visual-First, GUI```: Headlamp UI Dashboard pre-configured to see your "breathing" pods live, with Secure Auth RBAC!
- ```Free```: Codespace is free upto $10 per month! Enough to play around and implement something cool in the cluster.
- ```Resource Lite```: Fine-tuned to run smoothly on GitHub's 2-core / 8GB RAM basic Free tier.
- ```Zero-Footprint```: No local install, no junk, no risk. Delete when done.
- ```Fully Open```: No black boxes. Leverage IaC-powered open-source infrastructure you can customize and control.
- ```Dogfooding```: I built this to host my own backend services and experiments!

<p align="center">
  <img width="900" height="78" alt="image" src="https://github.com/user-attachments/assets/915c89e6-3a4f-4fb0-8553-f219c66b4008" />
</p>


## 🛠️ Handy Commands

The default cluster name is ```vinzcodz-cluster```.
- To Stop Cluster: ```k3d cluster stop vinzcodz-cluster```
- To Start Cluster: ```k3d cluster start vinzcodz-cluster```
- If your token expires or you missed it, just run:

```
kubectl create token headlamp-admin -n headlamp --duration=24h > .cluster-token.txt
cat .cluster-token.txt
```

## 🌟 Support the Project
If this one-click setup saved you hassles of YAML-wrangling today, please:
- Star this repo to help others find it! ⭐️
- Fork it and build your own Gateway API experiments. 🍴
- Share it on [LinkedIn & tag me!](https://www.linkedin.com/in/vinay-hm/)  🐦

## 🤝 Contribute & Support
Found a bug or have a better way to optimize for 2-core machines? Open an Issue or submit a Pull Request. Let's make the "Instant K8s" experience even faster together!

---

<p align="center">
  Use for Dev | Test | CI/CD Actions | Practice | Basically a throw away cluster after use!
  <img width="400" height="80" alt="image" src="https://github.com/user-attachments/assets/026811f7-e209-4062-b3bf-c7aa3255cf02" />
</p>
<p align="center">
  Go ahead, give it a spin! 🚀
</p>
  

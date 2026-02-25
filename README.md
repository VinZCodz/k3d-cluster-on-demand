# 🏗️ k3d-landscape-on-demand

**Instant 3-node Kubernetes (k3d) cluster inside your GitHub Codespaces.**

## ⚡ Quick Start

- Press ```,``` (comma) on this repo --> Choose the ```2-core``` free offering. 

_Boom! Your cluster is ready in minutes on Port 9090._

_That all!_

<p align="center">
<img width="509" height="71" alt="image" src="https://github.com/user-attachments/assets/a702adef-e832-4cf7-a77d-b9513a7fcd1a" />
</p>


Stop wasting time on local setup. A fully functional, multi-node cluster with a pre-configured UI in minutes. Done with your work? "throw-it-away"! Delete the codespace! clean, hassle free, optimized for the GitHub free tier.

## 🎨 Visual Landscape (Headlamp UI)

No squinting at ```kubectl get pods``` You have a fully integrated Headlamp UI! live.

- Access: Go to the Ports tab in your Codespace and open Port 9090.

  <img width="1000" height="348" alt="image" src="https://github.com/user-attachments/assets/42d92a6f-c914-4294-8a38-773605b065c5" />

- Secure Auth: I've used secure tokens with RBAC. If your token expires or you missed it in the logs, just run:

```
kubectl create token headlamp-admin -n headlamp
```
- Features: Real-time visual cues, built-in pod exec, and cluster-wide insights, packaged offered by Headlamp UI.
  
  <img width="1000" height="1000" alt="image" src="https://github.com/user-attachments/assets/5e443249-18a3-4ead-8af9-c0af0ab2370a" />


## 🛠️ Handy Commands

The default cluster name is ```vinzcodz-cluster``` 
<p align="center">
  <img width="250" height="250" alt="image" src="https://github.com/user-attachments/assets/d9cc74ab-2e72-4bef-8e4b-e28388aea5d0" />
</p>
Use these to manage your environment:

- Stop Cluster: ```k3d cluster stop vinzcodz-cluster```

- Start Cluster: ```k3d cluster start vinzcodz-cluster```

_Then, regular ```kubectl get nodes``` and all other ```kubectl```..._


## 🎯 Why use this?
<p align="center">
<img width="400" height="39" alt="image" src="https://github.com/user-attachments/assets/4eea9fb7-6a13-4d62-8ad7-58ffbebc3df9" />
</p>

- Dogfooding: I built this to host my own backend services and experiment.

- Zero Footprint: Nothing is installed on your laptop. Use it, experiment, and delete the Codespace when done. No security worries, no leftover junk.

- Fully Open: Unlike "black box" solutions, everything here is open-source and extensible via IaC.

- Helm Ready: Native support for Helm charts to deploy your apps instantly, remote!

- Work in Progress: I haven't added Nginx Load Balancer support yet, but improvements are already underway!

## 🤝 Contribute & Support

Found a bug? Nothing is perfect! Please report it or raise a PR—I’ll review it as soon as possible. If this helped your workflow, feel free to Star ⭐ and Fork 🍴 the repo to show your support!

---

**Use for Dev | Test | CI/CD Actions | Practice | Basically a throw away cluster after use!**

---

<p align="center">
<img width="400" height="100" alt="image" src="https://github.com/user-attachments/assets/623c8884-bf88-4bac-9c6a-3410abc6a8d0" />
</p>

_Go ahead, give it a spin! 🚀_

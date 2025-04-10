# ☁️ Cloud VM Deployment – Google Cloud Platform

This repository contains a shell script to deploy a virtual machine (VM) on Google Cloud Platform (GCP), completed as part of the **Cloud Development Platform** assignment at **Dublin Business School**.

---

## 📁 Files Included

| File Name        | Description                                           |
|------------------|-------------------------------------------------------|
| `deploy_vm.sh`   | Bash script to automate VM creation, Apache setup, and firewall configuration |
| `README.md`      | Full instructions, requirements, and troubleshooting steps |

---

## ⚙️ Prerequisites

Before running the script, make sure you have the following configured:

- ✅ Google Cloud SDK installed on your MacBook  
- ✅ A Google Cloud account with **billing enabled**  
- ✅ A dedicated GCP project (e.g., `project-b8is124`)  
- ✅ **Compute Engine API** and **IAM API** enabled  
- ✅ Firewall rules allowing **HTTP** and **SSH** traffic  
- ✅ Default region and zone set (e.g., `europe-west1-b`)  

To set your zone in terminal:
```bash
gcloud config set compute/zone europe-west1-b

🚀 How to Run the Script

# 1. Authenticate your Google account
gcloud auth login

# 2. Set your project
gcloud config set project project-b8is124

# 3. Make the script executable
chmod +x deploy_vm.sh

# 4. Run the script
./deploy_vm.sh


✅ Script Functionality

This script:

+ Provisions a VM instance using gcloud
+ Installs Apache2 using a startup script
+ Configures firewall rules to allow HTTP traffic
+ Outputs the external IP address to verify deployment
+ You should see something like this when you visit your VM:

Welcome to G's Cloud VM!

This page is served by Apache on a Google Cloud virtual machine.
Setup includes firewall rules, Apache2, and external IP access.


IF THERE IS ANY TROUBLEPROBLEMS

Problem	                      Solution

Permission denied (publickey)	Use browser-based SSH instead of CLI
Site doesn't load	Ensure      Apache is running: sudo systemctl status apache2
ERR_CONNECTION_TIMED_OUT	    Check that HTTP firewall rule is enabled
Script doesn’t run	          Use chmod +x deploy_vm.sh before execution

Author: Gloria Ezeanya 10603921
Course: BSc (Hons) in Computing
Institution: Dublin Business School

(AI was used for the layout and navigate through the assignment.








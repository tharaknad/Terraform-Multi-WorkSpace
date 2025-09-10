# Terraform Multi-Workspace 🚀

This repository showcases how to manage **multiple environments** (like `dev`, `stage`, and `prod`) using **Terraform Workspaces**.  
Instead of duplicating code for each environment, you can reuse the same configuration and switch between environments dynamically with **workspaces + tfvars**.  

The repo also demonstrates a **versioned branching strategy**, where each branch (`v-1.0`, `v-1.1`, …) contains incremental improvements.

---

## 🎯 Objectives of this Project

- ✅ Use **Terraform Workspaces** to isolate environments.  
- ✅ Store environment-specific values in `*.tfvars` files.  
- ✅ Manage **infrastructure consistently across environments**.  
- ✅ Demonstrate a **branching/versioning approach** to track improvements over time.  
- ✅ Build a foundation for **scalable IaC projects** (ready to extend with modules, CI/CD, etc.).  

---

> Each `.tfvars` file contains values like AMI IDs, instance types, subnets, etc. customized for the environment.

---

## 🔑 Key Terraform Concepts Used

- **Providers** → Connects Terraform with AWS (can be extended to other clouds).  
- **Workspaces** → Separate state management for `dev`, `stage`, `prod`.  
- **Variables** → Centralized parameterization for reusability.  
- **Outputs** → Capture important resource attributes (like EC2 IPs, IDs).  
- **Branching** → Each branch demonstrates incremental improvements (`v-1.0`, `v-1.1`, …).  

---

## 🚀 Getting Started

### 1. Clone Repository
```bash
git clone git@github.com:tharaknad/Terraform-Multi-WorkSpace.git
cd Terraform-Multi-WorkSpace
2. Checkout Version
git checkout v-1.1

3. Initialize Terraform
terraform init

4. Create/Select a Workspace
terraform workspace new dev
terraform workspace select dev

5. Apply Configuration
terraform apply -var-file=dev.tfvars

6. Destroy Resources
terraform destroy -var-file=dev.tfvars
🖥️ Example Use Case

In dev, you might provision a small EC2 instance (t2.micro) in a test subnet.

In stage, you may scale it up to (t3.medium) with more replicas.

In prod, you can configure (t3.large) with HA setup.

This way, the same code deploys different infra per environment.

📌 Version Updates
Branch	Description
v-1.0	Initial Terraform multi-workspace setup
v-1.1	Added refined outputs, updated tfvars, better structure
v-1.x	Future incremental updates (networking, modules, CI/CD)

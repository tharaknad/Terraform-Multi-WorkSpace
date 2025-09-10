# Terraform Multi-Workspace 🚀

This repository demonstrates how to manage **multiple environments** (e.g., `dev`, `stage`, `prod`) using **Terraform Workspaces**.  
It also follows a **versioned branching strategy** where each branch introduces incremental improvements.

---

## 📂 Branching Strategy

- **main** → Stable branch with latest tested code.  
- **v-1.0** → Initial implementation (basic multi-workspace setup).  
- **v-1.1** → Incremental update with improvements/fixes.  
- **v-1.x** → Each new update will be released in `v-1.(+1)` format.  

👉 To use a specific version:
```bash
git clone git@github.com:tharaknad/Terraform-Multi-WorkSpace.git
cd Terraform-Multi-WorkSpace

# Checkout version branch
git checkout v-1.1

🚀 Prerequisites

Terraform >= 1.0.0
AWS CLI (if deploying on AWS)
Configured credentials (~/.aws/credentials)


🔧 Usage
1. Initialize Terraform
terraform init

2. Create/Select a Workspace
terraform workspace new dev
terraform workspace select dev

3. Apply Configuration with Variables
terraform apply -var-file=dev.tfvars
terraform apply -var-file=stage.tfvars
terraform apply -var-file=prod.tfvars

4. Destroy Resources
terraform destroy -var-file=dev.tfvars

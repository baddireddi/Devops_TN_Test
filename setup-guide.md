# DevSecOps Pipeline Setup Guide

## 1. Clone the Repository
```sh
git clone https://github.com/your-repo/azure-devsecops-aks.git
cd azure-devsecops-aks
```

## 2. Deploy Infrastructure with Terraform
```sh
cd infrastructure
terraform init
terraform apply -auto-approve
```

## 3. Set Up Azure DevOps Pipelines
- Import `azure-pipelines/*.yml` into Azure DevOps.
- Connect Azure resources (ACR, AKS, Key Vault) to pipelines.
- Trigger pipelines to deploy microservices.

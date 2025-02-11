# Pipeline Setup

## Step 1: Clone the Repository

## Step 2: Deploy Infrastructure using Terraform
```sh
cd infrastructure
terraform init
terraform plan -out=tfplan
terraform apply -auto-approve tfplan
```

## Step 3: Configure Azure DevOps Pipeline
- Import `azure-pipelines/build-pipeline.yml` into Azure DevOps.
- Import `azure-pipelines/release-pipeline.yml` into Azure DevOps.
- Set up pipeline variables for `ACR_NAME`, `AKS_CONNECTION_NAME`

## Step 4: Deploy Application
Trigger the release pipeline in Azure DevOps to deploy microservices onto the AKS cluster.

## Step 5: Verify Deployment
```sh
kubectl get pods
kubectl get svc
```


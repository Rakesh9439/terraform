# Terraform AWS S3 Project

This project demonstrates how to create and manage AWS S3 infrastructure using Terraform.

## Project Objectives

- Create AWS S3 bucket using Terraform
- Use reusable Terraform modules
- Maintain separate Dev, Staging and Production environments
- Understand Terraform state management
- Practice Terraform Workspace
- Understand Terraform dependency graph
- Detect and manage infrastructure drift

## Technologies

- Terraform
- AWS S3
- Git
- GitHub

## AWS Region

ap-south-1

## Project Structure

terraform-s3-project/
│
├── .gitignore
├── README.md
│
├── modules/
│   └── s3/
│       ├── main.tf
│       ├── variables.tf
│       └── outputs.tf
│
└── environments/
    ├── dev/
    │   └── main.tf
    ├── staging/
    │   └── main.tf
    └── prod/
        └── main.tf

## Terraform Workflow

Initialize:

terraform init

Format:

terraform fmt

Validate:

terraform validate

Create plan:

terraform plan

Create infrastructure:

terraform apply

Check state:

terraform state list

Show resource:

terraform state show <resource>

## Terraform Workspace

List workspaces:

terraform workspace list

Show current workspace:

terraform workspace show

Create workspace:

terraform workspace new dev

Select workspace:

terraform workspace select dev

Delete workspace:

terraform workspace delete dev

## Terraform Graph

Generate dependency graph:

terraform graph

Save graph:

terraform graph > graph.dot

Generate PNG using Graphviz:

dot -Tpng graph.dot -o graph.png

## Terraform Drift Detection

Terraform can detect changes made manually in AWS.

Check drift:

terraform plan

Refresh-only plan:

terraform plan -refresh-only

Update Terraform state:

terraform apply -refresh-only

Apply Terraform configuration:

terraform apply

## Deployment Workflow

Developer
   ↓
GitHub
   ↓
Terraform Code
   ↓
terraform fmt
   ↓
terraform validate
   ↓
terraform plan
   ↓
Code Review
   ↓
terraform apply
   ↓
AWS S3

## Best Practices

- Use reusable modules
- Keep environments separated
- Do not commit Terraform state files
- Do not commit secrets or credentials
- Run terraform fmt before commit
- Run terraform validate before plan
- Review terraform plan before apply
- Use remote state for team environments
- Protect production infrastructure

## Cleanup

To delete the Terraform-managed infrastructure:

terraform destroy

Use terraform destroy carefully, especially for production resources.


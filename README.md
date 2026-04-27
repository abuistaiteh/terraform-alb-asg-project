Terraform AWS ALB + Auto Scaling Project

A modular Terraform project that deploys a scalable AWS web infrastructure using a VPC, public/private subnets, security groups, an Application Load Balancer, and an Auto Scaling Group.

Architecture

This project creates:

Custom VPC
Public and private subnets
Internet Gateway
Route tables
Security groups
Application Load Balancer
Target group
Launch template
Auto Scaling Group
Terraform outputs for key resources
Project Structure

terraform-alb-asg-project/
├── main.tf
├── variables.tf
├── outputs.tf
├── provider.tf
├── modules/
│ ├── vpc/
│ ├── security/
│ ├── alb/
│ └── asg/
└── README.md

How to Run

Initialize Terraform:

terraform init

Format the code:

terraform fmt -recursive

Validate configuration:

terraform validate

Preview infrastructure changes:

terraform plan

Apply the infrastructure:

terraform apply

Destroy resources when done:

terraform destroy

Skills Demonstrated
Infrastructure as Code (Terraform)
AWS Networking (VPC, Subnets, Routing)
Application Load Balancer (ALB)
Auto Scaling Group (ASG)
Security Groups & Traffic Control
Modular Terraform Architecture
Git & GitHub Workflow

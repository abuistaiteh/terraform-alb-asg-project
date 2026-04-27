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

## Live Demo

Application is accessible via AWS Application Load Balancer:

http://alb-asg-project-alb-1979684669.us-east-1.elb.amazonaws.com


This web page is served from EC2 instances managed by an Auto Scaling Group behind an Application Load Balancer.

## Features

- Fully automated infrastructure using Terraform
- Load-balanced traffic using AWS ALB
- Auto Scaling Group for high availability
- Dynamic EC2 provisioning with user data (Nginx + custom UI)
- CI pipeline with GitHub Actions (format, validate, plan)
- Secure AWS authentication using OIDC (no static credentials)

locals {
  project_name = "alb-asg-project"
  environment  = "dev"
  vpc_cidr     = "10.0.0.0/16"
  azs          = ["us-east-1a", "us-east-1b", "us-east-1c"]
  public_subnets = [
    "10.0.1.0/24",
    "10.0.2.0/24",

  ]
  private_subnets = [
    "10.0.3.0/24",
    "10.0.4.0/24"
  ]
  common_tags = {
    Project     = local.project_name
    Environment = local.environment
    ManagedBy   = "Terraform"
  }
}
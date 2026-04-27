module "vpc" {
  source          = "./modules/vpc"
  project_name    = local.project_name
  vpc_cidr        = local.vpc_cidr
  azs             = local.azs
  public_subnets  = local.public_subnets
  private_subnets = local.private_subnets
  tags            = local.common_tags
}
module "security" {
  source       = "./modules/security"
  project_name = local.project_name
  vpc_id       = module.vpc.vpc_id
  tags         = local.common_tags
}
module "alb" {
  source            = "./modules/alb"
  project_name      = local.project_name
  vpc_id            = module.vpc.vpc_id
  public_subnet_ids = module.vpc.public_subnet_ids
  alb_sg_id         = module.security.alb_sg_id
  tags              = local.common_tags
}
module "asg" {
  source             = "./modules/asg"
  project_name       = local.project_name
  private_subnet_ids = module.vpc.public_subnet_ids
  ec2_sg_id          = module.security.ec2_sg_id
  target_group_arn   = module.alb.target_group_arn
  tags               = local.common_tags
}
module "cloudwatch" {
  source   = "./modules/cloudwatch"
  asg_name = module.asg.asg_name
}
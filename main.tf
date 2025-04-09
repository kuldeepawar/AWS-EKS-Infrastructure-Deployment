module "vpc" {
  source = "./Modules/Vpc"
}

module "eks" {
  source              = "./Modules/eks"
  vpc_id              = module.vpc.vpc_id
  private_subnet_ids  = module.vpc.private_subnet_ids
  public_subnet_ids   = module.vpc.public_subnet_ids
  cluster_name        = var.cluster_name
  instance_type       = var.node_group_instance_type
  desired_capacity    = var.desired_capacity
  max_capacity        = var.max_capacity
  min_capacity        = var.min_capacity
}

module "alb" {
  source            = "./Modules/alb"
  vpc_id            = module.vpc.vpc_id
  public_subnet_ids = module.vpc.public_subnet_ids
}

module "monitoring" {
  source = "./Modules/monitoring"
}

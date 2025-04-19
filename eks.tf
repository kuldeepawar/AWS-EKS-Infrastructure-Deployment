module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "~> 20.0"

  cluster_name    = "my-eks-cluster"
  cluster_version = "1.32"

  create_kms_key             = false
  cluster_encryption_config  = {}  # ✅ This disables encryption completely

  cluster_endpoint_public_access = true

  cluster_enabled_log_types = ["api", "audit", "authenticator", "controllerManager", "scheduler"]

  vpc_id = aws_vpc.main.id
  subnet_ids = [
    aws_subnet.private_subnet_1a.id,
    aws_subnet.private_subnet_1b.id
  ]

  eks_managed_node_groups = {
    default = {
      min_size     = 1
      max_size     = 3
      desired_size = 2

      instance_types = ["t3.medium"]
      capacity_type  = "ON_DEMAND"
      subnet_ids     = [
        aws_subnet.private_subnet_1a.id,
        aws_subnet.private_subnet_1b.id
      ]
    }
  }
}

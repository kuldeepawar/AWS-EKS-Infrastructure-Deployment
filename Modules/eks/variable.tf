variable "cluster_name" {
  description = "EKS Cluster name"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type for EKS node group"
  type        = string
}

variable "desired_capacity" {
  description = "Desired number of nodes in the EKS node group"
  type        = number
}

variable "max_capacity" {
  description = "Maximum number of nodes in the EKS node group"
  type        = number
}

variable "min_capacity" {
  description = "Minimum number of nodes in the EKS node group"
  type        = number
}

variable "vpc_id" {
  description = "VPC ID"
  type        = string
}

variable "private_subnet_ids" {
  description = "List of private subnet IDs"
  type        = list(string)
}

variable "public_subnet_ids" {
  description = "List of public subnet IDs"
  type        = list(string)
}

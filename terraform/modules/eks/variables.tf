variable "db_subnet_group_name" {
  description = "The DB subnet group name for the DocumentDB cluster"
  type        = string
  default     = "docdb-subnet"
}

variable "eks_security_group_ids" {
  description = "List of security group IDs to associate with the DocumentDB cluster"
  type        = list(string)
  default     = ["sg-0318ff0c194cacd60"]
}

variable "eks_subnet_ids" {
  description = "List of subnet IDs for the EKS cluster"
  type        = list(string)
  default     = ["subnet-0d483048898b40485", "subnet-03ff3e1b3c118342f"]
}

variable "private_subnet_cidrs" {
  description = "List of CIDR blocks for the public subnets"
  type        = list(string)
  default     = ["10.0.3.0/24", "10.0.4.0/24"]
}

variable "cluster_name" {
  description = "The EKS cluster name"
  type        = string
  default     = "app-cluster"
}

variable "k8s_version" {
  description = "The K8S version to run the EKS cluster with"
  type        = string
  default     = "1.30"
}

variable "vpc_name" {
  description = "The name of the VPC"
  type        = string
  default     = "main-vpc"
}

variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
}

variable "subnet_ids" {
  description = "List of subnet IDs for the EKS cluster"
  type        = list(string)
}

variable "vpc_id" {
  description = "The ID of the VPC"
  type        = string
}

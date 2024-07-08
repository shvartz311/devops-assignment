variable "slug" {
  type = string
}

variable "env" {
  type = string
}
variable "chart_version" {
  type    = string
  default = ""
}

variable "db_username" {
  description = "The username for the DocumentDB cluster"
  type        = string
}

variable "db_password" {
  description = "The password for the DocumentDB cluster"
  type        = string
}

variable "cluster_identifier" {
  description = "The identifier for the DocumentDB cluster"
  type        = string
}

variable "db_subnet_group_name" {
  description = "The DB subnet group name for the DocumentDB cluster"
  type        = string
}

variable "security_group_ids" {
  description = "List of security group IDs to associate with the DocumentDB cluster"
  type        = list(string)
}

variable "repository_name" {
  description = "Name of the ECR repository"
  type        = string
}

variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
}

variable "subnet_ids" {
  description = "List of subnet IDs for the EKS cluster"
  type        = list(string)
}

variable "cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "public_subnet_cidrs" {
  description = "List of CIDR blocks for the public subnets"
  type        = list(string)
}
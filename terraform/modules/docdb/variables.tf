variable "db_username" {
  description = "The username for the DocumentDB cluster"
  type        = string
  default     = "dbadmin"
}

variable "db_password" {
  description = "The password for the DocumentDB cluster"
  type        = string
  default     = "Aa123456!"
}

variable "cluster_identifier" {
  description = "The identifier for the DocumentDB cluster"
  type        = string
  default     = "app-db-cluster"
}

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

variable "document_security_group_ids" {
  description = "List of security group IDs to associate with the DocumentDB cluster"
  type        = list(string)
  default     = ["sg-0fb72fb6615eec24c"]
}

variable "private_subnet_cidrs" {
  description = "List of CIDR blocks for the public subnets"
  type        = list(string)
  default     = ["10.0.3.0/24", "10.0.4.0/24"]
}

variable "documentdb_subnet_ids" {
  description = "List of subnet IDs for the EKS cluster"
  type        = list(string)
  default     = ["subnet-0d483048898b40485", "subnet-03ff3e1b3c118342f"]
}
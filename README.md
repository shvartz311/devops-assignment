# Project Overview

This project involves deploying a backend environment for an online orders system on AWS using Terraform. It includes the setup of an EKS cluster, DocumentDB for database needs, ECR for Docker image storage, and essential networking infrastructure within a VPC.

## Repository Structure

```
/devops-assignment
│
├── eks.tf          # Terraform configuration for EKS cluster setup
├── documentdb.tf   # Configuration for DocumentDB instances
├── ecr.tf          # ECR setup for Docker image storage
├── vpc.tf          # VPC and networking setup
├── provider.tf     # AWS provider configuration
└── README.md       # Project documentation and setup instructions
```

## Prerequisites

- **Terraform:** v0.12.x or later
- **AWS CLI:** Configured with administrator privileges
- **kubectl:** Configured to interact with Kubernetes
- **Docker:** For managing Docker containers

## Configuration Details

### AWS Provider Setup

**provider.tf**
```hcl
provider "aws" {
  region = "us-east-1"
}
```

### VPC and Networking

**vpc.tf**
```hcl
resource "aws_vpc" "app_vpc" {
  cidr_block = "10.0.0.0/16"
  enable_dns_support = true
  enable_dns_hostnames = true
}

resource "aws_subnet" "public_subnet1" {
  vpc_id            = aws_vpc.app_vpc.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "us-east-1a"
}

resource "aws_subnet" "public_subnet2" {
  vpc_id            = aws_vpc.app_vpc.id
  cidr_block        = "10.0.2.0/24"
  availability_zone = "us-east-1b"
}

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.app_vpc.id
}
```

### Elastic Kubernetes Service (EKS)

**eks.tf**
```hcl
# IAM Role for EKS Cluster
resource "aws_iam_role" "eks_cluster" {
  # Role configuration...
}

# IAM Role for EKS Worker Nodes
resource "aws_iam_role" "eks_nodes" {
  # Role configuration...
}

# EKS Cluster Configuration
resource "aws_eks_cluster" "app_cluster" {
  # Cluster configuration...
}

# EKS Worker Nodes Configuration
resource "aws_eks_node_group" "node_group" {
  # Node group configuration...
}
```

### Amazon DocumentDB

**documentdb.tf**
```hcl
resource "aws_docdb_subnet_group" "db_subnet" {
  # Subnet group configuration...
}

resource "aws_docdb_cluster" "app_db" {
  # Cluster configuration...
}
```

### AWS Elastic Container Registry (ECR)

**ecr.tf**
```hcl
resource "aws_ecr_repository" "app_repo" {
  name = "app-repository"
}
```

## Deployment Instructions

1. **Initialize Terraform:**
   ```bash
   terraform init
   ```
2. **Plan the Deployment:**
   ```bash
   terraform plan
   ```
3. **Apply the Configuration:**
   ```bash
   terraform apply
   ```

4. **Verify Deployment:**
   - Check the AWS Console to confirm that all resources are created successfully.
   - Use `kubectl` to verify the Kubernetes cluster functionality.

## Additional Information

- **Security Considerations:** Ensure all IAM roles and policies adhere to the principle of least privilege.
- **Monitoring and Logging:** Implement AWS CloudWatch for comprehensive monitoring and logging.

## Conclusion

This README provides a complete guide to setting up an AWS backend for an online orders system using Terraform. Adjust the configurations as necessary based on specific project needs or updates.
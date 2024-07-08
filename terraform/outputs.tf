output "docdb_endpoint" {
  description = "The connection endpoint for the DocumentDB cluster"
  value       = aws_docdb_cluster.app_db.endpoint
}

output "ecr_repository_url" {
  description = "The URL of the ECR repository"
  value       = aws_ecr_repository.app_repo.repository_url
}

output "eks_cluster_endpoint" {
  description = "The endpoint for the EKS cluster"
  value       = aws_eks_cluster.app_cluster.endpoint
}

output "vpc_id" {
  description = "The ID of the VPC created"
  value       = aws_vpc.main.id
}

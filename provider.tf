provider "aws" {
  region = "us-east-1"
} 

provider "kubernetes" {
  config_path = "~/.kube/config"
}

terraform {
  required_providers {
    helm = {
      source = "hashicorp/helm"
    }
  }
}
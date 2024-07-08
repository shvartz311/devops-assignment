provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "ory-terraform-state"
    key    = "project/state"
    region = "us-east-1"
  }
}

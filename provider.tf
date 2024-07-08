provider "aws" {
  region = "eu-north-1"
}

terraform {
  backend "s3" {
    bucket = "my-terraform-state"
    key    = "project/state"
    region = "eu-north-1"
  }
}

terraform {
  backend "s3" {
    bucket = "ory-terraform-state"
    key    = "project/state"
    region = "us-east-1"
  }
}
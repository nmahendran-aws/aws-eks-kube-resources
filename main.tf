# Terraform Settings Block
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.57.0"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "2.31.0"
    }
  }
  # Adding Backend as S3 for Remote State Storage
  backend "s3" {
    bucket = "mahen-infra-terraform-state-bucket"
    key    = "dev/kube-resources/terraform.tfstate"
    region = "us-east-1"

    # For State Locking
    dynamodb_table = "kube-resources"
  }
}

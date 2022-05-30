# Provider Configuration
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.16.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-2"
}
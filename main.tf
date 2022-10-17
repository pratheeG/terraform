locals {
  aws_region = "ap-south-1"
}


terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      #version = "~> 3.21" # Optional but recommended in production
    }
  }
}

# Provider Block
provider "aws" {
  profile = "default" # AWS Credentials Profile configured on your local desktop terminal  $HOME/.aws/credentials
  region  = local.aws_region
}

module "EC2" {
  source = "./EC2"
}

# module "S3" {
#   source = "./S3"
# }
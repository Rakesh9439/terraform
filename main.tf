terraform {
  required_version = ">= 1.5.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}

module "s3" {
  source = "./modules/s3"

  bucket_name = "${var.bucket_name}-${terraform.workspace}-12345"
  environment = terraform.workspace
}
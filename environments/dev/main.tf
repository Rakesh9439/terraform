terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }

  required_version = ">= 1.5.0"
}

provider "aws" {
  region = "ap-south-1"
}

module "s3" {
  source = "../../modules/s3"

  bucket_name = "rakesh-terraform-dev-12345"
  environment = "dev"
}

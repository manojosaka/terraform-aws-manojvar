terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.27.0"
    }
  }
}

provider "aws" {
  region = "ap-northeast-1" # Tokyo region
}

module "s3-bucket" {
  source  = "terraform-aws-modules/s3-bucket/aws"
  version = "5.9.1"
  bucket = "manojjuyal1234"
}
module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "6.5.1"
}


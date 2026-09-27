terraform {
  required_version = ">= 1.5.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.65.0"
    }
  }

  backend "s3" {
    key    = "terraform-course/vm-local-modules/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region  = "us-east-1"
  profile = "terraform-course"

  default_tags {
    tags = local.tags
  }
}
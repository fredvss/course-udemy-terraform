terraform {
  required_version = ">= 1.5.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.65.0"
    }
  }

  backend "s3" {
    key    = "terraform-course/vm/terraform.tfstate"
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

data "terraform_remote_state" "network" {
  backend = "s3"
  config = {
    bucket = "terraform-613879845174-us-east-1-an"
    key    = "terraform-course/network/terraform.tfstate"
    region = "us-east-1"
    profile = "terraform-course"
  }
}
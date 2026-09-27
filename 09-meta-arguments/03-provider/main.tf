terraform {
  required_version = ">= 1.5.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.65.0"
    }
  }

  backend "s3" {
    key    = "terraform-course/meta-arguments/provider/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  alias   = "us_east_1"
  region  = "us-east-1"
  profile = "terraform-course"

  default_tags {
    tags = local.tags
  }
}

provider "aws" {
  alias   = "sa_east_1"
  region  = "sa-east-1"
  profile = "terraform-course"

  default_tags {
    tags = local.tags
  }
}
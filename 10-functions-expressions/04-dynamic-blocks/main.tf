terraform {
  required_version = ">= 1.5.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.65.0"
    }
  }
}

provider "aws" {
  region  = "us-east-1"
  profile = "terraform-course"
}

locals {
  ingress_rules = [
    {
      from_port = 80
      to_port   = 80
      protocol  = "tcp"
      cidr      = "0.0.0.0/0"
    },
    {
      from_port = 443
      to_port   = 443
      protocol  = "tcp"
      cidr      = "0.0.0.0/0"
    },
  ]
}

resource "aws_vpc" "vpc" {
  cidr_block = "10.60.0.0/16"
}

resource "aws_security_group" "web" {
  name   = "terraform-course-web"
  vpc_id = aws_vpc.vpc.id

  dynamic "ingress" {
    for_each = local.ingress_rules

    content {
      from_port   = ingress.value.from_port
      to_port     = ingress.value.to_port
      protocol    = ingress.value.protocol
      cidr_blocks = [ingress.value.cidr]
    }
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

output "security_group_id" {
  value = aws_security_group.web.id
}
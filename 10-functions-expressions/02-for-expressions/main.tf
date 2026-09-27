terraform {
  required_version = ">= 1.5.0"
}

locals {
  instances = {
    app = {
      size = "t3.micro"
      env  = "dev"
    }
    api = {
      size = "t3.small"
      env  = "prod"
    }
  }

  instance_names = [for name, cfg in local.instances : upper(name)]
  prod_instances = [for name, cfg in local.instances : name if cfg.env == "prod"]
  instance_sizes  = { for name, cfg in local.instances : name => cfg.size }
}

output "instance_names" {
  value = local.instance_names
}

output "prod_instances" {
  value = local.prod_instances
}

output "instance_sizes" {
  value = local.instance_sizes
}
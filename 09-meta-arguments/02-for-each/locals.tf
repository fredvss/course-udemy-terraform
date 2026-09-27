locals {
  tags = {
    environment = "dev"
    managed-by  = "terraform"
    module      = "09-02-for-each"
  }

  # Um bloco por ambiente para demonstrar for_each com chaves estáveis.
  network_by_env = {
    app = {
      vpc_cidr    = "10.10.0.0/16"
      subnet_cidr = "10.10.1.0/24"
      az          = "us-east-1a"
    }
    data = {
      vpc_cidr    = "10.20.0.0/16"
      subnet_cidr = "10.20.1.0/24"
      az          = "us-east-1b"
    }
    ops = {
      vpc_cidr    = "10.30.0.0/16"
      subnet_cidr = "10.30.1.0/24"
      az          = "us-east-1c"
    }
  }
}
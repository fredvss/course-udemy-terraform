module "network" {
  source = "./network"

  cidr_vpc    = "10.0.0.0/16"
  cidr_subnet = "10.0.1.0/24"
  tags        = local.tags
}

module "vm" {
  source = "./vm"

  subnet_id         = module.network.subnet_id
  security_group_id = module.network.security_group_id
  tags              = local.tags
}
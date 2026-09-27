output "subnet_ids" {
  value       = { for k, v in aws_subnet.subnet : k => v.id }
  description = "IDs das subnets criadas com for_each."
}

output "igw_ids" {
  value       = { for k, v in aws_internet_gateway.igw : k => v.id }
  description = "IDs dos internet gateways criados com for_each."
}
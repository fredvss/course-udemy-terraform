output "subnet_ids_us_east_1" {
  value       = aws_subnet.subnet_us_east_1[*].id
  description = "IDs das subnets na regiao us-east-1."
}

output "subnet_ids_sa_east_1" {
  value       = aws_subnet.subnet_sa_east_1[*].id
  description = "IDs das subnets na regiao sa-east-1."
}
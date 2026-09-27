output "subnet_id" {
  value       = aws_subnet.subnet.id
  description = "The ID of the subnet created for the course."
}

output "security_group_id" {
  value       = aws_security_group.security_group.id
  description = "The ID of the security group created for the course."
}
output "subnet_id_1" {
  value       = aws_subnet.subnet[0].id
  description = "The ID of the first subnet created for the course."
}

output "subnet_id_2" {
  value       = aws_subnet.subnet[1].id
  description = "The ID of the second subnet created for the course."
}

output "subnet_id_3" {
  value       = aws_subnet.subnet[2].id
  description = "The ID of the third subnet created for the course."
}
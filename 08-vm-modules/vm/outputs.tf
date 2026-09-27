output "vm_public_ip" {
  value       = aws_instance.vm.public_ip
  description = "The public IP address of the virtual machine."
}
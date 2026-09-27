terraform {
  required_version = ">= 1.5.0"
}

variable "enabled" {
  type    = bool
  default = true
}

variable "environment" {
  type    = string
  default = "dev"
}

locals {
  bucket_suffix = var.enabled ? "active" : "inactive"
  size_label    = var.environment == "prod" ? "large" : "small"
}

output "bucket_suffix" {
  value = local.bucket_suffix
}

output "size_label" {
  value = local.size_label
}
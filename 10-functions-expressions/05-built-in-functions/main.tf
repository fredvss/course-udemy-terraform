terraform {
  required_version = ">= 1.5.0"
}

locals {
  raw_name   = "terraform-course"
  parts      = split("-", local.raw_name)
  joined     = join("/", local.parts)
  upper_name = upper(local.raw_name)
  lower_name = lower(local.raw_name)
  short_name = substr(local.raw_name, 0, 9)
  fallback   = coalesce(null, "valor-padrao")

  sample_json = jsonencode({
    name = local.raw_name
    size = length(local.parts)
  })
}

output "joined" {
  value = local.joined
}

output "upper_name" {
  value = local.upper_name
}

output "short_name" {
  value = local.short_name
}

output "fallback" {
  value = local.fallback
}

output "sample_json" {
  value = local.sample_json
}
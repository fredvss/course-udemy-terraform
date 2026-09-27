terraform {
  required_version = ">= 1.5.0"

  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "3.7.2"
    }
  }
}

resource "random_id" "suffix" {
  count       = 3
  byte_length = 2
}

output "suffixes" {
  value = random_id.suffix[*].hex
}
variable "cidr_vpc" {
  description = "The CIDR block for the VPC."
  type        = string
  default     = "10.0.0.0/16"
}

variable "cidr_subnet" {
  description = "The CIDR block for the subnet."
  type        = string
  default     = "10.0.1.0/24"
}

variable "tags" {
  type        = map(any)
  description = "Tags to be added to AWS resources"
}
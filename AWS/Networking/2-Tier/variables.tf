# Global Information
variable "region" {
  type    = string
  default = "us-east-1"
}

# VPC
# <-- VPC Subnet(s) -->
variable "vpc_range" {
  description = "Create a vpc with a specified CIDR (10.2.0.0/16)"
  type        = string
}

# <-- Public Subnet(s) -->
variable "public_subnet_1a" {
  description = "Create a public subnet in zone 1a with a specified CIDR (10.2.1.0/24)"
  type        = string
}

variable "public_subnet_1b" {
  description = "Create a public subnet in zone 1b with a specified CIDR (10.2.2.0/24)"
  type        = string
}

# <-- Private Subnet(s) -->
variable "private_subnet_1a" {
  description = "Create a private subnet in zone 1a with a specified CIDR (10.2.101.0/24)"
  type        = string
}

variable "private_subnet_1b" {
  description = "Create a private subnet in zone 1b with a specified CIDR (10.2.102.0/24)"
  type        = string
}
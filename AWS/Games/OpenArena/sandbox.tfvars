# Global Information
region                  = "us-east-1"

# VPC
# <-- VPC Subnet(s) -->
vpc_range               = "10.2.0.0/16"

# <-- Public Subnet(s) -->
public_subnet_1a        = "10.2.1.0/24"
public_subnet_1b        = "10.2.2.0/24"

# <-- Private Subnet(s) -->
private_subnet_1a       = "10.2.101.0/24"
private_subnet_1b       = "10.2.102.0/24"

# Optional Setting(s)
# < -- Jumphost Configuration -->
jumphost_instancetype   = "t3.micro"
jumphost_ami            = "ami-033b95fb8079dc481"
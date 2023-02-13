locals {
    jumphost_name = "${terraform.workspace}-jumphost"
}

# Jump host - SSH Key
resource "aws_key_pair" "jumphost_key" {
  key_name      = "jumphost_key"
  public_key    = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQD3F6tyPEFEzV0LX3X8BsXdMsQz1x2cEikKDEY0aIj41qgxMCP/iteneqXSIFZBp5vizPvaoIR3Um9xK7PGoW8giupGn+EPuxIA4cDM4vzOqOkiMPhz5XK0whEjkVzTo4+S0puvDZuwIsdiW9mxhJc7tgBNL0cYlWSYVkz4G/fslNfRPW5mYAM49f4fhtxPb5ok4Q2Lg9dPKVHO/Bgeu5woMc7RY0p1ej6D4CKFE6lymSDJpW0YHX/wqE9+cfEauh7xZcG0q9t2ta6F6fmX0agvpFyZo8aFbXeUBr7osSCJNgvavWbM/06niWrOvYX2xwWdhXmXSrbX8ZbabVohBK41 email@example.com"
}

# Jump host - Public Subnet
resource "aws_instance" "ec2jumphost" {
    ami                     = var.jumphost_ami
    instance_type           = var.jumphost_instancetype
    key_name                = aws_key_pair.jumphost_key.key_name
    subnet_id               = aws_subnet.workspace_public_subnet_1a.id
    vpc_security_group_ids  =  ["${aws_security_group.jumphost_sg.id}"]

    tags = {
      "Name"         = local.jumphost_name
      "Env"          = "${terraform.workspace}"
      "Project"      = "${terraform.workspace}"
      "DeployedWith" = "terraform"
    }
}

# Elastic IP for Jumphost
resource "aws_eip" "jumphost" {
    instance    = aws_instance.ec2jumphost.id
    vpc         = true
}
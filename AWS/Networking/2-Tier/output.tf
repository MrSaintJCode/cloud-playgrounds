# Nat(s)
output "workspace_nat_gateway_1a" {
  description = "Elastic IP of NAT 1a"
  value = aws_eip.workspace_eip_nat_1a.public_ip
}

output "workspace_nat_gateway_1b" {
  description = "Elastic IP of NAT 1b"
  value = aws_eip.workspace_eip_nat_1b.public_ip
}
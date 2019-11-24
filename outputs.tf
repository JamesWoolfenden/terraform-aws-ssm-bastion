output client_public_ip {
  description = "Bastion public IP"
  value       = aws_instance.bastion.public_ip
}

output "bastion" {
  value = aws_instance.bastion
}

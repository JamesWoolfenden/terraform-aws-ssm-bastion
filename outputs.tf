output client_public_ip {
  description = "Bastion public IP"
  value       = aws_instance.ec2_with_ssm_agent.public_ip
}

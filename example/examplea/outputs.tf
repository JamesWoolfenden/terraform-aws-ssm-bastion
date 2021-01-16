output "client_public_ip" {
  value = module.bastion.client_public_ip
}

output "bastion" {
  value = module.bastion.bastion
}

module "bastion" {
  source            = "../../"
  allowed_ips       = "${var.allowed_ips}"
  common_tags       = "${var.common_tags}"
  vpc_id            = ""
  ssh_public_key    = ""
  instance_type     = ""
  private_ip        = ""
  ssm_standard_role = ""
  subnet_id         = ""
  environment       = "${var.environment}"
  key_names         = ["${var.key_names}"]
}

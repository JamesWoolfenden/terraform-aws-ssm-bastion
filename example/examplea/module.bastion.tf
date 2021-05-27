module "bastion" {
  source            = "../../"
  allowed_cidrs     = [module.myip.cidr]
  vpc_id            = tolist(data.aws_vpcs.vpc.ids)[0]
  instance_type     = var.instance_type
  ssm_standard_role = var.ssm_standard_role
  subnet_id         = tolist(data.aws_subnet_ids.public.ids)[0]
  environment       = var.environment
  name              = var.name
}


module "myip" {
  source  = "JamesWoolfenden/ip/http"
  version = "0.3.9"
}

module "bastion" {
  source            = "../../"
  allowed_cidrs     = [module.myip.cidr]
  vpc_id            = tolist(data.aws_vpcs.vpc.ids)[0]
  instance_type     = var.instance_type
  ssm_standard_role = var.ssm_standard_role
  subnet_id         = tolist(data.aws_subnets.public.ids)[0]
  environment       = var.environment
  name              = var.name
}


module "myip" {
  source  = "git::https://github.com/JamesWoolfenden/terraform-http-ip?ref=aca5d04513698f2f564913cfcc3534780794c800"
}

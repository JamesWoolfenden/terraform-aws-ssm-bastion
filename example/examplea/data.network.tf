data "aws_vpcs" "vpc" {
  filter {
    name   = "tag:Name"
    values = [upper(var.account_name)]
  }
}

locals {
  vpc_id = tolist(data.aws_vpcs.vpc.ids)[0]
}


data "aws_vpc" "vpc" {
  id = local.vpc_id
}


data "aws_subnets" "public" {
  filter {
    name   = "vpc-id"
    values = [local.vpc_id]
  }

  tags = {
    Type = "Public"
  }
}

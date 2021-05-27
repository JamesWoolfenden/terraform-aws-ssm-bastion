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

data "aws_subnet_ids" "private" {
  vpc_id = local.vpc_id

  tags = {
    Type = "Private"
  }
}

data "aws_subnet_ids" "public" {
  vpc_id = local.vpc_id

  tags = {
    Type = "Public"
  }
}

data "aws_subnet" "public" {
  count = length(tolist(data.aws_subnet_ids.public.ids))
  id    = tolist(data.aws_subnet_ids.public.ids)[count.index]
}

data "aws_subnet" "private" {
  count = length(tolist(data.aws_subnet_ids.private.ids))
  id    = tolist(data.aws_subnet_ids.private.ids)[count.index]
}

data "aws_vpcs" "vpc" {
  tags = {
    Environment = "Dev/Test"
    Name        = "awwe-vpc-devtest-h-001"
  }
}

data "aws_subnet_ids" "subnets" {
  tags = {
    Name = "awwe-subn-devtest-h-web-001-1b"
  }

  vpc_id = element(data.aws_vpcs.vpc.ids, 0)
}

data "http" "myip" {
  url = "http://ipv4.icanhazip.com"
}

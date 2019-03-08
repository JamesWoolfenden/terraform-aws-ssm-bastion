# Instance Security group
resource "aws_security_group" "instance_ssh_access" {
  description = "Allow SSH to instance with ssm agent"
  vpc_id      = "${var.vpc_id}"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "TCP"
    self        = true
    cidr_blocks = ["${var.allowed_ips}/32"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = "${merge(var.common_tags,
    map("Name", "${var.ssm_tag_name}")
  )}"
}

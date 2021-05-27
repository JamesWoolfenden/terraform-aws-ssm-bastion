# Instance Security group
resource "aws_security_group" "instance_ssh_access" {
  description = "Allow SSH to instance with ssm agent"
  vpc_id      = var.vpc_id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "TCP"
    self        = true
    cidr_blocks = var.allowed_cidrs
  }

  egress {
    from_port = 0
    to_port   = 0
    protocol  = "-1"
    # tfsec:ignore:AWS009
    cidr_blocks = ["0.0.0.0/0"]
  }
}

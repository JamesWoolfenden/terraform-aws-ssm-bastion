resource "aws_key_pair" "ssm_key" {
  key_name   = "ssm-key"
  public_key = "${var.ssh_public_key}"
}

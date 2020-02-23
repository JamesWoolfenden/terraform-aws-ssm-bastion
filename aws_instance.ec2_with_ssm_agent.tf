resource "aws_instance" "bastion" {
  ami                         = data.aws_ami.ubuntu.image_id
  iam_instance_profile        = aws_iam_instance_profile.bastion.name
  instance_type               = var.instance_type
  vpc_security_group_ids      = [aws_security_group.instance_ssh_access.id]
  associate_public_ip_address = true
  key_name                    = aws_key_pair.ssm_key.key_name
  subnet_id                   = var.subnet_id

  root_block_device {
    encrypted = var.encrypted
  }

  tags = var.common_tags
}

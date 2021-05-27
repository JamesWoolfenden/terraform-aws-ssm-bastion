resource "aws_instance" "bastion" {
  # checkov:skip= CKV_AWS_88: "EC2 instance should not have public IP."
  # checkov:skip= CKV2_AWS_17: its rubbish
  ami                    = data.aws_ami.ubuntu.image_id
  iam_instance_profile   = aws_iam_instance_profile.bastion.name
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.instance_ssh_access.id]
  # tfsec:ignore:AWS012
  associate_public_ip_address = true
  key_name                    = aws_key_pair.ssm_key.key_name
  monitoring                  = true
  ebs_optimized               = true
  subnet_id                   = var.subnet_id

  root_block_device {
    encrypted = true
  }

  metadata_options {
    http_tokens = "required"
  }
}

resource "aws_instance" "ec2_with_ssm_agent" {
  ami                         = "${data.aws_ami.ubuntu.image_id}"
  iam_instance_profile        = "${aws_iam_instance_profile.ssm_poc_instance_profile.name}"
  instance_type               = "${var.instance_type}"
  vpc_security_group_ids      = ["${aws_security_group.instance_ssh_access.id}"]
  private_ip                  = "${var.private_ip}"
  associate_public_ip_address = true
  key_name                    = "${aws_key_pair.ssm_key.key_name}"
  user_data                   = "${file("${path.module}/files/userdata.sh")}"
  subnet_id                   = "${var.subnet_id}"

  tags = "${merge(var.common_tags,
    map("Name", "${var.environment}-${var.ssm_tag_name}-EC2")
  )}"
}

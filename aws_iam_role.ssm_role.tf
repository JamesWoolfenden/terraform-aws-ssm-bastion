resource "aws_iam_role" "ssm_role" {
  name               = "ssm-terraform"
  assume_role_policy = data.aws_iam_policy_document.assume.json
}

resource "aws_iam_role_policy_attachment" "ssm_standard" {
  role       = aws_iam_role.ssm_role.name
  policy_arn = var.ssm_standard_role
}

resource "aws_iam_instance_profile" "ssm_poc_instance_profile" {
  name = "ssm-poc-instance-profile"
  role = aws_iam_role.ssm_role.name
}

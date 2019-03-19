variable "vpc_id" {}

variable "instance_type" {}

variable "ssm_standard_role" {}

variable "subnet_id" {}

variable "allowed_ips" {}

variable "common_tags" {
  type        = "map"
  description = "Implements the common tags scheme"
}

variable "environment" {
  type        = "string"
  description = "The environment name"
}

variable "name" {
  type        = "string"
  description = "Name of the ec2 instance"
}

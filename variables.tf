variable "vpc_id" {}

variable "ssh_public_key" {}

variable "instance_type" {}

variable "private_ip" {}

variable "ssm_standard_role" {}

variable "subnet_id" {}

variable "allowed_ips" {}

variable "common_tags" {
  type        = "map"
  description = "Implements the common tags scheme"
}

variable "key_names" {
  type        = "list"
  description = "A list of key names"
}

variable "environment" {
  type        = "string"
  description = "The environment name"
}

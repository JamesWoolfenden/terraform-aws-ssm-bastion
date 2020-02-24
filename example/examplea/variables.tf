variable "name" {
  type        = string
  description = "The name of the bastion server"
}

variable "common_tags" {
  type        = map
  description = "Implements the common tags scheme"
}

variable "environment" {
  default = "dev"
}

variable "instance_type" {
  type = string
}

variable "ssm_standard_role" {
  type = string
}

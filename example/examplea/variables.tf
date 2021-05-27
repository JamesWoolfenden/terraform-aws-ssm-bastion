variable "name" {
  type        = string
  description = "The name of the bastion server"
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

variable "account_name" {
  type = string
}

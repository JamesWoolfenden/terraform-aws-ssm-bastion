variable "vpc_id" {
  type = string

}

variable "instance_type" {
  type = string

}

variable "ssm_standard_role" {
  type = string

}

variable "subnet_id" {
  type = string

}

variable "allowed_ips" {
  type = string

}

variable "common_tags" {
  type        = map
  description = "Implements the common tags scheme"
}

variable "environment" {
  type        = string
  description = "The environment name"
}

variable "name" {
  type        = string
  description = "Name of the ec2 instance"
}

variable "vpc_id" {
  type = string
  validation {
    condition     = length(var.vpc_id) >= 12 && substr(var.vpc_id, 0, 4) == "vpc-"
    error_message = "The AMI ids need to start with ami- and is at least 12 characters."
  }
}

variable "instance_type" {
  type = string

}

variable "ssm_standard_role" {
  type = string

}

variable "subnet_id" {
  type = string
  validation {
    condition     = length(var.subnet_id) >= 15 && substr(var.subnet_id, 0, 7) == "subnet-"
    error_message = "The AMI ids need to start with subnet- and is 15 characters or more."
  }
}

variable "allowed_cidrs" {
  type = list(any)
}

variable "common_tags" {
  type        = map(any)
  description = "Implements the common tags scheme"
}

variable "environment" {
  type        = string
  description = "The environment name"
}

variable "name" {
  type        = string
  description = "Name of the bastion host"
}

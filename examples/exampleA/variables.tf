variable "region" {
  type        = "string"
  description = "The region to create your registry in."
}

variable "name" {
  type        = "string"
  description = "The name of the registry"
}

variable "common_tags" {
  type        = "map"
  description = "Implements the common tags scheme"
}

variable "environment" {
  default = "dev"
}

variable "key_names" {
  type        = "list"
  description = "A list of key names"
}

variable "ssm_tag_name" {
  type        = "string"
  description = ""
}

variable "allowed_ips" {
  type        = "string"
  description = ""
}

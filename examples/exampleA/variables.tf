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

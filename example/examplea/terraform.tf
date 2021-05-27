terraform {
  required_providers {
    aws = {
      version = "3.39.0"
      source  = "hashicorp/aws"
    }

    tls = {
      source  = "hashicorp/tls"
      version = "3.0.0"
    }

    external = {
      source  = "hashicorp/external"
      version = "2.0.0"
    }

    http = {
      source  = "hashicorp/http"
      version = "2.0.0"
    }

    local = {
      source  = "hashicorp/local"
      version = "2.0.0"
    }

  }
  required_version = ">=0.14.8"
}

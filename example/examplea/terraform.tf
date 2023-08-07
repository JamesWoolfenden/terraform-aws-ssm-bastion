terraform {
  required_providers {
    aws = {
      version = "5.10.0"
      source  = "hashicorp/aws"
    }

    tls = {
      source  = "hashicorp/tls"
      version = "4.0.4"
    }

    external = {
      source  = "hashicorp/external"
      version = "2.3.1"
    }

    http = {
      source  = "hashicorp/http"
      version = "3.4.0"
    }

    local = {
      source  = "hashicorp/local"
      version = "2.4.0"
    }

  }
  required_version = ">=1.2.0"
}

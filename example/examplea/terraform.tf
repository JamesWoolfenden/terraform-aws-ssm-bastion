terraform {
  required_providers {





    http = {
      source  = "hashicorp/http"
      version = "3.5.0"
    }
    local = {
      source  = "hashicorp/local"
      version = "2.8.0"
    }
    aws = {
      source  = "hashicorp/aws"
      version = "6.43.0"
    }
    tls = {
      source  = "hashicorp/tls"
      version = "4.2.1"
    }
    external = {
      source  = "hashicorp/external"
      version = "2.3.5"
    }
  }
  required_version = ">=1.2.0"
}

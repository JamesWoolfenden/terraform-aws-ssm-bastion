provider "aws" {
  version = "2.0"
  region  = "eu-west-1"
}

provider "tls" {
  version = "1.2"
}

provider "external" {
  version = "1.0"
}

provider "http" {
  version = "1.0"
}

provider "local" {
  version = "1.1"
}

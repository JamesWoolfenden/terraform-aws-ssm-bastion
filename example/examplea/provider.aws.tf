provider "aws" {
  version = "3.2.0"
  region  = "eu-west-1"
}

provider "tls" {
  version = "2.0"
}

provider "external" {
  version = "1.2"
}

provider "http" {
  version = "1.1"
}

provider "local" {
  version = "1.2"
}

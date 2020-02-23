provider "aws" {
  region  = "eu-west-1"
  version = "2.50.0"
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

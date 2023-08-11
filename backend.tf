terraform {
  backend "s3" {
    bucket = "daiho-tf-lab01"
    key    = "provision/tf-lab01.tfstate"
    region = "ap-southeast-1"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

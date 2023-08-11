
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.region
}

module "network" {
  source = "./modules/network"

  author               = var.author
  project              = var.project
  region               = var.region
  availability_zones   = var.availability_zones
  vpc_cidr             = var.vpc_cidr
  public_subnets_cidr  = var.public_subnets_cidr
  private_subnets_cidr = var.private_subnets_cidr
}

module "ec2" {
  source = "./modules/ec2"

  author           = var.author
  project          = var.project
  region           = var.region
  trainee-instance = var.trainee-instance
  key_name         = var.key_name
}

module "route53" {
  source = "./modules/route53"
}

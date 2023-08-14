/* NETWORK */
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

/* EC2 */
module "ec2" {
  source = "./modules/ec2"

  author               = var.author
  project              = var.project
  region               = var.region
  trainee-instance     = var.trainee-instance
  key_name             = var.key_name
  instance_ami         = var.instance_ami
  instance_type        = var.instance_type
  instance_count       = var.instance_count
  instance_volume_size = var.instance_volume_size
}

/* Route53 */
module "route53" {
  source = "./modules/route53"

  region                = var.region
  aws_route53_zone_name = var.aws_route53_zone_name
}

/* S3 */
module "s3" {
  source = "./modules/s3"

  region = var.region
}

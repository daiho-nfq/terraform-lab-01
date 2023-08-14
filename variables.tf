variable "author" {
  description = "The author of the project"
}

variable "project" {
  description = "The name of the project"
}

variable "region" {
  description = "The AWS Region"
}

variable "key_name" {
  description = "Key to access the EC2 instance"
  type        = string
  default     = "terraform-nginx"
}

variable "bucket_name" {
  description = "S3 bucket name"
  type        = string
}

/*==== START of Network ======*/

variable "availability_zones" {
  type        = list(any)
  description = "The names of the availability zones to use"
}

variable "vpc_cidr" {
  description = "The CIDR block of the vpc"
}

variable "public_subnets_cidr" {
  type        = list(any)
  description = "The CIDR block for the public subnet"
}

variable "private_subnets_cidr" {
  type        = list(any)
  description = "The CIDR block for the private subnet"
}

/*==== END of Network ======*/

/*==== START of The EC2 ======*/

variable "trainee-instance" {
  type        = list(any)
  description = " The available trainee instance"
}

variable "instance_ami" {
  type        = string
  description = "AWS instance ec2 ami"
}

variable "instance_type" {
  type        = string
  description = "AWS instance ec2 type"
}

variable "instance_count" {
  type        = number
  description = "AWS instance ec2 count"
}

variable "instance_volume_size" {
  type        = number
  description = "AWS instance ec2 volumne size"
}

/*==== END of The EC2 ======*/


variable "aws_route53_zone_name" {
  type        = string
  description = "Name of route53 zone"
}

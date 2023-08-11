variable "author" {
  description = "The author of the project"
}

variable "project" {
  description = "The name of the project"
}

variable "region" {
  description = "The AWS Region"
}

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

variable "trainee-instance" {
  type        = list(any)
  description = " The available trainee instance"
}

variable "key_name" {
  description = "Key to access the EC2 instance"
  type        = string
  default     = "terraform-nginx"
}

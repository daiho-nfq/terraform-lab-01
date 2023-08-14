variable "author" {
  description = "The author of the project"
}

variable "project" {
  description = "The name of the project"
}

variable "region" {
  description = "The AWS Region"
}

variable "trainee-instance" {
  description = " The available trainee instance"
}

variable "key_name" {
  description = " The key name"
}

variable "instance_ami" {
  type = string
  description = "AWS instance ec2 ami"
}

variable "instance_type" {
  type = string
  description = "AWS instance ec2 type"
}

variable "instance_count" {
  type = number
  description = "AWS instance ec2 count"
}

variable "instance_volume_size" {
  type        = number
  description = "AWS instance ec2 volumne size"
}

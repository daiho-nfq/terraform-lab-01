author = "daiho"

project = "terraform-lab01"

region = "ap-southeast-1"

availability_zones = ["ap-southeast-1a", "ap-southeast-1b"]

vpc_cidr = "10.0.0.0/16"

public_subnets_cidr  = ["10.0.10.0/24", "10.0.20.0/24"] //List of Public subnet cidr range
private_subnets_cidr = ["10.0.30.0/24", "10.0.40.0/24"] //List of private subnet cidr range

trainee-instance = ["trainee-instance-1", "trainee-instance-2"]

key_name = "terraform-nginx"

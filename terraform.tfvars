author = "daiho"

project = "terraform-lab01"

region = "ap-southeast-1"

key_name = "terraform-nginx"

bucket_name = "daiho-tf-lab01"

/*==== START of The Network ======*/

availability_zones = ["ap-southeast-1a", "ap-southeast-1b"]

vpc_cidr = "10.0.0.0/16"

public_subnets_cidr = ["10.0.10.0/24", "10.0.20.0/24"] //List of Public subnet cidr range

private_subnets_cidr = ["10.0.30.0/24", "10.0.40.0/24"] //List of private subnet cidr range

trainee-instance = ["trainee-instance-1", "trainee-instance-2"]

/*==== END of Network ======*/

/*==== START of The EC2 ======*/

instance_ami = "ami-0df7a207adb9748c7"

instance_type = "t2.micro"

instance_count = 2

instance_volume_size = 8

/*==== END of The EC2 ======*/

/*==== START of Route53 ======*/

aws_route53_zone_name = "trainee.devops.nfq.asia"

/*==== END of Route53 ======*/

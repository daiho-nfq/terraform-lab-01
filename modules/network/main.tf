/*==== The VPC ======*/
resource "aws_vpc" "trainee-vpc" {
  cidr_block           = var.vpc_cidr
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    Name        = "${var.author}-${var.project}-vpc"
  }
}

resource "aws_subnet" "private_subnet" {
  vpc_id                  = aws_vpc.trainee-vpc.id
  count                   = length(var.availability_zones)
  cidr_block              = element(var.private_subnets_cidr, count.index)
  availability_zone       = element(var.availability_zones, count.index)

  tags = {
    Name        = "${var.author}-${var.project}-${element(var.availability_zones, count.index)}-private-subnet"
  }
}

resource "aws_subnet" "public_subnet" {
  vpc_id                  = aws_vpc.trainee-vpc.id
  count                   = length(var.availability_zones)
  cidr_block              = element(var.public_subnets_cidr, count.index)
  availability_zone       = element(var.availability_zones, count.index)

  tags = {
    Name        = "${var.author}-${var.project}-${element(var.availability_zones, count.index)}-public-subnet"
  }
}

resource "aws_security_group" "default_http" {
  name        = "${var.project}-default-http"
  description = "Default security group for connecting between ALB and app/services via HTTP"
  vpc_id      = aws_vpc.trainee-vpc.id

  tags = {
    Name = "${var.project}-default-http"
  }
}

resource "aws_security_group_rule" "default_http_ingress_22" {
    type        = "ingress"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    description = "VPC IP Range"
    cidr_blocks = ["${aws_vpc.trainee-vpc.cidr_block}"]
    ipv6_cidr_blocks = null
    prefix_list_ids = null
    self = null

    security_group_id = aws_security_group.default_http.id
}

resource "aws_security_group_rule" "default_http_ingress_80" {
    type                  = "ingress"
    from_port             = 80
    to_port               = 80
    protocol              = "tcp"
    description           = "VPC IP Range"
    cidr_blocks           = ["${aws_vpc.trainee-vpc.cidr_block}"]
    ipv6_cidr_blocks      = null
    prefix_list_ids       = null
    self                  = null

    security_group_id     = aws_security_group.default_http.id
}

resource "aws_security_group_rule" "default_http_ingress_443" {
    type                  = "ingress"
    from_port             = 443
    to_port               = 443
    protocol              = "tcp"
    description           = "VPC IP Range"
    cidr_blocks           = ["${aws_vpc.trainee-vpc.cidr_block}"]
    ipv6_cidr_blocks      = null
    prefix_list_ids       = null
    self                  = null

    security_group_id = aws_security_group.default_http.id
}

resource "aws_security_group_rule" "default_http_egress" {
  type             = "egress"
  from_port        = 0
  to_port          = 0
  protocol         = "-1"
  cidr_blocks      = ["0.0.0.0/0"]

  security_group_id = aws_security_group.default_http.id
}

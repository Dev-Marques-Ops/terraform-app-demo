data "aws_ami" "amazon_linux" {
  most_recent = true

  filter {
    name = "name"
    values = ["amzn2-ami-hvm-*-x86_64-ebs"]
  }
  owners = ["amazon"]
}

data "aws_vpc" "vpc" {
  filter {
    name   = "tag:Name"
    values = ["Dev-Marques-Ops-*"]
  }
}

data "aws_subnets" "public_subnets" {
  filter {
    name   = "tag:Name"
    values = ["Dev-Marques-Ops-public-vpc"]
  }
}

data "aws_security_groups" "launch_configuration" {
  filter {
    name   = "tag:Name"
    values = ["Dev-Marques-Ops-ssh-http-https"]
  }
}
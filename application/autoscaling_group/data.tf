data "aws_subnets" "public_subnets" {
  filter {
    name   = "tag:Name"
    values = ["Dev-Marques-Ops-public-vpc"]
  }
}

data "aws_subnets" "private_subnets" {
  filter {
    name   = "tag:Name"
    values = ["Dev-Marques-Ops-private-vpc"]
  }
}
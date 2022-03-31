data "aws_subnets" "public_subnets" {
  filter {
    name   = "tag:Name"
    values = ["Dev-Marques-Ops-public-vpc"]
  }
}
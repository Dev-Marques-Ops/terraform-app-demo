resource "aws_security_group" "ssh_bastion" {
  name        = "ssh_bastion"
  description = "Allow SSH inbound to bastion."
  vpc_id      = data.aws_vpc.vpc.id

  ingress {
    description      = "SSH from VPC"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = merge({Name = "${var.prefix_name}-ssh-bastion"},
    var.tags)
}
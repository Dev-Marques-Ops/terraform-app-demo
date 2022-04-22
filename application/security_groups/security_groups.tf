resource "aws_security_group" "load_balancer_security_group" {
  name        = "load_balancer_security_group"
  description = "Allow HTTP and HTTPS inbound traffic from internet."
  vpc_id      = data.aws_vpc.vpc.id

  dynamic "ingress" {
    for_each = local.load_balancer_security_group

    content{
      from_port        = ingress.value.port
      to_port          = ingress.value.port
      protocol         = ingress.value.protocol
      cidr_blocks      = var.all_ips
    } 
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = var.all_ips
  }

  tags = merge({Name = "${var.prefix_name}-ssh-http-https"},
                var.tags)
}

resource "aws_security_group" "app_vm_security_group" {
  name        = "app_vm_security_group"
  description = "Allow SSH inbound traffic to connect APP VMs by private subnet."
  vpc_id      = data.aws_vpc.vpc.id

  dynamic "ingress" {
    for_each = local.app_vm_security_group
    content {
      from_port        = ingress.value.port
      to_port          = ingress.value.port
      protocol         = ingress.value.protocol
      cidr_blocks      = ingress.value.cidr_blocks
    }
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = var.all_ips
  }

  tags = merge({Name = "${var.prefix_name}-mysql"},
    var.tags)
}

resource "aws_security_group" "bastion_security_group" {
  name        = "bastion_security_group"
  description = "Allow SSH inbound traffic to connect APP VMs by private subnet."
  vpc_id      = data.aws_vpc.vpc.id

  ingress {
    from_port        = var.ports.ssh
    to_port          = var.ports.ssh
    protocol         = "tcp"
    cidr_blocks      = var.all_ips
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = var.all_ips
  }

  tags = merge({Name = "${var.prefix_name}-mysql"},
    var.tags)
}

resource "aws_security_group" "mysql_security_group" {
  name        = "mysql_security_group"
  description = "Allow MySQL inbound traffic from APP VMs"
  vpc_id      = data.aws_vpc.vpc.id

  ingress {
    from_port        = var.ports.mysql
    to_port          = var.ports.mysql
    protocol         = "tcp"
    cidr_blocks      = var.private_cidr_block
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = var.all_ips
  }

  tags = merge({Name = "${var.prefix_name}-mysql"},
              var.tags)
}
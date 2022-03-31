resource "aws_lb" "app_demo_vm" {
  name                = var.prefix_name
  load_balancer_type  = "application"
  security_groups     = [var.security_group_id]
  subnets             = data.aws_subnets.public_subnets.ids

  tags = merge({Name = "${var.prefix_name}-load_balancer"},
              var.tags)
}
resource "aws_lb_target_group" "app_demo_vm" {
  count = length(var.launch_configuration_names)

  name     = "${var.prefix_name}-${count.index}"
  port     = 80
  protocol = "HTTP"
  vpc_id   = data.aws_vpc.vpc.id

  health_check {
    path                = var.health_check_paths[count.index]
    protocol            = "HTTP"
    matcher             = "200"
    interval            = var.health_check.interval
    timeout             = var.health_check.timeout
    healthy_threshold   = var.health_check.healthy_threshold
    unhealthy_threshold = var.health_check.unhealthy_threshold
  }

  tags = merge({Name = "${var.prefix_name}-target_group"},
              var.tags)
}
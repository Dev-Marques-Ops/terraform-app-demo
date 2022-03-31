resource "aws_lb_listener" "app_demo_vm_http" {
  load_balancer_arn = var.load_balancer_arn
  port = 80
  protocol = "HTTP"

  default_action {
    type             = "redirect"

    redirect {
      port        = "443"
      protocol    = "HTTPS"
      status_code = "HTTP_301"
    }
  }

  tags = merge({Name = "${var.prefix_name}-lb_listener_http"},
    var.tags)
}

resource "aws_lb_listener" "app_demo_vm_https" {
  load_balancer_arn = var.load_balancer_arn
  port = 443
  protocol = "HTTPS"
  certificate_arn = var.certificate_arn

  default_action {
    type = "forward"

    forward {
      dynamic "target_group" {
        for_each = toset(var.target_group_arn)

        content {
          arn = target_group.key
        }
      }
    }
  }

  tags = merge({Name = "${var.prefix_name}-lb_listener_https"},
    var.tags)
}
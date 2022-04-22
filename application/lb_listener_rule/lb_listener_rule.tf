resource "aws_lb_listener_rule" "app_demo_vm_rule" {
  count = length(var.host_headers)

  listener_arn = var.lb_listener_arn
  priority = (100 - count.index)

  action {
    type = "forward"
    target_group_arn = var.target_group_arn[count.index]
  }

  condition {
    host_header {
      values = ["${var.host_headers[count.index]}.dev-marques-ops.com"]
    }
  }

  tags = merge({Name = "${var.prefix_name}-lb_listener_http"},
    var.tags)
}
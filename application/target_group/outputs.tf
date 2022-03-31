output "target_groups_arn" {
  value = [for target_group in aws_lb_target_group.app_demo_vm: target_group.arn]
}
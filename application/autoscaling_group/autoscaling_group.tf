resource "aws_autoscaling_group" "app_demo_vm" {
  count = length(var.launch_configuration_names)

  launch_configuration  = var.launch_configuration_names[count.index]
  vpc_zone_identifier   = data.aws_subnets.public_subnets.ids

  max_size          = var.autoscaling_group_limits.max_size
  min_size          = var.autoscaling_group_limits.min_size
  desired_capacity  = var.autoscaling_group_limits.desired_capacity

  target_group_arns = [var.target_groups_arn[count.index]]
  health_check_type = "ELB"
}
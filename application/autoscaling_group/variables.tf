variable "launch_configuration_names" {
  description = "List of launch configuration names."
  type        = list(string)
  default     = []
}

variable "autoscaling_group_limits" {
  description = "Autoscaling group default limits."
  type = map(string)
  default = {
    max_size          = 3
    min_size          = 1
    desired_capacity  = 2
  }
}

variable "target_groups_arn" {
  description = "List of target group names."
  type        = list(string)
  default     = []
}
variable "prefix_name" {
  description = "Resources prefix name."
  type        = string
  default     = ""
}

variable "launch_configuration_names" {
  description = "Launch configurations names."
  type        = list(string)
  default     = []
}

variable "health_check_paths" {
  description = "Health Check attributes default paths."
  type        = list(string)
  default     = ["/app1/*", "/app2/*"]
}

variable "health_check" {
  description = "Health Check attributes default values."
  type        = map(number)
  default     = {
    interval            = 15
    timeout             = 3
    healthy_threshold   = 2
    unhealthy_threshold = 2
  }
}

variable "tags" {
  description = "Tracking tags."
  type        = map(string)
}
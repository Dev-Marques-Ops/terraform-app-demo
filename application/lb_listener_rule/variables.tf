variable "prefix_name" {
  description = "Resources prefix name."
  type        = string
  default     = ""
}

variable "lb_listener_arn" {
  description = "HTTPS listener."
  type        = string
  default     = ""
}

variable "target_group_arn" {
  description = "Application target groups."
  type        = list(string)
  default     = []
}

variable "host_headers" {
  description = "Default subdomains."
  type        = list(string)
  default     = []
}

variable "tags" {
  description = "Tracking tags."
  type        = map(string)
}
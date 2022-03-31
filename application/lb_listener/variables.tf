variable "prefix_name" {
  description = "Resources prefix name."
  type        = string
  default     = ""
}

variable "target_group_arn" {
  description = "Target group application ARN."
  type        = list(string)
  default     = []
}

variable "load_balancer_arn" {
  description = "Load balancer application ARN."
  type        = string
  default     = ""
}

variable "certificate_arn" {
  description = "SSL certificate ARN."
  type        = string
  default     = ""
}

variable "tags" {
  description = "Tracking tags."
  type        = map(string)
}
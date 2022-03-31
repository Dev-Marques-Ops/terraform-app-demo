variable "prefix_name" {
  description = "Resources prefix name."
  type        = string
  default     = ""
}

variable "security_group_id" {
  description = "Security group instances."
  type        = string
  default     = ""
}

variable "tags" {
  description = "Tracking tags."
  type        = map(string)
}
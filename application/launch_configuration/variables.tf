variable "prefix_name" {
  description = "Resources prefix name."
  type        = string
  default     = ""
}

variable "instance_type" {
  description = "Default instance type."
  type        = string
  default     = "t2.micro"
}

variable "security_group_id" {
  description = "Security group instances."
  type        = string
  default     = ""
}

variable "key_pair_name" {
  description = "Key pair SSH key name."
  type        = string
  default     = ""
}
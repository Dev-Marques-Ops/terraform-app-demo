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

variable "private_key" {
  description = "Private SSH key."
  type        = string
  default     = ""
}

variable "security_group_id" {
  description = ""
  type        = string
  default     = ""
}

variable "tags" {
  description = "Tracking tags."
  type        = map(string)
}
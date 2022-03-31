variable "prefix_name" {
  description = "Resources prefix name."
  type        = string
  default     = ""
}

variable "public_key" {
  description = "Launch configuration public key."
  type        = string
  default     = ""
}

variable "tags" {
  description = "Tracking tags."
  type        = map(string)
}
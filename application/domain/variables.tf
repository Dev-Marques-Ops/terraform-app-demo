variable "prefix_name" {
  description = "Resources prefix name."
  type        = string
  default     = ""
}

variable "subject_alternative_names" {
  description = "Domain name."
  type        = list(string)
  default     = ["www.dev-marques-ops.com"]
}

variable "subdomain_names" {
  description = "Subdomain names."
  type        = list(string)
  default     = ["app1", "app2"]
}

variable "alias" {
  description = ""
  type        = map(string)
  default     = {
    dns_name  = ""
    zone_id   = ""
  }
}

variable "tags" {
  description = "Tracking tags."
  type        = map(string)
}
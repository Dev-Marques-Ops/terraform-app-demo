variable "prefix_name" {
  description = "Resources prefix name."
  type        = string
  default     = ""
}

variable "ports" {
  description = "Default ports map."
  type        = map(number)
  default = {
    http    = 80
    https   = 443
    ssh     = 22
    mysql   = 3306
  }
}

variable "all_ips" {
  description = "Full IPs range."
  type    = list(string)
  default = ["0.0.0.0/0"]
}

variable "public_cidr_block" {
  description = "Public subnet IPs range."
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "private_cidr_block" {
  description = "Private subnet IPs range."
  type        = list(string)
  default     = ["10.0.10.0/24", "10.0.20.0/24"]
}

variable "tags" {
  description = "Tracking tags."
  type        = map(string)
}
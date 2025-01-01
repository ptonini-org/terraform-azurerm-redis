variable "name" {}

variable "rg" {
  type = object({
    name     = string
    location = string
  })
}

variable "tags" {
  type    = map(string)
  default = {}
}

variable "family" {
  type    = string
  default = "C"
}

variable "sku_name" {
  type    = string
  default = "Standard"
}

variable "non_ssl_port_enabled" {
  type    = bool
  default = true
}

variable "capacity" {
  type    = number
  default = 2
}

variable "minimum_tls_version" {
  default = "1.2"
}

variable "patch_schedule" {
  type = object({
    day_of_week    = string
    start_hour_utc = number
  })
  default = {
    day_of_week    = "Sunday"
    start_hour_utc = 5
  }
}


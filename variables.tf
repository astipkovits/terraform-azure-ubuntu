variable "name" {
    type = string
}

variable "region" {
    type = string
}

variable "admin_username" {
  type    = string
  default = "ubuntu"
}

variable "admin_password" {
  type    = string
}

variable "resource_group" {
  type = string
}

variable "size" {
  type = string
}

variable "subnet_id" {
  type = string
}

variable "tags" {
  type = map
  default = null
}

variable "command" {
  type = string
  default = ""
}

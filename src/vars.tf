variable "api_url" {
  default = "https://proxmox.int.hackatorium.com:8006/api2/json"
}

variable "api_user" {
  type = string
  default = null
}

variable "api_password" {
  type = string
  default = null
}

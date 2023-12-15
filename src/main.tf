terraform {
  required_providers {
    proxmox = {
      #source  = "telmate/proxmox"
      source = "TheGameProfi/proxmox"
    }
  }
}

provider "proxmox" {
  pm_api_url  = "${var.api_url}"
  pm_user     = "${var.api_user}"
  pm_password = "${var.api_password}"
  pm_debug = true
}
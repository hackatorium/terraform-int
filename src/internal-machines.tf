##########
# auth.int.hackatorium.com
##########
resource "proxmox_vm_qemu" "auth" {
  target_node = "proxhack"
  boot     = "order=scsi0"
  bootdisk = "scsi0"
  name     = "auth.int.hackatorium.com"
  ipconfig0 = "ip=192.168.50.2/24,gw=192.168.50.1"
  tags     = "cloud-image, ubuntu, ubuntu-22.04, ubuntu-jammy, auth, keycloak"
  clone    = "ubuntu-cloud-jammy"
  agent    = 1
  balloon  = 1024
  memory   = 2048
  cpu      = "host"
  cores    = 12
  sockets  = 1
  onboot   = true
  tablet   = false
  force_create = false
  full_clone = true
  os_type = "cloud-init"
  scsihw = "virtio-scsi-pci"
}

###########
# git.int.hackatorium.com
###########
resource "proxmox_vm_qemu" "git" {
  target_node = "proxhack"
  boot     = "order=scsi0"
  bootdisk = "scsi0"
  name     = "git.int.hackatorium.com"
  ipconfig0 = "ip=192.168.50.12/24,gw=192.168.50.1"
  tags     = "cloud-image, ubuntu, ubuntu-22.04, ubuntu-jammy, git, devops"
  clone    = "ubuntu-cloud-jammy"
  agent    = 1
  balloon  = 1024
  memory   = 2048
  cpu      = "host"
  cores    = 12
  sockets  = 1
  onboot   = true
  tablet   = false
  force_create = false
  full_clone = true
  os_type = "cloud-init"
  scsihw = "virtio-scsi-pci"
}

###########
# build.int.hackatorium.com
###########
resource "proxmox_vm_qemu" "build" {
  target_node = "proxhack"
  boot     = "order=scsi0"
  bootdisk = "scsi0"
  name     = "build.int.hackatorium.com"
  ipconfig0 = "ip=192.168.50.13/24,gw=192.168.50.1"
  tags     = "cloud-image, ubuntu, ubuntu-22.04, ubuntu-jammy, build, devops"
  clone    = "ubuntu-cloud-jammy"
  agent    = 1
  balloon  = 1024
  memory   = 2048
  cpu      = "host"
  cores    = 12
  sockets  = 1
  onboot   = true
  tablet   = false
  force_create = false
  full_clone = true
  os_type = "cloud-init"
  scsihw = "virtio-scsi-pci"
}

###########
# backup.int.hackatorium.com
###########
resource "proxmox_vm_qemu" "backup" {
  target_node = "proxhack"
  boot     = "order=scsi0"
  bootdisk = "scsi0"
  name     = "backup.int.hackatorium.com"
  ipconfig0 = "ip=192.168.50.5/24,gw=192.168.50.1"
  tags     = "cloud-image, ubuntu, ubuntu-22.04, ubuntu-jammy, backup"
  clone    = "ubuntu-cloud-jammy"
  agent    = 1
  balloon  = 1024
  memory   = 2048
  cpu      = "host"
  cores    = 12
  sockets  = 1
  onboot   = true
  tablet   = false
  force_create = false
  full_clone = true
  os_type = "cloud-init"
  scsihw = "virtio-scsi-pci"
}


###########
# logging.int.hackatorium.com
###########
resource "proxmox_vm_qemu" "logging" {
  target_node = "proxhack"
  boot     = "order=scsi0"
  bootdisk = "scsi0"
  name     = "logging.int.hackatorium.com"
  ipconfig0 = "ip=192.168.50.4/24,gw=192.168.50.1"
  tags     = "cloud-image, ubuntu, ubuntu-22.04, ubuntu-jammy, logging, graylog"
  clone    = "ubuntu-cloud-jammy"
  agent    = 1
  balloon  = 1024
  memory   = 2048
  cpu      = "host"
  cores    = 12
  sockets  = 1
  onboot   = true
  tablet   = false
  force_create = false
  full_clone = true
  os_type = "cloud-init"
  scsihw = "virtio-scsi-pci"
}

###########
# status.int.hackatorium.com
###########
resource "proxmox_vm_qemu" "status" {
  target_node = "proxhack"
  boot     = "order=scsi0"
  bootdisk = "scsi0"
  name     = "status.int.hackatorium.com"
  ipconfig0 = "ip=192.168.50.3/24,gw=192.168.50.1"
  tags     = "cloud-image, ubuntu, ubuntu-22.04, ubuntu-jammy, status, uptime-kuma"
  clone    = "ubuntu-cloud-jammy"
  agent    = 1
  balloon  = 1024
  memory   = 2048
  cpu      = "host"
  cores    = 12
  sockets  = 1
  onboot   = true
  tablet   = false
  force_create = false
  full_clone = true
  os_type = "cloud-init"
  scsihw = "virtio-scsi-pci"
}

###########
# cloud.int.hackatorium.com
###########
resource "proxmox_vm_qemu" "cloud" {
  target_node = "proxhack"
  boot     = "order=scsi0"
  bootdisk = "scsi0"
  name     = "cloud.int.hackatorium.com"
  ipconfig0 = "ip=192.168.50.21/24,gw=192.168.50.1"
  tags     = "cloud-image, ubuntu, ubuntu-22.04, ubuntu-jammy, cloud, nextcloud"
  clone    = "ubuntu-cloud-jammy"
  agent    = 1
  balloon  = 1024
  memory   = 2048
  cpu      = "host"
  cores    = 12
  sockets  = 1
  onboot   = true
  tablet   = false
  force_create = false
  full_clone = true
  os_type = "cloud-init"
  scsihw = "virtio-scsi-pci"
}

###########
# draw.int.hackatorium.com
###########
resource "proxmox_vm_qemu" "draw" {
  target_node = "proxhack"
  boot     = "order=scsi0"
  bootdisk = "scsi0"
  name     = "draw.int.hackatorium.com"
  ipconfig0 = "ip=192.168.50.24/24,gw=192.168.50.1"
  tags     = "cloud-image, ubuntu, ubuntu-22.04, ubuntu-jammy, draw"
  clone    = "ubuntu-cloud-jammy"
  agent    = 1
  balloon  = 1024
  memory   = 2048
  cpu      = "host"
  cores    = 12
  sockets  = 1
  onboot   = true
  tablet   = false
  force_create = false
  full_clone = true
  os_type = "cloud-init"
  scsihw = "virtio-scsi-pci"
}


###########
# netboot.int.hackatorium.com
###########
resource "proxmox_vm_qemu" "netboot" {
  target_node = "proxhack"
  boot     = "order=scsi0"
  bootdisk = "scsi0"
  name     = "netboot.int.hackatorium.com"
  ipconfig0 = "ip=192.168.50.7/24,gw=192.168.50.1"
  tags     = "cloud-image, ubuntu, ubuntu-22.04, ubuntu-jammy, netboot, pxe"
  clone    = "ubuntu-cloud-jammy"
  agent    = 1
  balloon  = 1024
  memory   = 2048
  cpu      = "host"
  cores    = 12
  sockets  = 1
  onboot   = true
  tablet   = false
  force_create = false
  full_clone = true
  os_type = "cloud-init"
  scsihw = "virtio-scsi-pci"
}

###########
# pihole.int.hackatorium.com
###########
resource "proxmox_vm_qemu" "pihole" {
  target_node = "proxhack"
  boot     = "order=scsi0"
  bootdisk = "scsi0"
  name     = "pihole.int.hackatorium.com"
  ipconfig0 = "ip=192.168.50.8/24,gw=192.168.50.1"
  tags     = "cloud-image, ubuntu, ubuntu-22.04, ubuntu-jammy, pihole, dns"
  clone    = "ubuntu-cloud-jammy"
  agent    = 1
  balloon  = 1024
  memory   = 2048
  cpu      = "host"
  cores    = 12
  sockets  = 1
  onboot   = true
  tablet   = false
  force_create = false
  full_clone = true
  os_type = "cloud-init"
  scsihw = "virtio-scsi-pci"
}

###########
# docs.int.hackatorium.com
###########
resource "proxmox_vm_qemu" "docs" {
  target_node = "proxhack"
  boot     = "order=scsi0"
  bootdisk = "scsi0"
  name     = "docs.int.hackatorium.com"
  ipconfig0 = "ip=192.168.50.6/24,gw=192.168.50.1"
  tags     = "cloud-image, ubuntu, ubuntu-22.04, ubuntu-jammy, docs, bookstack"
  clone    = "ubuntu-cloud-jammy"
  agent    = 1
  balloon  = 1024
  memory   = 2048
  cpu      = "host"
  cores    = 12
  sockets  = 1
  onboot   = true
  tablet   = false
  force_create = false
  full_clone = true
  os_type = "cloud-init"
  scsihw = "virtio-scsi-pci"
}

###########
# soc.int.hackatorium.com
###########
resource "proxmox_vm_qemu" "soc" {
  target_node = "proxhack"
  boot     = "order=scsi0"
  bootdisk = "scsi0"
  name     = "soc.int.hackatorium.com"
  ipconfig0 = "ip=192.168.50.31/24,gw=192.168.50.1"
  tags     = "cloud-image, ubuntu, ubuntu-22.04, ubuntu-jammy, soc, wazuh, the-hive"
  clone    = "ubuntu-cloud-jammy"
  agent    = 1
  balloon  = 1024
  memory   = 2048
  cpu      = "host"
  cores    = 12
  sockets  = 1
  onboot   = true
  tablet   = false
  force_create = false
  full_clone = true
  os_type = "cloud-init"
  scsihw = "virtio-scsi-pci"
}

###########
# cti.int.hackatorium.com
###########
resource "proxmox_vm_qemu" "cti" {
  target_node = "proxhack"
  boot     = "order=scsi0"
  bootdisk = "scsi0"
  name     = "cti.int.hackatorium.com"
  ipconfig0 = "ip=192.168.50.32/24,gw=192.168.50.1"
  tags     = "cloud-image, ubuntu, ubuntu-22.04, ubuntu-jammy, soc, cti"
  clone    = "ubuntu-cloud-jammy"
  agent    = 1
  balloon  = 1024
  memory   = 2048
  cpu      = "host"
  cores    = 12
  sockets  = 1
  onboot   = true
  tablet   = false
  force_create = false
  full_clone = true
  os_type = "cloud-init"
  scsihw = "virtio-scsi-pci"
}
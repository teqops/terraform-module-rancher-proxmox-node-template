variable "proxmox_ip" {
}

variable "ram" {
  default = 16
}

variable "cpu" {
  default = 4
}

variable "ssh_password" {
}

variable "ssh_user" {
}

variable "ssh_port" {
  default = 22
}

variable "machine_name" {
}

variable "proxmox_user" {
  default = "root"
}

variable "proxmox_node" {
}

variable "proxmox_password" {
}

variable "proxmox_base_vm_id" {
}

variable "proxmox_network" {
  default = "vmbr0"
}

variable "hdd_size" {
  default = 50
}

variable "namespace" {
  default = "cattle-global-nt"
}

variable "storage_location" {
}

output "node_template_id" {
  value = "${var.namespace}:nt-${var.machine_name}"
}

output "machine_name" {
  value = var.machine_name
}
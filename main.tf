resource "kubernetes_manifest" "nt-proxmox" {
  manifest = {
    "apiVersion" = "management.cattle.io/v3"
    "kind"       = "NodeTemplate"
    "metadata" = {
      "name"      = "nt-${var.machine_name}"
      "namespace" = var.namespace
    }
    "proxmoxveConfig" = {
      "debugDriver" = false
      "debugResty" = false
      "provisionStrategy" = "clone"
      "proxmoxHost" = var.proxmox_ip
      "proxmoxNode" = "${var.proxmox_node}"
      "proxmoxRealm" = "pam"
      "proxmoxUserName" = var.proxmox_user
      "proxmoxUserPassword" = var.proxmox_password
      "sshPassword" = var.ssh_password
      "sshPort" = var.ssh_port
      "sshUsername" = var.ssh_user
      "vmCienabled" = "1"
      "vmCitype" = "nocloud"
      "vmCloneFull" = "1"
      "vmCloneVmid" = var.proxmox_base_vm_id
      "vmCpuCores" = var.cpu
      "vmCpuSockets" = "1"
      "vmMemory" = var.ram
      "vmNetBridge" = var.proxmox_network
      "vmNetFirewall" = "0"
      "vmNetModel" = "virtio"
      "vmNetTag" = "0"
      "vmScsiController" = "virtio-scsi-pci"
      "vmStartOnboot" = "0"
      "vmStoragePath" = var.storage_location
      "vmStorageSize" = var.hdd_size
      "vmStorageType" = "RAW"
    }
    "spec" = {
      "displayName" = var.machine_name
      "driver" = "proxmoxve"
      "engineInstallURL" = "https://releases.rancher.com/install-docker/20.10.sh"
      "useInternalIpAddress" = true
    }
  }
}
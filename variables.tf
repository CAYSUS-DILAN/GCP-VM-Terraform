variable "project" {
    description = "GCP project ID"
    type        = string
}

variable "region" {
  description = "GCP region"
  type = string
  default = "us-central1"
}

variable "zone" {
    description = "GCP Zone"
    type = string
    default = "us-central1-a"
}

variable "vm_name" {
  description = "Name of the VM"
  type = string
  default = "ansible-vm"
}

variable "auto_delete" {
  description = "Whether to auto delete the VM after test"
  default = "false"
}

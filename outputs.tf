output "vm_external_ip" {
  description = "External IP of the VM"
  value       = google_compute_instance.vm_instance.network_interface[0].access_config[0].nat_ip
}


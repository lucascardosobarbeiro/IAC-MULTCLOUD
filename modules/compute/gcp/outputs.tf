
# Outputs do módulo de instância GCP

output "instance_name" {
  value       = google_compute_instance.vm.name
  description = "Nome da instância criada"
}

output "public_ip" {
  value       = google_compute_instance.vm.network_interface[0].access_config[0].nat_ip
  description = "IP público da instância"
}

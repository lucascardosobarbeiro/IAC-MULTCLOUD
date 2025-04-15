
# Outputs do módulo GCP
output "vpc_id" {
  description = "ID da VPC criada"
  value       = google_compute_network.vpc_network.id
}

output "subnet_id" {
  description = "ID da Subnet criada"
  value       = google_compute_subnetwork.subnet.id
}

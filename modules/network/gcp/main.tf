
# Criação da VPC no GCP
resource "google_compute_network" "vpc_network" {
  name                    = var.network_name  # Nome da rede
  auto_create_subnetworks = false             # Sub-redes não serão criadas automaticamente
}

# Criação da Subnet
resource "google_compute_subnetwork" "subnet" {
  name          = var.subnet_name            # Nome da Subnet
  ip_cidr_range = var.subnet_cidr            # Faixa CIDR
  region        = var.region                 # Região
  network       = google_compute_network.vpc_network.id  # Associação com a VPC
}

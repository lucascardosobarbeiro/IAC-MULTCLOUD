
# Provider do GCP
provider "google" {
  project = var.project_id
  region  = var.region
}

# Instancia o módulo de rede GCP
module "network" {
  source       = "../../../modules/network/gcp"
  network_name = "dev-network"
  subnet_name  = "dev-subnet"
  subnet_cidr  = "10.0.0.0/24"
  region       = var.region
}

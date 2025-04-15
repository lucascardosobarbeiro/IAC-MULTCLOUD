
# Criação de instância GCE na GCP
resource "google_compute_instance" "vm" {
  name         = var.instance_name                  # Nome da instância
  machine_type = var.machine_type                   # Tipo da máquina (e.g. e2-micro)
  zone         = var.zone                           # Zona de implantação

  boot_disk {
    initialize_params {
      image = var.image                             # Imagem utilizada no disco (ex: debian-cloud/debian-11)
    }
  }

  network_interface {
    subnetwork    = var.subnet_id                   # Sub-rede onde a VM será criada
    access_config {}                                # Garante que a VM terá IP externo
  }

  tags = ["dev"]                                    # Tags de rede/firewall
}


# Módulo de instância GCP para ambiente de desenvolvimento
module "instance" {
  source        = "../../../modules/compute/gcp"
  instance_name = "dev-instance-gcp"
  machine_type  = "e2-micro"
  image         = "debian-cloud/debian-11"
  zone          = "us-central1-a"
  subnet_id     = module.network.subnet_id
}


# Provider da AWS
provider "aws" {
  region = var.region
}

# Instancia o módulo de rede AWS
module "network" {
  source             = "../../../modules/network/aws"
  network_name       = "dev-vpc"
  vpc_cidr           = "10.1.0.0/16"
  subnet_name        = "dev-subnet"
  subnet_cidr        = "10.1.1.0/24"
  availability_zone  = var.availability_zone
}

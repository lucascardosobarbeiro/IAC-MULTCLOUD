
# Variáveis utilizadas pelo módulo GCP

variable "network_name" {
  description = "Nome da VPC"
  type        = string
}

variable "subnet_name" {
  description = "Nome da Subnet"
  type        = string
}

variable "subnet_cidr" {
  description = "CIDR da Subnet"
  type        = string
}

variable "region" {
  description = "Região GCP"
  type        = string
}

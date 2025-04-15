
# Variáveis do módulo AWS

variable "network_name" {
  description = "Nome da VPC"
  type        = string
}

variable "vpc_cidr" {
  description = "CIDR da VPC"
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

variable "availability_zone" {
  description = "Zona de disponibilidade da Subnet"
  type        = string
}

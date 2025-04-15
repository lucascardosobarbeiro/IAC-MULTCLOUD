
# Variáveis do módulo de instância GCP

variable "instance_name" {
  description = "Nome da instância"
  type        = string
}

variable "machine_type" {
  description = "Tipo da máquina (e.g. e2-micro)"
  type        = string
}

variable "image" {
  description = "Imagem utilizada pela VM (e.g. debian-cloud/debian-11)"
  type        = string
}

variable "zone" {
  description = "Zona de implantação da VM"
  type        = string
}

variable "subnet_id" {
  description = "ID da subnet associada"
  type        = string
}

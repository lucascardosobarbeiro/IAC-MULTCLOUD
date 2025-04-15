
# Variáveis do módulo de instância AWS

variable "instance_name" {
  description = "Nome da instância"
  type        = string
}

variable "instance_type" {
  description = "Tipo da instância (ex: t2.micro)"
  type        = string
}

variable "ami" {
  description = "AMI da instância"
  type        = string
}

variable "subnet_id" {
  description = "ID da subnet para associar à instância"
  type        = string
}

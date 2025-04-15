
# Outputs do módulo de instância AWS

output "instance_id" {
  value       = aws_instance.vm.id
  description = "ID da instância criada"
}

output "public_ip" {
  value       = aws_instance.vm.public_ip
  description = "IP público da instância"
}


# Outputs do módulo AWS

output "vpc_id" {
  description = "ID da VPC criada"
  value       = aws_vpc.vpc.id
}

output "subnet_id" {
  description = "ID da Subnet criada"
  value       = aws_subnet.subnet.id
}

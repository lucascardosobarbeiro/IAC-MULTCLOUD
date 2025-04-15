
# Criação de instância EC2 na AWS
resource "aws_instance" "vm" {
  ami                         = var.ami                           # AMI da instância
  instance_type               = var.instance_type                 # Tipo da instância (e.g. t2.micro)
  subnet_id                   = var.subnet_id                     # Sub-rede onde será criada
  associate_public_ip_address = true                              # Define IP público

  tags = {
    Name = var.instance_name                                      # Nome da instância (tag)
  }
}

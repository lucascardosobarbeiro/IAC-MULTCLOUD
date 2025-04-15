
# Módulo de instância AWS para ambiente de desenvolvimento
module "instance" {
  source         = "../../../modules/compute/aws"
  instance_name  = "dev-instance-aws"
  instance_type  = "t2.micro"
  ami            = "ami-0c55b159cbfafe1f0"  # AMI para Amazon Linux 2 (região us-east-1)
  subnet_id      = module.network.subnet_id
}

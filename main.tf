provider "aws" {
  region = "us-east-1"
}

module "ec2_server" {
  source         = "./modules/ec2-server"
  ami_id         = var.ami_id
  instance_type  = var.instance_type
  key_name       = var.key_name
  vpc_id         = var.vpc_id
  instance_count = var.instance_count
  volume_size    = var.volume_size
}

output "all_public_ips" {
  value = module.ec2_server.public_ips
}

output "all_private_ips" {
  value = module.ec2_server.private_ips
}

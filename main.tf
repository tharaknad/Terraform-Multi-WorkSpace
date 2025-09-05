provider "aws" {
  region = "us-east-1"
}

module "ec2-server" {
  source         = "./modules/ec2-server"
  ami_id         = var.ami_id
  instance_type  = var.instance_type
  key_name       = var.key_name
  vpc_id         = var.vpc_id
  instance_count = var.instance_count
  volume_size    = var.volume_size
}



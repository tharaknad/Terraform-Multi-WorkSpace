terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  required_version = ">= 1.3.0"
}

provider "aws" {
  region = var.aws_region
}

# Pick subnet based on workspace
data "aws_subnets" "all" {
  filter {
    name   = "vpc-id"
    values = [var.vpc_id]
  }
}

locals {
  workspace_subnet_map = {
    dev      = data.aws_subnets.all.ids[0]
    staging  = data.aws_subnets.all.ids[1]
    pre-prod = data.aws_subnets.all.ids[2]
    prod     = data.aws_subnets.all.ids[3]
  }
}

module "ec2-instance" {
  source        = "./modules/ec2-server"
  ami_id        = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name
  vpc_id        = var.vpc_id
  subnet_id     = local.workspace_subnet_map[terraform.workspace]
}

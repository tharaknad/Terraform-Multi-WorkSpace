# AMI ID for the EC2 instance
variable "ami_id" {
  description = "AMI ID for the EC2 instance"
  type        = string
}

# Instance type (e.g., t3.micro, t2.small)
variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}

# Key pair name for SSH access
variable "key_name" {
  description = "Key pair name to use for SSH"
  type        = string
}

# VPC ID where EC2 will be created
variable "vpc_id" {
  description = "VPC ID for the security group"
  type        = string
}

# Subnet ID to launch EC2 instances
variable "subnet_id" {
  description = "Subnet ID for EC2 instance placement"
  type        = string
}

# Environment name (dev, staging, prod, etc.)
variable "env" {
  description = "Environment name, usually from Terraform workspace"
  type        = string
}

# Number of EC2 instances to launch
variable "instance_count" {
  description = "Number of EC2 instances to launch"
  type        = number
  default     = 1
}

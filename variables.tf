variable "ami_id" {
  type        = string
  description = "AMI ID"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "key_name" {
  type        = string
  description = "Key pair name"
}

variable "vpc_id" {
  type        = string
  description = "VPC ID"
}

variable "instance_count" {
  type    = number
  default = 1
}

variable "volume_size" {
  type    = number
  default = 8
}

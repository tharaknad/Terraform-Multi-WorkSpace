variable "ami_id" {
  type        = string
  description = "AMI ID"
}

variable "instance_type" {
  type        = string
  description = "Instance type"
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
  type        = number
  description = "Number of EC2 instances to launch"
  default     = 1
}

variable "volume_size" {
  type        = number
  description = "Size of root EBS volume (GB)"
  default     = 8
}

output "ec2_instance_ids" {
  description = "EC2 Instance IDs"
  value       = module.ec2_server.instance_ids
}

output "ec2_private_ips" {
  description = "Private IPs"
  value       = module.ec2_server.private_ips
}

output "ec2_public_ips" {
  description = "Public IPs"
  value       = module.ec2_server.public_ips
}

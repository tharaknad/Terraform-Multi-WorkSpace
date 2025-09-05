output "all_instance_ids" {
  value = module.ec2-server.instance_ids
}

# Root outputs.tf
output "public_ip" {
  description = "Public IP(s) of the EC2 instance(s)"
  value       = module.ec2-server.public_ip
}

output "private_ip" {
  description = "Private IP(s) of the EC2 instance(s)"
  value       = module.ec2-server.private_ip
}

output "public_ip" {
  value = module.ec2-instance.public_ip
}

output "private_ip" {
  value = module.ec2-instance.private_ip
}

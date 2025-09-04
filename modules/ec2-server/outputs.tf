output "public_ips" {
  description = "Public IPs of all EC2 instances"
  value       = aws_instance.this[*].public_ip
}

output "private_ips" {
  description = "Private IPs of all EC2 instances"
  value       = aws_instance.this[*].private_ip
}

output "instance_ids" {
  description = "IDs of all EC2 instances"
  value       = aws_instance.this[*].id
}

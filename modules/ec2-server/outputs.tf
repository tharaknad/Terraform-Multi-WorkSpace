output "instance_ids" {
  value = aws_instance.this[*].id
}

# Module outputs.tf

output "public_ip" {
  description = "Public IP(s) of the EC2 instance(s)"
  value       = aws_instance.this[*].public_ip
}

output "private_ip" {
  description = "Private IP(s) of the EC2 instance(s)"
  value       = aws_instance.this[*].private_ip
}

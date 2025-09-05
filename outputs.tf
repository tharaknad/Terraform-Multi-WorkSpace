output "instances" {
  description = "EC2 instance details from the ec2-server module"
  value       = module.ec2-server.instances
}

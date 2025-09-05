output "instances" {
  description = "Detailed info for each EC2 instance"
  value = {
    for idx, inst in aws_instance.this :
    "pre-prod-ec2-${idx + 1}" => {
      id         = replace(inst.id, "i-", "")
      public_ip  = inst.public_ip
      private_ip = inst.private_ip
    }
  }
}

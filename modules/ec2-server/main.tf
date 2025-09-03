resource "aws_security_group" "allow_ssh" {
  name        = "${terraform.workspace}-allow-ssh"
  description = "Allow SSH inbound traffic"
  vpc_id      = var.vpc_id

  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "${terraform.workspace}-allow-ssh"
  }
}

resource "aws_instance" "this" {
  ami                         = var.ami_id
  instance_type               = var.instance_type
  subnet_id                   = var.subnet_id # <- we pass the subnet dynamically
  associate_public_ip_address = true
  key_name                    = var.key_name
  vpc_security_group_ids      = [aws_security_group.allow_ssh.id]

  #  NOTE: No hardcoded availability_zone here.
  # AWS will auto-place the instance into the AZ of the subnet you provide.

  tags = {
    Name = "${terraform.workspace}-ec2"
  }
}

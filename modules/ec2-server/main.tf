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

<<<<<<< HEAD
  #  NOTE: No hardcoded availability_zone here.
=======
  # ⚡ NOTE: No hardcoded availability_zone here.
>>>>>>> 3231e9df8c0bb005718b340994bb729b8bb54c1f
  # AWS will auto-place the instance into the AZ of the subnet you provide.

  tags = {
    Name = "${terraform.workspace}-ec2"
  }
}

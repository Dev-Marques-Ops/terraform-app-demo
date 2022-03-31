resource "aws_instance" "bastion" {
  ami = data.aws_ami.amazon_linux.id

  instance_type = var.instance_type
  key_name      = var.prefix_name

  subnet_id                   = data.aws_subnets.public_subnets.ids[0]
  security_groups             = [aws_security_group.ssh_bastion.id]
  associate_public_ip_address = true

  tags = merge({Name = "${var.prefix_name}-bastion"},
              var.tags)
}

resource "null_resource" "bastion" {
  triggers = {
    always_run = timestamp()
  }

  connection {
    type        = "ssh"
    user        = "ec2-user"
    password    = ""
    host        = aws_instance.bastion.public_dns
    private_key = var.private_key
  }

  provisioner "file" {
    content     = var.private_key
    destination = "/home/ec2-user/private-key"
  }

  provisioner "remote-exec" {
    inline = [
      "sudo chmod 400 /home/ec2-user/private-key"
    ]
  }
}
output "SSH_Connection" {
  value = "ssh -i key_files/marques ec2-user@${aws_instance.bastion.public_dns}"
}
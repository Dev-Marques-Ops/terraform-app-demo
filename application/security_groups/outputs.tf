output "load_balancer_security_group_id" {
  value = aws_security_group.load_balancer_security_group.id
}

output "app_vm_security_group_id" {
  value = aws_security_group.app_vm_security_group.id
}

output "bastion_security_group_id" {
  value = aws_security_group.bastion_security_group.id
}

output "mysql_security_group_id" {
  value = aws_security_group.mysql_security_group.id
}
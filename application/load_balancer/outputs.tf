output "dns_name" {
  value = aws_lb.app_demo_vm.dns_name
}

output "zone_id" {
  value = aws_lb.app_demo_vm.zone_id
}

output "load_balancer_arn" {
  value = aws_lb.app_demo_vm.arn
}
output "launch_configuration_names" {
  value = [for launch_configuration in aws_launch_configuration.app_demo_vm: launch_configuration.name]
}
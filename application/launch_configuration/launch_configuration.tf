resource "aws_launch_configuration" "app_demo_vm"{
  count = length(fileset("${path.module}/scripts", "*.sh"))

  name_prefix   = "${var.prefix_name}-"
  image_id      = data.aws_ami.amazon_linux.id
  instance_type = var.instance_type

  security_groups = [var.security_group_id]
  associate_public_ip_address = true

  user_data = file("${path.module}/scripts/app_demo_vm_${count.index +1}.sh")
  key_name  = var.key_pair_name

  lifecycle {
    create_before_destroy = true
  }
}
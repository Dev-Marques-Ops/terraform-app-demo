resource "aws_key_pair" "launch_configuration" {
  key_name    = var.prefix_name
  public_key  = var.public_key

  tags        = merge({Name = "${var.prefix_name}-key_pair"},
                      var.tags)
}
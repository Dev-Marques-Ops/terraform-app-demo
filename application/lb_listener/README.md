# Load Balancer Listener

## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_lb_listener.app_demo_vm_http](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_listener) | resource |
| [aws_lb_listener.app_demo_vm_https](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_listener) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_certificate_arn"></a> [certificate\_arn](#input\_certificate\_arn) | SSL certificate ARN. | `string` | `""` | no |
| <a name="input_load_balancer_arn"></a> [load\_balancer\_arn](#input\_load\_balancer\_arn) | Load balancer application ARN. | `string` | `""` | no |
| <a name="input_prefix_name"></a> [prefix\_name](#input\_prefix\_name) | Resources prefix name. | `string` | `""` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Tracking tags. | `map(string)` | n/a | yes |
| <a name="input_target_group_arn"></a> [target\_group\_arn](#input\_target\_group\_arn) | Target group application ARN. | `list(string)` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_lb_listener_arn"></a> [lb\_listener\_arn](#output\_lb\_listener\_arn) | n/a |

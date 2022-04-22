# Target Group

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
| [aws_lb_target_group.app_demo_vm](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_target_group) | resource |
| [aws_vpc.vpc](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/vpc) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_health_check"></a> [health\_check](#input\_health\_check) | Health Check attributes default values. | `map(number)` | <pre>{<br>  "healthy_threshold": 2,<br>  "interval": 15,<br>  "timeout": 3,<br>  "unhealthy_threshold": 2<br>}</pre> | no |
| <a name="input_health_check_paths"></a> [health\_check\_paths](#input\_health\_check\_paths) | Health Check attributes default paths. | `list(string)` | <pre>[<br>  "/app1/index.html",<br>  "/app2/index.html"<br>]</pre> | no |
| <a name="input_launch_configuration_names"></a> [launch\_configuration\_names](#input\_launch\_configuration\_names) | Launch configurations names. | `list(string)` | `[]` | no |
| <a name="input_prefix_name"></a> [prefix\_name](#input\_prefix\_name) | Resources prefix name. | `string` | `""` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Tracking tags. | `map(string)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_target_groups_arn"></a> [target\_groups\_arn](#output\_target\_groups\_arn) | n/a |

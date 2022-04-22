# Autoscaling Group

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
| [aws_autoscaling_group.app_demo_vm](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/autoscaling_group) | resource |
| [aws_subnets.private_subnets](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/subnets) | data source |
| [aws_subnets.public_subnets](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/subnets) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_autoscaling_group_limits"></a> [autoscaling\_group\_limits](#input\_autoscaling\_group\_limits) | Autoscaling group default limits. | `map(string)` | <pre>{<br>  "desired_capacity": 2,<br>  "max_size": 3,<br>  "min_size": 1<br>}</pre> | no |
| <a name="input_launch_configuration_names"></a> [launch\_configuration\_names](#input\_launch\_configuration\_names) | List of launch configuration names. | `list(string)` | `[]` | no |
| <a name="input_target_groups_arn"></a> [target\_groups\_arn](#input\_target\_groups\_arn) | List of target group names. | `list(string)` | `[]` | no |

## Outputs

No outputs.

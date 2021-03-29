# terraform-module-x

Terraform Module Template

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 0.14.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 3.34 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | ~> 3.34 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_mq_broker.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/mq_broker) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_apply_immediately"></a> [apply\_immediately](#input\_apply\_immediately) | (Optional) Specifies whether any broker modifications are applied immediately, or during the next maintenance window. | `bool` | `true` | no |
| <a name="input_authentication_strategy"></a> [authentication\_strategy](#input\_authentication\_strategy) | (optional) Authentication strategy used to secure the broker | `string` | `"simple"` | no |
| <a name="input_auto_minor_version_upgrade"></a> [auto\_minor\_version\_upgrade](#input\_auto\_minor\_version\_upgrade) | (optional) Whether to automatically upgrade to new minor versions of brokers as Amazon MQ makes releases available. | `bool` | `false` | no |
| <a name="input_broker_name"></a> [broker\_name](#input\_broker\_name) | (Required) Name of the broker. | `string` | n/a | yes |
| <a name="input_deployment_mode"></a> [deployment\_mode](#input\_deployment\_mode) | (optional) description | `string` | `"SINGLE_INSTANCE"` | no |
| <a name="input_engine_type"></a> [engine\_type](#input\_engine\_type) | (optional) Type of broker engine. | `string` | `"RabbitMQ"` | no |
| <a name="input_engine_version"></a> [engine\_version](#input\_engine\_version) | (optional) Version of the broker engine. See the [AmazonMQ Broker Engine docs](https://docs.aws.amazon.com/amazon-mq/latest/developer-guide/broker-engine.html) for supported versions. | `string` | `"3.8.6"` | no |
| <a name="input_host_instance_type"></a> [host\_instance\_type](#input\_host\_instance\_type) | (Required) Broker's instance type. For example, `mq.t3.micro`, `mq.m5.large`. | `string` | n/a | yes |
| <a name="input_kms_key_id"></a> [kms\_key\_id](#input\_kms\_key\_id) | (optional) description | `string` | n/a | yes |
| <a name="input_logs_general"></a> [logs\_general](#input\_logs\_general) | (optional) description | `bool` | `true` | no |
| <a name="input_maintenance_window_start_time"></a> [maintenance\_window\_start\_time](#input\_maintenance\_window\_start\_time) | Configuration block for the maintenance window start time. | <pre>object({<br>    day_of_week = string<br>    time_of_day = string<br>    time_zone   = string<br>  })</pre> | <pre>{<br>  "day_of_week": "MONDAY",<br>  "time_of_day": "22:45",<br>  "time_zone": "Europe/Berlin"<br>}</pre> | no |
| <a name="input_password"></a> [password](#input\_password) | (optional) description | `string` | n/a | yes |
| <a name="input_publicly_accessible"></a> [publicly\_accessible](#input\_publicly\_accessible) | (optional) Whether to enable connections from applications outside of the VPC that hosts the broker's subnets. | `bool` | `false` | no |
| <a name="input_security_groups"></a> [security\_groups](#input\_security\_groups) | List of security group IDs assigned to the broker. | `list(string)` | n/a | yes |
| <a name="input_storage_type"></a> [storage\_type](#input\_storage\_type) | (optional) Storage type of the broker, only ebs work with mq.m5.large | `string` | `null` | no |
| <a name="input_subnet_ids"></a> [subnet\_ids](#input\_subnet\_ids) | n/a | `list(string)` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | (optional) Tags | `map(string)` | <pre>{<br>  "terraform": "yes"<br>}</pre> | no |
| <a name="input_use_aws_owned_key"></a> [use\_aws\_owned\_key](#input\_use\_aws\_owned\_key) | (optional) description | `bool` | `false` | no |
| <a name="input_username"></a> [username](#input\_username) | (optional) description | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_arn"></a> [arn](#output\_arn) | ARN of the RabbitMQ broker. |
| <a name="output_console_url"></a> [console\_url](#output\_console\_url) | The URL of the broker's RabbitMQ Web Console |
| <a name="output_endpoint"></a> [endpoint](#output\_endpoint) | Broker's wire-level protocol endpoint |
| <a name="output_id"></a> [id](#output\_id) | ID of the RabbitMQ broker. |
| <a name="output_ip_address"></a> [ip\_address](#output\_ip\_address) | IP Address of the RabbitMQ broker |
<!-- END_TF_DOCS -->

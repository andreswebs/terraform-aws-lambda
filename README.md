# terraform-aws-lambda

AWS Lambda container with Alias.

[//]: # (BEGIN_TF_DOCS)



## Usage

Example:

```hcl
module "example_lambda" {
  source          = "github.com/andreswebs/terraform-aws-lambda-base"
  name            = var.name
  iam_role_arn    = var.iam_role_arn
  log_group_name  = var.log_group_name
  image_uri       = var.image_uri
  timeout_seconds = var.timeout_seconds
  memory_size_mb  = var.memory_size_mb
  architecture    = var.architecture
  publish         = true
  lambda_env      = local.lambda_env
}
```



## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_alias"></a> [alias](#input\_alias) | n/a | `string` | `"default"` | no |
| <a name="input_alias_description"></a> [alias\_description](#input\_alias\_description) | Description of the alias | `string` | `null` | no |
| <a name="input_architecture"></a> [architecture](#input\_architecture) | n/a | `string` | `"arm64"` | no |
| <a name="input_cloudwatch_log_group"></a> [cloudwatch\_log\_group](#input\_cloudwatch\_log\_group) | n/a | `string` | `null` | no |
| <a name="input_description"></a> [description](#input\_description) | Description of the lambda | `string` | `null` | no |
| <a name="input_efs_access_point_arn"></a> [efs\_access\_point\_arn](#input\_efs\_access\_point\_arn) | (Optional) ARN of EFS access point | `string` | `null` | no |
| <a name="input_efs_local_mount_path"></a> [efs\_local\_mount\_path](#input\_efs\_local\_mount\_path) | (Optional) Local mount path of the EFS filesystem. Must start with `/mnt/` | `string` | `null` | no |
| <a name="input_iam_role_arn"></a> [iam\_role\_arn](#input\_iam\_role\_arn) | n/a | `string` | n/a | yes |
| <a name="input_image_uri"></a> [image\_uri](#input\_image\_uri) | Image URI for the Lambda function | `string` | n/a | yes |
| <a name="input_kms_key_arn"></a> [kms\_key\_arn](#input\_kms\_key\_arn) | n/a | `string` | `null` | no |
| <a name="input_lambda_env"></a> [lambda\_env](#input\_lambda\_env) | Map of environment variables names to values for the Lambda function | `map(string)` | `{}` | no |
| <a name="input_log_group_name"></a> [log\_group\_name](#input\_log\_group\_name) | n/a | `string` | n/a | yes |
| <a name="input_memory_size_mb"></a> [memory\_size\_mb](#input\_memory\_size\_mb) | Amount of memory in MB assigned to the Lambda function | `number` | `256` | no |
| <a name="input_name"></a> [name](#input\_name) | Name of the lambda | `string` | n/a | yes |
| <a name="input_publish"></a> [publish](#input\_publish) | Publish the lambda? | `bool` | `true` | no |
| <a name="input_reserved_concurrent_executions"></a> [reserved\_concurrent\_executions](#input\_reserved\_concurrent\_executions) | Amount of reserved concurrent executions for the lambda function. A value of 0 disables lambda from being triggered and -1 removes any concurrency limitations | `number` | `-1` | no |
| <a name="input_security_group_ids"></a> [security\_group\_ids](#input\_security\_group\_ids) | (Optional) List of security group IDs to use | `list(string)` | `[]` | no |
| <a name="input_subnet_ids"></a> [subnet\_ids](#input\_subnet\_ids) | (Optional) List of subnet IDs to use | `list(string)` | `[]` | no |
| <a name="input_timeout_seconds"></a> [timeout\_seconds](#input\_timeout\_seconds) | Amount of time the Lambda Function has to run in seconds | `number` | `300` | no |



## Outputs

| Name | Description |
|------|-------------|
| <a name="output_alias"></a> [alias](#output\_alias) | n/a |
| <a name="output_function"></a> [function](#output\_function) | n/a |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 6.0 |

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.11 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 6.0 |

## Resources

| Name | Type |
|------|------|
| [aws_lambda_alias.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_alias) | resource |
| [aws_lambda_function.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_function) | resource |

[//]: # (END_TF_DOCS)

## Authors

**Andre Silva** - [@andreswebs](https://github.com/andreswebs)

## License

This project is licensed under the [Unlicense](UNLICENSE).

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

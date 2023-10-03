locals {
  lambdas = {
    payments = {
      enabled          = try(var.payments.enabled, false)
      function_name    = "${local.resources_prefix}-payments"
      filename         = data.archive_file.lambda_zip_file.output_path
      source_code_hash = data.archive_file.lambda_zip_file.output_base64sha256
      handler          = "app.handler"
      role             = aws_iam_role.lambda_role.arn
      runtime          = "nodejs14.x"
    }
    crm = {
      enabled          = try(var.crm.enabled, false)
      function_name    = "${local.resources_prefix}-crm"
      filename         = data.archive_file.lambda_zip_file.output_path
      source_code_hash = data.archive_file.lambda_zip_file.output_base64sha256
      handler          = "app.handler"
      role             = aws_iam_role.lambda_role.arn
      runtime          = "nodejs14.x"
    }
    transactions = {
      enabled          = try(var.transactions.enabled, false)
      function_name    = "${local.resources_prefix}-transactions"
      filename         = data.archive_file.lambda_zip_file.output_path
      source_code_hash = data.archive_file.lambda_zip_file.output_base64sha256
      handler          = "app.handler"
      role             = aws_iam_role.lambda_role.arn
      runtime          = "nodejs14.x"
    }
  }
}

resource "aws_lambda_function" "all" {

  for_each = { for k, v in local.lambdas : k => v if v.enabled }

  function_name    = each.value.function_name
  filename         = each.value.filename
  source_code_hash = each.value.source_code_hash
  handler          = each.value.handler
  role             = each.value.role
  runtime          = each.value.runtime
}

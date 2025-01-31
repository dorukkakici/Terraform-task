output "lambda_function_arn" {
  value = aws_lambda_function.cron_lambda.arn
}

output "lambda_function_name" {
  value = aws_lambda_function.cron_lambda.function_name
}

output "s3_bucket_name" {
  value = aws_s3_bucket.lambda_bucket.bucket
}

output "iam_role_name" {
  value = aws_iam_role.lambda_exec.name
}

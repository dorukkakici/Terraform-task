variable "aws_region" {
  default = "eu-west-1"
}

variable "lambda_function_name" {
  default = "cron_lambda"
}

variable "s3_bucket_lambda" {
  default = "doruk-lambda-code-bucket"
}

# Add this variable for state bucket name
variable "state_bucket_name" {
  default = "doruk-terraform-state-bucket" # S3 bucket for storing Terraform state
}

resource "aws_s3_bucket" "lambda_bucket" {
  bucket = "doruk-lambda-code-bucket"
  acl    = "private"
  region = "eu-west-1"
}

terraform {
  backend "s3" {
    bucket  = "doruk-terraform-state-bucket"  # S3 bucket for Terraform state
    key     = "terraform.tfstate"
    region  = "eu-west-1"  # Region where the S3 bucket is located
    encrypt = true
  }
}

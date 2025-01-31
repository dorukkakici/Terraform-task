terraform {
  backend "s3" {
    bucket  = "doruk-terraform-state-bucket"
    key     = "terraform.tfstate"
    region  = "us-east-1"
    encrypt = true
  }
}

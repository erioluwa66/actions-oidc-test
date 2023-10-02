terraform {
  backend "s3" {
    bucket  = "bootcamp32-prod-47"
    region  = "us-east-2"
    key     = "oidc/terraform.tfstate"
    encrypt = true
  }
}
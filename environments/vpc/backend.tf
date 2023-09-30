terraform {
  backend "s3" {
    bucket  = "landmark-automation-mariam"
    region  = "us-east-2"
    key     = "oidc/terraform.tfstate"
    encrypt = true
  }
}
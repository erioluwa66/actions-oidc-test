module "s3" {
  source = "git@github.com:erioluwa66/s3-backend-repo.git//s3-module?ref=v1.2.3"
}

#Backend configuration
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket  = "landmark-automation-mariam"
    region  = "us-east-2"
    key     = "s3/terraform.tfstate"
    encrypt = true
  }
}

provider "aws" {
  region = "us-east-2"
}
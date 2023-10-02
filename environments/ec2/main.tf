module "ec2_instance" {
  source = "terraform-aws-modules/ec2-instance/aws"

  name          = "var.name"
  instance_type = "t2.micro"
  monitoring    = true

  data "terraform_remote_state" "vpc" {
    backend = "remote"

    config = {
      organization = "hashicorp"
      workspaces = {
        name = "vpc-demo"
      }
    }
  }

  # Terraform >= 0.12
  resource "aws_instance" "ec2-demo" {
    # ...
    subnet_id = data.terraform_remote_state.vpc.outputs.subnet_id
  }

}
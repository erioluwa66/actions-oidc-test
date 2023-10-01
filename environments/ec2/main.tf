module "ec2_instance" {
  source = "terraform-aws-modules/ec2-instance/aws"

  name          = "var.name"
  instance_type = "var.instance_type"
  monitoring    = true
  vpc_id        = data.terraform_remote_state.vpc.outputs.vpc_id


}
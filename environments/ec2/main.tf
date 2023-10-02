module "ec2_instance" {
  source = "terraform-aws-modules/ec2-instance/aws"

  name          = "var.name"
  instance_type = "var.instance_type"
  monitoring    = true
  subnet_id     = var.subnet_id

}
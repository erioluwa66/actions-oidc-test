variable "name" {
  type        = string
  description = "Project mariam"
  default     = "ec2-demo"

}

variable "instance_type" {
  type        = string
  description = "Project mariam"
  default     = "t2.micro"

}
variable "subnet_id" {
  type    = string
  default = "subnet-07bf2b750819e534b"
}




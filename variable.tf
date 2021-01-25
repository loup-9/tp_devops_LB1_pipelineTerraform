variable "bucket" {
  type = string
  description = "Terraform state bucket"
  default = "ec2_terraform"
}


variable "region" {
  type = string
  description = "AWS region"
  default = "eu-west-3"
}
variable "path" {
  type = string
  description = "Terraform state path"
  default = "prod"
}

variable "instance_name" {
  type = string
  description = "Instance name"
  default = "instance_terraform_bruneau"
}

variable "instance_t" {
  type = string
  description = "Instance t"
  default = "t2.micro"
}
variable "instance_nbr" {
  type = number
  description = "Instance nbr"
  default = 1
}

variable "create_instance" {
  type = bool
  description = "Create instance"
  default = true
}

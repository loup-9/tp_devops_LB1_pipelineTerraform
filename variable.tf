variable "bucket" {
  type = string
  description = "Terraform state bucket"
  default = "ec2_terraform"
}

variable "path" {
  type = string
  description = "Terraform state path"
  default = "prod"
}

variable "instance_name" {
  type = string
  description = "Instance name"
}

variable "region" {
  type = string
  description = "AWS region"
  default = "eu-west-3"
}

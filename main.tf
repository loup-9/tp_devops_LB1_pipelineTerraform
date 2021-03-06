terraform {
  backend "s3" {}
}

provider "aws" {
  region     = var.region
}

data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

resource "aws_instance" "instance_terraform_bruneau" {
  count         = var.create_instance ? var.instance_nbr : 0
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_t
  key_name = "tp_dev_ynov"

  tags = {
    Name = var.instance_name
  }
}

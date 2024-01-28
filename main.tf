terraform {
  required_providers {
    aws = {
      source  = "registry.terraform.io/hashicorp/aws"
      version = "= 4.67.0"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "eu-north-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0014ce3e52359afbd"
  instance_type = "t3.micro"

  tags = {
    Name = "Terraform_Demo"
  }
}

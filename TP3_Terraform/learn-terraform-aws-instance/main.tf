terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "eu-west-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0fbe42fe87ff22911"
  instance_type = "t2.micro"

  tags = {
    Name = "DGD_Instance1-TEST"
  }
}

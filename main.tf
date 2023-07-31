terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region = "eu-central-1"
  access_key = "AKIA537TRAHXWVCJYEOJ"
  secret_key = "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"
}

resource "aws_instance" "my-first-instance" {
  ami           = "ami-0ab1a82de7ca5889c"
  instance_type = "t2.micro"
  tags = {
    Name = "Ubuntu"
  }
}
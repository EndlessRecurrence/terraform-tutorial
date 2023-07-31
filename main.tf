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

resource "aws_vpc" "first-vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "production"
  }
}

resource "aws_subnet" "subnet-1" {
  vpc_id     = aws_vpc.first-vpc.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "prod-subnet"
  }
}

resource "aws_vpc" "second-vpc" {
  cidr_block = "10.1.0.0/16"
  tags = {
    Name = "Dev"
  }
}

resource "aws_subnet" "subnet-2" {
  vpc_id     = aws_vpc.second-vpc.id
  cidr_block = "10.1.1.0/24"

  tags = {
    Name = "dev-subnet"
  }
}

# resource "aws_instance" "my-first-instance" {
#   ami           = "ami-0ab1a82de7ca5889c"
#   instance_type = "t2.micro"
#   tags = {
#     Name = "Ubuntu"
#   }
# }


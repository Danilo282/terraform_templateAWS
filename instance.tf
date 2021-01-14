terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
    profile = "default"
    region = "us-east-1"
}

resource "aws_instance" "dps-01" {
    ami = "ami-0229f7666f517b31e"
    instance_type = "t2.micro"
}


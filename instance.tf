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
    region = var.region
}

# Configurando o tipo da instancia
resource "aws_instance" "dps-01" {
    ami = var.amis[var.region]
    instance_type = "t2.micro"
}


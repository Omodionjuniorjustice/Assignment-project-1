variable "region" {
  description = "The AWS region"
}

variable "environment" {
  description = "The environment for the infrastructure (dev, prod)"
  default     = "dev"  # You can set the default here if you want
}

resource "aws_vpc" "example" {
  cidr_block = "10.0.0.0/16"
  enable_dns_support = true
  enable_dns_hostnames = true

  tags = {
    Name        = "example-vpc"
    Environment = var.environment
  }
}
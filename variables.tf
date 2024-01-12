variable "region" {
  description = "The AWS region"
  default     = "eu-west-1"
}

variable "environment" {
  description = "The environment for the infrastructure (dev, prod)"
  type        = string
}
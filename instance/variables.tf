# modules/instance/variables.tf

variable "ami" {
  description = "The AMI ID for the instance"
  default     = "ami-0905a3c97561e0b69"
}

variable "key_name" {
  description = "The name of the EC2 key pair"
  default     = "junior2023"
}
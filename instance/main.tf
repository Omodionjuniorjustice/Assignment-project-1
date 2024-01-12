# ./modules/instance/main.tf

variable "subnet_id" {
  description = "The ID of the subnet"
}

resource "aws_instance" "example" {
  ami           = var.ami
  instance_type = var.instance_type
  key_name      = var.key_name
  subnet_id     = var.subnet_id  # Include this line to use the subnet_id variable

  tags = {
    Name        = "example-instance-${var.environment}"
    Environment = var.environment
  }
}
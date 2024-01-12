provider "aws" {
  region = "eu-west-1" # Set your desired region
}

module "vpc_dev" {
  source        = "./modules/vpc"
  region        = var.region
  environment   = "dev"
}

module "vpc_prod" {
  source        = "./modules/vpc"
  region        = var.region
  environment   = "prod"
}

module "instance_dev" {
  source        = "./modules/instance"
  ami           = "ami-0905a3c97561e0b69"
  key_name      = "junior2023"
  region        = "eu-west-1"
  env           = "dev"
  instance_type = "t2.micro"
  subnet_id     = module.vpc_dev.subnets[0]  # Choose the desired subnet index
}

module "instance_prod" {
  source        = "./modules/instance"
  ami           = "ami-0905a3c97561e0b69"
  key_name      = "junior2023"
  region        = "eu-west-1"
  env           = "prod"
  instance_type = "t2.micro"
  subnet_id     = module.vpc_prod.subnets[0]  # Choose the desired subnet index
}
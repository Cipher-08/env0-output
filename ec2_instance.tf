terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }


provider "aws" {
  region     = "us-east-1"
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}

variable "s3_bucket_name" {
  type = string
}

resource "aws_instance" "env0-ex-instance" {
  ami           = "ami-080e1f13689e07408"
  instance_type = "t2.micro"

  tags = {
    Name = "Env0Instance"
    "S3 Bucket" = var.s3_bucket_name
  }
}

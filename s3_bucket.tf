terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  region     = "us-east-1"
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}

resource "aws_s3_bucket" "env0-s3-bucket-98493838" {
  bucket = "my-unique-bucket-name-${random_pet.name.id}"
  acl    = "private"
}

resource "random_pet" "name" {}

output "bucket_name" {
  value = aws_s3_bucket.env0-s3-bucket-98493838.bucket
}

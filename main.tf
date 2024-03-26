terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}


provider "aws" {
  region     = "us-east-1"
  access_key = "AKIAZQ3DQ4GW4JFBJ64S"
  secret_key = "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"
}

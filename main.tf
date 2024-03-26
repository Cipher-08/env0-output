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
  access_key = "AKIAZQ3DQ4GW5HNGBY43"
  secret_key = "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"
}

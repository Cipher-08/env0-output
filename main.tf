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
  access_key = "AKIAZQ3DQ4GW7RLIXIYK"
  secret_key = "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"
}

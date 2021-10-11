terraform {
  required_version = "0.17.7"

  required_providers {
    aws = {
      sources = "hashicorp/aws"
      version = "3.62.0"
    }
  }
}

provider "aws" {
  region  = "us-east-1"
  profile = "TerraformAwsVINI"
}

resource "aws_s3_bucket" "my-test-bucket" {
  bucket = "my-tf-test-bucket-123456987"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
    Managedby   = "Terraform"
  }
}


 terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.16.0"
    }
  }


  backend "s3" {
    bucket         = "terraform-s3b-roboshop"
    key            = "remote-dynamic-demo" # state file name
    region         = "us-east-1"
    encrypt        = true
    use_lockfile   = true
   
  }
}

provider "aws" {
 region = "us-east-1"
  # Configuration options
}
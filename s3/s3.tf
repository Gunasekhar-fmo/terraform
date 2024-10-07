
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.33.0" 
    }
  }
}

provider "aws" {
  region     = "ap-south-1"
  access_key = "accesscodeusedtobehere"   
  secret_key = "secretkeyusedtobehere"   
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "gunasekharfmoterraformbucket" 
  tags = {
    Name        = "MyS3Bucket"
    Environment = "Production"
  }
}
provider "aws" {
  region     = "ap-south-1"
  access_key = "accesskey"
  secret_key = "accesskey"
}

resource "aws_dynamodb_table" "example" {
  name           = "example"
  billing_mode   = "PROVISIONED"
  read_capacity  = 5
  write_capacity = 5

  hash_key       = "id"

  attribute {
    name = "id"
    type = "S"  
  }
}
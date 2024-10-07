provider "aws" {
  region     = "ap-south-1"
  access_key = "accesskeyusedtobehere"
  secret_key = "secretkeyusedtobehere"
}

resource "aws_instance" "example" {
  ami           = "ami-0d13e3e640877b0b9"
  instance_type = "t2.micro"

  tags = {
    Name = "ec2-created-from-terraform"
  }
}

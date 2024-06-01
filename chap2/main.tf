provider "aws" {
  region = "ap-northeast-1"
}

resource "aws_instance" "example" {
  ami           = "ami-07fb3592ea2a31402"
  instance_type = "t4g.nano"

  tags = {
    Name = "example-terraform"
  }
}

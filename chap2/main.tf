provider "aws" {
  region = "ap-northeast-1"
}

resource "aws_instance" "example" {
  ami           = "ami-01bef798938b7644d"
  instance_type = "t4g.nano"

  tags = {
    Name = "example-terraform"
  }
}

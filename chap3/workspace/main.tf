provider "aws" {
  region = "ap-northeast-1"
}

terraform {
  backend "s3" {
    bucket         = "terraform-up-and-running-2024060202-state"
    key            = "workspace-example/terraform.tfstate"
    region         = "ap-northeast-1"
    dynamodb_table = "terraform-up-and-running-locks"
    encrypt        = true
  }
}

resource "aws_instance" "example" {
  ami           = "ami-0b9a26d37416470d2"
  instance_type = terraform.workspace == "default" ? "t2.midium" : "t2.micro"
}

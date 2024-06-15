terraform {
  backend "s3" {
    bucket = "terraform-up-and-running-2024060202-state"
    key    = "prod/data-stores/mysql/terraform.tfstate"
    region = "ap-northeast-1"
    # dynamodb_table = "terraform-up-and-running-locks"
    encrypt = true
  }
}

provider "aws" {
  region = "ap-northeast-1"
}

resource "aws_db_instance" "example" {
  identifier_prefix   = "terraform-up-and-running"
  engine              = "mysql"
  allocated_storage   = 10
  instance_class      = "db.t3.micro"
  skip_final_snapshot = true
  db_name             = "example_database"
  username            = var.db_username
  password            = var.db_password
}

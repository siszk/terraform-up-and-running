provider "aws" {
  region = "ap-northest-1"
}

module "webservers-prod" {
  source = "../../../../modules/services/webserver-cluster"

  cluster_name           = "webservers-prod"
  db_remote_state_bucket = "terraform-up-and-running-2024060202-state"
  db_remote_state_key    = "prod/data-stores/mysql/terraform.tfstate"

  instance_type = "t2.micro"
  min_size      = 2
  max_size      = 10

  custom_tags = {
    Owner      = "team-foo"
    DeployedBy = "terraform"
  }
}

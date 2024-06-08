provider "aws" {
  region = "ap-northeast-1"
}

module "webserver-cluster" {
  source = "../../../modules/services/webserver-cluster"

  cluster_name           = "webservers-stage"
  db_remote_state_bucket = "terraform-up-and-running-2024060202-state"
  db_remote_state_key    = "stage/data-stores/mysql/terraform.tfstate"
}

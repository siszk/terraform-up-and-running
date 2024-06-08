provider "aws" {
  region = "ap-northeast-1"
}

module "webserver-cluster" {
  source = "../../../module/services/webserver-cluster"
}

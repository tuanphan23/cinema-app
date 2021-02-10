provider "aws" {
  region = "us-west-2"
}

terraform {
  backend "s3" {
    bucket  = "cinema-app-tf-state"
    key     = "cinema-app-tf-state"
    region  = "us-west-2"
    encrypt = true
  }
}

locals {
  prefix = "${var.prefix}-${terraform.workspace}"
  common_tags = {
    Environment = terraform.workspace
    Project     = var.project
    ManageBy    = "Terraform"
    Owner       = "Tuan Phan"
  }
}

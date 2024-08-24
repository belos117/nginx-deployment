terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  backend "remote" {

    organization = "henkel_solutions"

    workspaces {
      name = "json-server"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region     = "eu-west-2"
}

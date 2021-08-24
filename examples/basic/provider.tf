terraform {
  required_version = ">= 0.13"
  required_providers {
    aws = {
      source  = "hashicorp/aws",
      version = "~> 3.35"
    }
  }
}


provider "aws" {
  region = "us-east-1"
}

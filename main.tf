terraform {
  required_version = ">= 1.5.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  region = "ap-southeast-2"
}

resource "aws_ecr_repository" "learning_lab" {
  name                 = "openshift-learning-lab"
  image_tag_mutability = "MUTABLE"
}

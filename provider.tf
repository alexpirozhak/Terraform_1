terraform {

  backend "s3" {
    bucket         = "287453796941-terraform-tfstate"
    key            = "dev/terraform.tfstate"
    region         = "eu-central-1"
    dynamodb_table = "287453796941-terraform-tfstate-lock"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.91.0"
    }
  }
}

provider "aws" {
  region = "eu-central-1"

}


# resource "aws_s3_bucket" "example" {
#   bucket = "my-tf-test-bucket"

#   tags = {
#     Name        = "My bucket"
#     Environment = "Dev"
#   }
# }

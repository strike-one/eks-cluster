provider "aws" {
    region = "us-west-2"
}

terraform {
  backend "s3" {
    bucket = "infratfstore"
    key    = "state/terraform.tfstate"
    encrypt = true
    dynamodb_table = "terraform-state-lock-dynamo"
    Key = "terraform-locks"
    region = "us-west-2"
  }
}

  resource "null_resource" "example" {
        triggers = {
        value = "A example resource that does nothing!"
       }
}
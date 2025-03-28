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
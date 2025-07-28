terraform {
  backend "s3" {
    bucket         = "terraform-state-yourcompany"
    key            = "s3/ghusman-spiklwoow-vibws/terraform.tfstate"
    region         = "eu-west-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}

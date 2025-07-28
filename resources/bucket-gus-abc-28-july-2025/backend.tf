terraform {
  backend "s3" {
    bucket         = "terraform-state-yourcompany"
    key            = "s3/bucket-gus-abc-28-july-2025/terraform.tfstate"
    region         = "eu-west-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}

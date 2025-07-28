resource "aws_s3_bucket" "bucket" {
  bucket = "jupiter"
  force_destroy = true

  tags = {
    CreatedBy = "Port GitHub Workflow"
    Environment = "dev"
  }
}
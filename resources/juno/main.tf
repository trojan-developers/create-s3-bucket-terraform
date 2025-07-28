resource "aws_s3_bucket" "bucket" {
  bucket = "juno"
  force_destroy = true

  tags = {
    CreatedBy = "Port GitHub Workflow"
    Environment = "dev"
  }
}
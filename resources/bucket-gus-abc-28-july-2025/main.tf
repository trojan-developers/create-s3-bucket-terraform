resource "aws_s3_bucket" "bucket" {
  bucket = "bucket-gus-abc-28-july-2025"
  force_destroy = true

  tags = {
    CreatedBy = "Port GitHub Workflow"
    Environment = "dev"
  }
}
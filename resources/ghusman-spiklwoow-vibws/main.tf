resource "aws_s3_bucket" "bucket" {
  bucket = "ghusman-spiklwoow-vibws"
  force_destroy = true

  tags = {
    CreatedBy = "Port GitHub Workflow"
    Environment = "dev"
  }
}
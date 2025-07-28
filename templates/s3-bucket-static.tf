resource "aws_s3_bucket" "bucket" {
  bucket = "{{ bucket_name }}"
  force_destroy = true

  tags = {
    CreatedBy = "Port GitHub Workflow"
    Environment = "dev"
  }
}
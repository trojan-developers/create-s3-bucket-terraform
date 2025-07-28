variable "state_bucket_name" {
  description = "S3 bucket name for Terraform state"
  type        = string
}

variable "dynamo_table_name" {
  description = "DynamoDB table name for state locking"
  type        = string
}

variable "aws_region" {
  description = "AWS region"
  default     = "eu-west-1"
}
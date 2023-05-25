resource "aws_s3_bucket" "saloni_practice" {
  bucket = "bucket-gitHubAction"

  tags = {
    owner   = var.owner
    name    = var.name
    purpose = var.purpose
  }

  acl    = "private"
} 

resource "aws_s3_bucket_public_access_block" "saloni_practice_public_access_block" {
  bucket = aws_s3_bucket.saloni_practice.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

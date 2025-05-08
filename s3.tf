# Create an S3 Bucket
resource "aws_s3_bucket" "example_bucket" {
  bucket = "swiggy-bucket-dev2026"

  # Enable versioning
  versioning {
    enabled = true
  }
}

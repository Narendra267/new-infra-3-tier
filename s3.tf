# Create an S3 Bucket
resource "aws_s3_bucket" "example_bucket" {
  bucket = "swiggy-bucket-dev202633443509"

  # Enable versioning
  versioning {
    enabled = true
  }
}

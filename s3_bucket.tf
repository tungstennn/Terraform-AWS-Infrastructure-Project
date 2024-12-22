# Create an S3 bucket

resource "aws_s3_bucket" "tf-test-bucket-tungstennn" {
  bucket = var.bucket_name
   tags = {
    Name = var.bucket_name
  }
}

# Enable versioning

resource "aws_s3_bucket_versioning" "versioning" {
  bucket = var.bucket_name
  versioning_configuration {
    status = "Enabled"
  }
}

# Create empty folder in bucket

resource "aws_s3_object" "uploads_folder" {
  bucket = var.bucket_name
  key    = "uploads"
}

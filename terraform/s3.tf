resource "random_id" "bucket_suffix" {
  byte_length = 4
}

resource "aws_s3_bucket" "app_storage" {
  bucket = "${var.project_name}-storage-${random_id.bucket_suffix.hex}"

  tags = {
    Name = "${var.project_name}-s3-bucket"
  }
}

resource "aws_s3_bucket_lifecycle_configuration" "app_storage_lifecycle" {
  bucket = aws_s3_bucket.app_storage.id

  rule {
    id     = "delete-after-7-days"
    status = "Enabled"
    
    expiration {
      days = 7
    }
  }
}

variable "s3_bucket_name" {}

resource "aws_s3_bucket" "new_bucket" {
  bucket = var.s3_bucket_name
  acl    = "private"

  tags = {
    Name = "My New S3 Bucket"
  }
}

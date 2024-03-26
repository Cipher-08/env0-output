resource "aws_s3_bucket" "env0_s3_bucket" {
  bucket = "my-unique-bucket-name-${random_pet.name.id}"
  acl    = "private"
}

resource "random_pet" "name" {}

output "bucket_name" {
  value = aws_s3_bucket.env0_s3_bucket.bucket
}

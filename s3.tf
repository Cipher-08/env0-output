resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-unique-bucket-name-${random_pet.name.id}"
  acl    = "private"
}

resource "random_pet" "name" {}

output "s3_bucket_name" {
  value = aws_s3_bucket.my_bucket.bucket
}

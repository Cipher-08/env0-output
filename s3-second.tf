variable "s3_bucket_name" {}

resource "aws_s3_bucket_policy" "example" {
  bucket = var.s3_bucket_name
  policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "s3:GetObject",
      "Effect": "Allow",
      "Resource": "arn:aws:s3:::${var.s3_bucket_name}/*",
      "Principal": "*"
    }
  ]
}
POLICY
}

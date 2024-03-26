
variable "s3_bucket_name" {
  
  type = string
}

resource "aws_instance" "env0_ex_instance" {
  ami           = "ami-080e1f13689e07408"
  instance_type = "t2.micro"

  tags = {
    Name       = "Env0Instance"
    "S3 Bucket" = "my-unique-bucket-name-exotic-lobster"
  }
}

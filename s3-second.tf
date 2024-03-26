variable "s3_bucket_name" {}

resource "aws_instance" "example" {
  ami = "ami-080e1f13689e07408" 
  instance_type = "t2.micro"

  user_data = <<-EOF
              #!/bin/bash
              echo "export S3_BUCKET_NAME=${var.s3_bucket_name}" >> /etc/environment
              EOF

  tags = {
    Name = "Instance with S3 Bucket - ${var.s3_bucket_name}"
  }
}

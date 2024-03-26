provider "aws" {
  region = "us-west-2"
}

resource "aws_instance" "env0-instance-10" {
  ami           = "ami-0c55b159cbfafe1f0" 
  instance_type = "t2.micro"
}

output "instance_id" {
  value = aws_instance.env0-instance-10.id
}

output "instance_public_ip" {
  value = aws_instance.env0-instance-10.public_ip
}

output "instance_private_ip" {
  value = aws_instance.env0-instance-10.private_ip
}

output "instance_availability_zone" {
  value = aws_instance.env0-instance-10.availability_zone
}

output "instance_subnet_id" {
  value = aws_instance.env0-instance-10.subnet_id
}

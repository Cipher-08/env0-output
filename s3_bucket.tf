

resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0" 
  instance_type = "t2.micro"
}

output "instance_id" {
  value = aws_instance.example.id
}

output "instance_public_ip" {
  value = aws_instance.example.public_ip
}

output "instance_private_ip" {
  value = aws_instance.example.private_ip
}

output "instance_availability_zone" {
  value = aws_instance.example.availability_zone
}

output "instance_subnet_id" {
  value = aws_instance.example.subnet_id
}

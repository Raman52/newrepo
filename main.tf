provider "aws" {
  region = "eu-north-1"
  access_key = var.access_key
  secret_key = var.secret_key
}
resource "aws_instance" "test" {
  ami = "ami-064983766e6ab3419"
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorldvm2"
  }
}
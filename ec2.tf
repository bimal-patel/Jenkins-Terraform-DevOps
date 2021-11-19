resource "aws_instance" "app_server" {
  ami           = "ami-0108d6a82a783b352"
  instance_type = "t2.micro"

  tags = {
    Name = "ExampleAppServerInstance"
  }
}

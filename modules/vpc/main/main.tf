resource "aws_vpc" "prod_vpc" {
    cidr_block = "10.0.0.0"
    region = "us-east-1"
  
  tags = var.aws_vpc.Name
}
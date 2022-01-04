resource "aws_vpc" "main" {
  cidr_block                       = var.cidr_block
  instance_tenancy                 = "default"
  enable_dns_support               = true
  enable_dns_hostnames             = var.enable_dns_hostnames
  assign_generated_ipv6_cidr_block = true

  tags = merge(
    var.tags,
    {
      "Name" = "${var.name_prefix}-vpc"
    },
  )
}

resource "aws_internet_gateway" "public" {
  count      = local.internet_gateway_count
  depends_on = [aws_vpc.main]
  vpc_id     = aws_vpc.main.id

  tags = merge(
    var.tags,
    {
      "Name" = "${var.name_prefix}-public-igw"
    },
  )
}
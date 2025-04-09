resource "aws_vpc" "main" {
  cidr_block = "172.16.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true
}

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.main.id
}

resource "aws_subnet" "public" {
  count             = 2
  vpc_id            = aws_vpc.main.id
  cidr_block        = cidrsubnet("172.16.0.0/20", 4, count.index)
  map_public_ip_on_launch = true
  availability_zone = element(["us-east-1a", "us-east-1b"], count.index)
}

resource "aws_subnet" "private" {
  count             = 4
  vpc_id            = aws_vpc.main.id
  cidr_block        = cidrsubnet("172.16.0.0/20", 4, count.index + 2)
  map_public_ip_on_launch = false
  availability_zone = element(["us-east-1a", "us-east-1b"], count.index % 2)
}

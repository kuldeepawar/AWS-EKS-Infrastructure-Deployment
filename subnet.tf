# Public Subnet - us-east-1a
resource "aws_subnet" "public_subnet_1a" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "172.16.0.0/20"
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = true
  tags = {
    Name = "public-subnet-1a"
  }
}

# Public Subnet - us-east-1b
resource "aws_subnet" "public_subnet_1b" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "172.16.16.0/20"
  availability_zone       = "us-east-1b"
  map_public_ip_on_launch = true
  tags = {
    Name = "public-subnet-1b"
  }
}

# Private Subnet (App Tier) - us-east-1a
resource "aws_subnet" "private_subnet_1a" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "172.16.32.0/20"
  availability_zone = "us-east-1a"
  tags = {
    Name = "private-subnet-1a"
  }
}

# Private Subnet (App Tier) - us-east-1b
resource "aws_subnet" "private_subnet_1b" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "172.16.48.0/20"
  availability_zone = "us-east-1b"
  tags = {
    Name = "private-subnet-1b"
  }
}

# Private Subnet (DB Tier) - us-east-1a
resource "aws_subnet" "private_db_subnet_1a" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "172.16.64.0/20"
  availability_zone = "us-east-1a"
  tags = {
    Name = "private-db-subnet-1a"
  }
}

# Private Subnet (DB Tier) - us-east-1b
resource "aws_subnet" "private_db_subnet_1b" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "172.16.80.0/20"
  availability_zone = "us-east-1b"
  tags = {
    Name = "private-db-subnet-1b"
  }
}

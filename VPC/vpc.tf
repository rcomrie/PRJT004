provider "aws" {
  region     = "us-east-1"
  access_key = ""
  secret_key = ""
}


resource "aws_vpc" "my_vpc" {
  cidr_block = "100.0.0.0/16"
}

resource "aws_subnet" "my_subnet" {
  vpc_id     = aws_vpc.my_vpc.id
  cidr_block = "100.0.1.0/24" 
  availability_zone = "us-east-1a" 
}

resource "aws_internet_gateway" "my_igw" {
  vpc_id = aws_vpc.my_vpc.id

  tags = {
    Name = "my_igw"
  }
}

resource "aws_route_table" "my_route_table" {
  vpc_id = aws_vpc.my_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.my_igw.id
  }

  tags = {
    Name = "my_route_table"
  }
}


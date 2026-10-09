resource "aws_vpc" "dev" {
  
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "dev-vpc"
  }
}

resource "aws_subnet" "dev" {
  vpc_id     = aws_vpc.dev.id
  cidr_block = "10.0.0.0/24"
  tags = {
    Name = "dev-subnet"
  } 
}
resource "aws_vpc" "dev" {
    cidr_block = var.vpc_cidr
   
    tags={
        Name = "my-vpc"
    }

  
}
resource "aws_subnet" "Subnet-1"{
    vpc_id = aws_vpc.dev.id
    cidr_block = var.subnet_cidr
     availability_zone = "us-east-1b"
    tags ={
        Name = "Subnet2"
    }
}
resource "aws_instance" "ec2"{
    ami = var.ami
    instance_type = "t2.micro"
    subnet_id = aws_subnet.Subnet-1.id
    tags = {
        Name = "my-ec2"
    }
}

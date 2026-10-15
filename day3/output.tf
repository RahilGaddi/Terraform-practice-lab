output "Subnet_az" {
    value = aws_subnet.Subnet-1.availability_zone
}
output "vpc_id"{
    value = aws_vpc.dev.id
}
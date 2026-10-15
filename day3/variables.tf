variable "vpc_cidr" {
    description = "cidr value for vpc"
    default = ""
    type = string
  
}

variable "subnet_cidr" {
    description = "cidr value for subnet"
    default = ""
    type = string
  
}
variable "ami"{
    description = "ami value for ec2"
    default = ""
    type = string
}
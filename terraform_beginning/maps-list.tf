provider "aws" {
    region = "us-east-1"
    access_key = "WRITE YOUR KEY"
    secret_key = "WRITE YOUR KEYS"
}



resource "aws_instance" "ec2" {
    ami = "ami-0cff7528ff583bf9a"
    instance_type = var.types["us-east-1"]
    
}

variable "list" {
    type = list
    default = ["m5.large", "m5.xlarge", "t2.micro"] 
}

variable "types" {
    type = map
    default = {
        us-east-1 = "t2.micro"
        us-west-2 = "m5.large"
        us-south-1 = "t2.small"
    }
}
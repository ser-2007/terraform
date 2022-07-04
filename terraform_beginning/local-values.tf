provider "aws" {
    region = "us-east-1"
    access_key = "WRITE YOUR KEYS"
    secret_key = "WRITE YOUR KEYS"
}

locals {
    common_tags = {
        Owner = "Team_1"
        service = "engineering"
    }
}

resource "aws_instance" "ec2" {
    ami = "ami-0cff7528ff583bf9a"
    instance_type = "t2.micro"
    tags = local.common_tags 
    
}

resource "aws_ebs_volume" "ebs" {
    availability_zone = "us-east-1a"
    size = 10
    tags = local.common_tags 
}
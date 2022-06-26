provider "aws" {
    region = "us-east-1"
    access_key = ""
    secret_key = ""
}

locals {
    time = formatdate("DD MMM YYYY hh:mm ZZZ", timestamp())
}
variable "ami" {
    type = map 
    default = {
        "us-east-1" = "ami-0cff7528ff583bf9a"
        "us-west-2" =  "ami-054bdd7f6d1084c99"
        "us-south-1" = "ami-0729e439b6769d6ab"
    }
}

variable "region" {
    default = "us-east-1"
}

resource "aws_instance" "ec2" {
    ami = lookup(var.ami, var.region)
    instance_type = "t2.micro"
    
}

output "timestamp" {
    value = local.time
}
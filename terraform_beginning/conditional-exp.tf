provider "aws" {
    region = "us-east-1"
    access_key = "WRITE YOUR KEY"
    secret_key = "WRITE YOUR KEY"
}

variable "flag" {

}

resource "aws_instance" "env1" {
    ami = "ami-0cff7528ff583bf9a"
    instance_type = "t2.micro"
    count = var.flag == true ? 2 : 0
}
resource "aws_instance" "env2" {
    ami = "ami-0cff7528ff583bf9a"
    instance_type = "t2.micro"
      count = var.flag == false ? 1 : 0
    
}
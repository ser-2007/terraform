provider "aws" {
    region = "us-east-1"
    access_key = "AKIAXZPBX2U3TAZ46EXS"
    secret_key = "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"
}
resource "aws_instance" "ec2" {
    ami = "ami-0cff7528ff583bf9a"
    instance_type = "t2.micro"
   
}

resource "aws_eip" "myeip" {
    vpc = true
}

resource "aws_eip_association" "my_eip_assoc" {
    instance_id = aws_instance.ec2.id
    allocation_id = aws_eip.myeip.id
}
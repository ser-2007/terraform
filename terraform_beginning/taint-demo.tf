provider "aws" {
  region     = "us-east-1"
  access_key = "WRITE YOUR KEY"
  secret_key = "WRITE YOUR KEY"
}

resource "aws_instance" "ec2" {
  ami           = "ami-0cff7528ff583bf9a"
  instance_type = "t2.micro"
}

#first apply and after creating the ec2 then you write "terraform taint aws_instance.ec2" after then the status changed to the "taint"

/*Command: taint
The terraform taint command informs 
Terraform that a particular object has become degraded or damaged. 
Terraform represents this by marking the object as "tainted" in the Terraform state,
and Terraform will propose to replace it in the next plan you create.*/
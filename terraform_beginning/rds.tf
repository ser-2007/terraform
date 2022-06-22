provider "aws" {
    region = "us-east-1"
  #  access_key = "" write your aws access_key
 #   secret_key = "" write your aws secret key
}

resource "aws_db_instance" "default" {
  allocated_storage    = 10
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t2.micro"
  name                 = "mydb"
  username             = "serkan"
  password             = "serkandb"
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot  = true
}
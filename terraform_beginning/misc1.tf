provider "aws" {
  region     = "us-east-1"
  access_key = "write your own key"
  secret_key = "write your own key"
}

resource "aws_iam_user" "user" {
    name = "iamuser.${count.index}"
    count = 3
    path = "/system/"
}

output "arns" {
    value = aws_iam_user.user[*].arn
}
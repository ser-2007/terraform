provider "aws" {
  region     = "us-east-1"
  access_key = "AKIAXZPBX2U3TAZ46EXS"
  secret_key = "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"
}

resource "aws_iam_user" "user" {
    name = "iamuser.${count.index}"
    count = 3
    path = "/system/"
}

output "arns" {
    value = aws_iam_user.user[*].arn
}
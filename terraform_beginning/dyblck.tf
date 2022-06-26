provider "aws" {
  region     = "us-east-1"
  access_key = "WRITE YOUR KEYS"
  secret_key = "WRITE YOUR KEYS"
}

variable "ports" {
    type = list(number)
    default = [8201, 8202, 8300, 9201]
}
resource "aws_security_group" "dynamic-block-demo" {
    name = "my-security-group"
    dynamic ingress {
      for_each = var.ports
      iterator = port
      content {
        from_port   = port.value
        to_port     = port.value
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]        
      }

    
    }
}
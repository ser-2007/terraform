output "dev_ip" {
  value = aws_instance.dev_node.public_ip
}
#we want to at the end write our public ip after the resources have been created 
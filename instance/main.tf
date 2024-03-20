resource "aws_instance" "my_instance" {
  ami           = var.ami # us-west-2
  instance_type = var.instance_type
 key_name = var.key_name
}
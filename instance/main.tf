resource "aws_instance" "my_instance1" {
  ami           = var.ami # us-west-2
  instance_type = var.instance_type
  key_name = var.key_name
}
resource "aws_instance" "my_instance" {
  instance_count = var.instance_count
  ami           = var.image_id # us-west-2
  instance_type = var.instance_type
 key_name = var.key_name
  
variable "region" {
  default = "us-east-1"
  description = "providing region to my server"
}
variable "ami" {
  default = "ami-080e1f13689e07408"
  description = "providing the image id to for server creation"
}
variable "instance_type" {
  default = "t3.micro"
  description = "providing the server size to my instance"
}
variable "key_name" {
  default = "mumbai"
  description = "providing the key key pair to my server "
}
 provider "aws" {
     region = var.region
   #  shared_config_files      = ["/home/ubuntu/.aws/config"]
    # shared_credentials_files = ["/home/ubuntu/.aws/credentials"]
     #profile                  = "config"
 }

 terraform {
   backend "s3" {
     bucket = "prod-terraform.tfstate-b20"
     key    = "terraform.tfstate"
     region = "us-east-1"
     dynamodb_table = "terraform-b20"
   }
 }

 # Instance creating in public subnet by calling o/p
module "my_instance" {
  source = "./instance"
  instance_cocount = var.instance_count
  ami = var.image_id
  instance_type = var.instance_type
  key_name = var.key_name
  
}

 


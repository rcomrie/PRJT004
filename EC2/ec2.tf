provider "aws" {
  region     = "us-east-1"
  access_key = ""
  secret_key = ""
}

resource "aws_instance" "system" {
 ami = "ami-05b10e08d247fb927"
 instance_type = "t2.micro"

 tags = {
 Name = "EC2_TF"
 }
}


provider "aws" {
  region     = "us-east-1"
  access_key = ""
  secret_key = ""
}


data "aws_vpc" "default" {
  default = true
}

resource "aws_security_group" "SSH" {
  name        = "ssh-tf"
  description = "Allow ssh to web server"
  vpc_id      = data.aws_vpc.default.id

  ingress {
    description = "ssh ingress"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}


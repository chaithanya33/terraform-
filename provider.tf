#this is a basic one to create instance 

provider "aws" {
region = "us-east-1"
}

resource "aws_instance" "label33" {
tags = {
Name = "terra-server"
}

ami = " "
instance_type = t2.micro"
}

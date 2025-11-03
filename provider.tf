
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
# for launch two instances at time
count = 2
}

output "abc" {
  value = [aws_instance.label33"[0].public_ip, aws_instance.flm[0].privat_ip] 

  #label name of server to see the particular server details like public,private ip by the value of indexing value and output name should change for 2 instance details outputs concept#

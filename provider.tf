
#this is a basic one to create instance 

provider "aws" {
region = "us-east-1"
}

resource "aws_instance" "label33" {
tags = {
Name = "terra-server"  #|| for different environments with same code we can use this //Name = "${terraform.workspace}-server"// FOR WORKSPACE CONCEPTS
}

ami = " "
instance_type = "t2.micro"
# for launch two instances at time #
count = 2
vpc_security_group_ids = [aws_security_group.mysg.id]
}

output "abc" {
  value = [aws_instance.label33[0].id, aws_instance.label33.public_ip, aws_instance.label34[1].privat_ip]   # to see the output of our files we need declare otput section /select instance /label name./[0]//if we have multiple instances it follows 0 1 2//
}
  #label name of server to see the particular server details like public,private ip by the value of indexing value and output name should change for 2 instance details outputs concept#
